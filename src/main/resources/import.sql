INSERT INTO tb_participante (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_categoria (id, descricao) VALUES (1, 'Curso');
INSERT INTO tb_categoria (id, descricao) VALUES (2, 'Oficina');

INSERT INTO tb_atividade (id, categoria_id, nome, descricao, preco)	VALUES (1, 1, 'Curso de HTML', 'Aprenda HTML de forma prática e rápida.', 80.00);
INSERT INTO tb_atividade (id, categoria_id, nome, descricao, preco)	VALUES (2, 2, 'Oficina Github', 'Controle versões dos seus projetos.', 50.00);

INSERT INTO tb_bloco (id, atividade_id, inicio, fim) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z');
INSERT INTO tb_bloco (id, atividade_id, inicio, fim) VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z');
INSERT INTO tb_bloco (id, atividade_id, inicio, fim) VALUES (3, 2, TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z');

INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 3);

INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 1);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 4);