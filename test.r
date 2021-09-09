win_plot <- function(data) {
    X11()
    plot(data)
}

wait_plot <- function(func) {
    func()
    z <- locator(1)
}

r <- rnorm(100)

wait_plot(function() {
    win_plot(r)
    win_plot(r)
})
