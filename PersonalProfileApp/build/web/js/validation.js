function validateForm() {
    let name = document.getElementById("name").value.trim();
    let studentId = document.getElementById("studentId").value.trim();
    let program = document.getElementById("program").value.trim();
    let email = document.getElementById("email").value.trim();
    let hobbies = document.getElementById("hobbies").value.trim();
    let intro = document.getElementById("intro").value.trim();

    // Validate Name
    if (name === "") {
        alert("Name cannot be empty.");
        return false;
    }

    // Validate Student ID
    if (studentId === "") {
        alert("Student ID cannot be empty.");
        return false;
    }

    // Validate Program
    if (program === "") {
        alert("Program cannot be empty.");
        return false;
    }

    // Validate Email using regex
    let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (email === "" || !emailPattern.test(email)) {
        alert("Please enter a valid email.");
        return false;
    }

    // Validate Hobbies
    if (hobbies === "") {
        alert("Please enter your hobbies.");
        return false;
    }

    // Validate Introduction
    if (intro === "") {
        alert("Introduction cannot be empty.");
        return false;
    }

    return true;
}
