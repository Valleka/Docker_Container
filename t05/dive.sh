curl https://gist.githubusercontent.com/Valleka/2c1ff1d03430f77f598d7a46b82859b5/raw/bb92ece90d1fa0934ec262ab8bcb3c59474f9786/gistfile1.txt > Dockerfile
dive build - < Dockerfile

# записываем в Dockerfile данные из урла (если Dockerfile нет, он создатся автоматом)
# исследуем содержимое образа Dockerfile при помощи dive (возможно нужно установить dive на комп, у меня не запускался и ругался)
