﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Feedback_System.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add Student</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <!-- Favicon -->
    <link href="stylingDashboard/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
        rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        rel="stylesheet" />
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
        rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="stylingDashboard/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link
        href="stylingDashboard/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
        rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="stylingDashboard/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="stylingDashboard/css/style.css" rel="stylesheet" />
    <!-- Template Javascript -->
    <script src="stylingDashboard/js/main.js"></script>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="stylingDashboard/lib/chart/chart.min.js"></script>
    <script src="stylingDashboard/lib/easing/easing.min.js"></script>
    <script src="stylingDashboard/lib/waypoints/waypoints.min.js"></script>
    <script src="stylingDashboard/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/moment.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="stylingDashboard/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <style>
        body {
            font-family: 'Lato', sans-serif;
        }

        h2 {
            margin-bottom: 40px;
        }

        label {
            color: #333;
        }

        .btn-send {
            font-weight: 300;
            text-transform: uppercase;
            letter-spacing: 0.2em;
            width: 80%;
            margin-left: 3px;
        }

        .card {
            margin-left: 10px;
            margin-right: 10px;
        }

        .bg-light {
            background-color: #fff;
            z-index: 1;
        }

        h3.text-primary {
            color: #5FCF80 !important;
        }

        .sidebar .navbar .navbar-nav .nav-link:hover, .sidebar .navbar .navbar-nav .nav-link.active {
            color: #000;
            border-color: #5FCF80;
            margin: 10px;
            padding: 10px;
        }


        .sidebar .navbar .navbar-nav .nav-link {
            padding: 7px 20px;
            color: #5FCF80;
            font-weight: 500;
            border-radius: 0 30px 30px 0;
            outline: none;
        }

            .sidebar .navbar .navbar-nav .nav-link :hover {
                border-left: 3px solid #5FCF80;
            }

        .sidebar {
            width: 335px;
        }

        .form-controll {
            display: block;
            width: 100%;
            padding: .375rem .75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #000;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
        }

        .btn-success {
            color: #fff;
            background-color: #5FCF80;
            border-color: #1db971;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="index.html" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>Feedback Master</h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <img class="rounded-circle" src="stylingDashboard/img/testimonial-1.jpg" alt="" style="width: 40px; height: 40px;">
                            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0">Jhon Doe</h6>
                            <span>Admin</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">
                        <asp:LinkButton ID="LinkButton1" runat="server" class="nav-item nav-link active" OnClick="Addcourse_Click"><i class="fa-solid fa-book"></i>Add Course</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" class="nav-item nav-link active" OnClick="AddFeedback_Click"><i class="fa-solid fa-question"></i>Add Question</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" class="nav-item nav-link active" runat="server" OnClick="ShowCourse_Click"><i class="fa-regular fa-eye"></i>Show Courses</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton5" class="nav-item nav-link active" runat="server" OnClick="AddStudent_Click"><i class="fa-solid fa-plus"></i>Add Students</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" class="nav-item nav-link active" runat="server" OnClick="ShowStudent_Click"><i class="fa-regular fa-eye"></i>Show Students</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton6" class="nav-item nav-link active" runat="server" OnClick="ShowResult_Click"><i class="fa-solid fa-square-poll-vertical"></i>Show Results</asp:LinkButton>

                    </div>
                </nav>

            </div>
            <!-- Sidebar End -->
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>

                <div class="navbar-nav align-items-center ms-auto">

                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="stylingDashboard/img/testimonial-1.jpg" alt="" style="width: 40px; height: 40px;" />
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <asp:LinkButton ID="LinkButton7" class="dropdown-item" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

            <div class="row">
                <div class="col-lg-7 mx-auto">
                    <h2 class="text-center mt-5">Add Student</h2>
                    <div class="card mt-2 mx-auto p-4 bg-light">
                        <div class="card-body bg-light">
                            <div class="form-group">
                                <label for="txtId">ID:</label>
                                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="txtName">Name:</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="txtEmail">Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Courses:</label>
                                <div>
                                    <asp:CheckBoxList ID="chkCourses" runat="server" CssClass="form-check">
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success btn-send pt-2 btn-block" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
