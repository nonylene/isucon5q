worker_processes 10
preload_app true
listen 8080
pid "/home/isucon/webapp/ruby/unicorn.pid"
listen "/home/isucon/webapp/ruby/unix.sock"
