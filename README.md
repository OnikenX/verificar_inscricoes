# Verificar Inscrições

O script **verificacao.sh** verifica se já existe o valor "2023/2024" na pagina das inscricões para o mestrado e mostra uma notificação com um link para a pagina para se abrir quando encontra o valor.

O ficheiro .service é um serviço systemd para ter um timer de verificação e o **setup.sh** serve para iniciar o serviço e dar lhe o caminho actual do script **verificacao.sh** para executar periodicamente.