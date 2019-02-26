class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRlCv0PJcqY13xRloAPLdja1ApgNPi+TwMx/BXt+9uIzaBxlt8ZMmPOtVOPOvp3QKs/Ln4XklF4ztT7jTGWuIClKenCoA40pivU0f+AhU/c7Ungy6HI6KPZlbqS1qxgfJ5U8W0bq7GbfkZgfEddXNwoS7TVQRb/dkCyzmw1rNCs2YGV//zWttgmLUDOwteT5OSDk/r482BPU5JfbcssnbVwRX0IrcNgfHjCcm1R6GVIgm4EixScgiNanIFF9INJGKWwCmhznXL+QdIc8dnZge978TQpM8zdL2CPtT0kTmavhmX7Nq31/NbhwfyOv1//TP3BYEYJk/envIpieltfjhj',
	}  
}
