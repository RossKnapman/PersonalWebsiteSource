$('#open-sidebar').on('click', function () {
    toggleSidebar();
    $('#overlay')[0].addEventListener('click', toggleSidebar);
});

$('#close-sidebar').on('click', function () {
    toggleSidebar();
    $('#overlay')[0].removeEventListener('click', toggleSidebar);
});

function toggleSidebar() {
    $('#sidebar').toggleClass('active');
    $('#overlay').toggleClass('active');
}
