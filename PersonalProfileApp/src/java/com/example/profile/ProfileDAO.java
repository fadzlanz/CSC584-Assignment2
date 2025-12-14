package com.example.profile;

import java.sql.*;
import java.util.*;

public class ProfileDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/student_profiles";
    private String jdbcUser = "root";
    private String jdbcPass = "";

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);
    }

    public void insertProfile(ProfileBean p) {
        String sql = "INSERT INTO profiles (name, student_id, program, email, hobbies, introduction) VALUES (?,?,?,?,?,?)";

        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, p.getName());
            ps.setString(2, p.getStudentId());
            ps.setString(3, p.getProgram());
            ps.setString(4, p.getEmail());
            ps.setString(5, p.getHobbies());
            ps.setString(6, p.getIntroduction());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<ProfileBean> getAllProfiles() {
        List<ProfileBean> list = new ArrayList<>();

        try (Connection c = getConnection();
             Statement s = c.createStatement();
             ResultSet rs = s.executeQuery("SELECT * FROM profiles")) {

            while (rs.next()) {
                ProfileBean p = new ProfileBean();
                p.setName(rs.getString("name"));
                p.setStudentId(rs.getString("student_id"));
                p.setProgram(rs.getString("program"));
                p.setEmail(rs.getString("email"));
                p.setHobbies(rs.getString("hobbies"));
                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProfileBean> searchProfiles(String keyword) {
        List<ProfileBean> list = new ArrayList<>();
        String sql = "SELECT * FROM profiles WHERE name LIKE ? OR student_id LIKE ?";

        try (Connection c = getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, "%" + keyword + "%");
            ps.setString(2, "%" + keyword + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProfileBean p = new ProfileBean();
                p.setName(rs.getString("name"));
                p.setStudentId(rs.getString("student_id"));
                p.setProgram(rs.getString("program"));
                p.setEmail(rs.getString("email"));
                p.setHobbies(rs.getString("hobbies"));
                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
