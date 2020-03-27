<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //load model admin
        $this->load->model('admin');
        //cek session dan level user
        if ($this->admin->is_role() != "user") {
            redirect("login/");
        }
    }

    public function index()
    {

        $this->load->view("user/index");
        //$this->load->view("templates/dash_header");
        $this->load->view("templates/dash_navbar");
        //$this->load->view("templates/dash_footer");
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
}
