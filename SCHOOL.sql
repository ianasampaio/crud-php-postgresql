PGDMP                 
        z            SCHOOL %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    50464    SCHOOL    DATABASE     z   CREATE DATABASE "SCHOOL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "SCHOOL";
                postgres    false            �            1259    50475    aluno    TABLE     �   CREATE TABLE public.aluno (
    numero_aluno integer NOT NULL,
    nome character varying(255),
    tipo_aluno integer,
    curso character varying(255)
);
    DROP TABLE public.aluno;
       public         heap    postgres    false            �            1259    50473    aluno_numero_aluno_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_numero_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.aluno_numero_aluno_seq;
       public          postgres    false    204            �           0    0    aluno_numero_aluno_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.aluno_numero_aluno_seq OWNED BY public.aluno.numero_aluno;
          public          postgres    false    203            �            1259    50486 
   disciplina    TABLE     �   CREATE TABLE public.disciplina (
    numero_disciplina integer NOT NULL,
    nome_disciplina character varying(255),
    creditos integer,
    departamento character varying(255)
);
    DROP TABLE public.disciplina;
       public         heap    postgres    false            �            1259    50484     disciplina_numero_disciplina_seq    SEQUENCE     �   CREATE SEQUENCE public.disciplina_numero_disciplina_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.disciplina_numero_disciplina_seq;
       public          postgres    false    206            �           0    0     disciplina_numero_disciplina_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.disciplina_numero_disciplina_seq OWNED BY public.disciplina.numero_disciplina;
          public          postgres    false    205            �            1259    50511    historico_escolar    TABLE     �   CREATE TABLE public.historico_escolar (
    numero_aluno integer NOT NULL,
    identificacao_turma integer NOT NULL,
    nome_aluno character varying(255),
    nome_disciplina character varying(255),
    nota double precision
);
 %   DROP TABLE public.historico_escolar;
       public         heap    postgres    false            �            1259    50542 	   matricula    TABLE     o   CREATE TABLE public.matricula (
    numero_aluno integer NOT NULL,
    identificacao_turma integer NOT NULL
);
    DROP TABLE public.matricula;
       public         heap    postgres    false            �            1259    50529    pre_requisito    TABLE     �   CREATE TABLE public.pre_requisito (
    numero_pre_requisito integer NOT NULL,
    numero_disciplina integer NOT NULL,
    nome_pre_requisito character varying(255),
    nome_disciplina character varying(255)
);
 !   DROP TABLE public.pre_requisito;
       public         heap    postgres    false            �            1259    50497    turma    TABLE     �   CREATE TABLE public.turma (
    identificacao_turma integer NOT NULL,
    numero_disciplina integer,
    nome_disciplina character varying(255),
    semestre character varying(55),
    ano integer,
    professor character varying(255)
);
    DROP TABLE public.turma;
       public         heap    postgres    false            �            1259    50495    turma_identificacao_turma_seq    SEQUENCE     �   CREATE SEQUENCE public.turma_identificacao_turma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.turma_identificacao_turma_seq;
       public          postgres    false    208            �           0    0    turma_identificacao_turma_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.turma_identificacao_turma_seq OWNED BY public.turma.identificacao_turma;
          public          postgres    false    207            �            1259    50465    usuario    TABLE     �   CREATE TABLE public.usuario (
    nome_usuario character varying(255),
    email character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            2           2604    50478    aluno numero_aluno    DEFAULT     x   ALTER TABLE ONLY public.aluno ALTER COLUMN numero_aluno SET DEFAULT nextval('public.aluno_numero_aluno_seq'::regclass);
 A   ALTER TABLE public.aluno ALTER COLUMN numero_aluno DROP DEFAULT;
       public          postgres    false    203    204    204            3           2604    50489    disciplina numero_disciplina    DEFAULT     �   ALTER TABLE ONLY public.disciplina ALTER COLUMN numero_disciplina SET DEFAULT nextval('public.disciplina_numero_disciplina_seq'::regclass);
 K   ALTER TABLE public.disciplina ALTER COLUMN numero_disciplina DROP DEFAULT;
       public          postgres    false    206    205    206            4           2604    50500    turma identificacao_turma    DEFAULT     �   ALTER TABLE ONLY public.turma ALTER COLUMN identificacao_turma SET DEFAULT nextval('public.turma_identificacao_turma_seq'::regclass);
 H   ALTER TABLE public.turma ALTER COLUMN identificacao_turma DROP DEFAULT;
       public          postgres    false    208    207    208            �          0    50475    aluno 
   TABLE DATA           F   COPY public.aluno (numero_aluno, nome, tipo_aluno, curso) FROM stdin;
    public          postgres    false    204   �6       �          0    50486 
   disciplina 
   TABLE DATA           `   COPY public.disciplina (numero_disciplina, nome_disciplina, creditos, departamento) FROM stdin;
    public          postgres    false    206   �6       �          0    50511    historico_escolar 
   TABLE DATA           q   COPY public.historico_escolar (numero_aluno, identificacao_turma, nome_aluno, nome_disciplina, nota) FROM stdin;
    public          postgres    false    209   T7       �          0    50542 	   matricula 
   TABLE DATA           F   COPY public.matricula (numero_aluno, identificacao_turma) FROM stdin;
    public          postgres    false    211   �7       �          0    50529    pre_requisito 
   TABLE DATA           u   COPY public.pre_requisito (numero_pre_requisito, numero_disciplina, nome_pre_requisito, nome_disciplina) FROM stdin;
    public          postgres    false    210   8       �          0    50497    turma 
   TABLE DATA           r   COPY public.turma (identificacao_turma, numero_disciplina, nome_disciplina, semestre, ano, professor) FROM stdin;
    public          postgres    false    208   �8       �          0    50465    usuario 
   TABLE DATA           =   COPY public.usuario (nome_usuario, email, senha) FROM stdin;
    public          postgres    false    202   9       �           0    0    aluno_numero_aluno_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.aluno_numero_aluno_seq', 3, true);
          public          postgres    false    203            �           0    0     disciplina_numero_disciplina_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.disciplina_numero_disciplina_seq', 3, true);
          public          postgres    false    205            �           0    0    turma_identificacao_turma_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.turma_identificacao_turma_seq', 4, true);
          public          postgres    false    207            8           2606    50483    aluno aluno_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (numero_aluno);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public            postgres    false    204            :           2606    50494    disciplina disciplina_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT disciplina_pkey PRIMARY KEY (numero_disciplina);
 D   ALTER TABLE ONLY public.disciplina DROP CONSTRAINT disciplina_pkey;
       public            postgres    false    206            >           2606    50518 (   historico_escolar historico_escolar_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.historico_escolar
    ADD CONSTRAINT historico_escolar_pkey PRIMARY KEY (numero_aluno, identificacao_turma);
 R   ALTER TABLE ONLY public.historico_escolar DROP CONSTRAINT historico_escolar_pkey;
       public            postgres    false    209    209            B           2606    50546    matricula matricula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (numero_aluno, identificacao_turma);
 B   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_pkey;
       public            postgres    false    211    211            @           2606    50536     pre_requisito pre_requisito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisito
    ADD CONSTRAINT pre_requisito_pkey PRIMARY KEY (numero_pre_requisito, numero_disciplina);
 J   ALTER TABLE ONLY public.pre_requisito DROP CONSTRAINT pre_requisito_pkey;
       public            postgres    false    210    210            <           2606    50505    turma turma_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_pkey PRIMARY KEY (identificacao_turma);
 :   ALTER TABLE ONLY public.turma DROP CONSTRAINT turma_pkey;
       public            postgres    false    208            6           2606    50472    usuario usuario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (email, senha);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    202    202            E           2606    50524 <   historico_escolar historico_escolar_identificacao_turma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico_escolar
    ADD CONSTRAINT historico_escolar_identificacao_turma_fkey FOREIGN KEY (identificacao_turma) REFERENCES public.turma(identificacao_turma) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.historico_escolar DROP CONSTRAINT historico_escolar_identificacao_turma_fkey;
       public          postgres    false    209    2876    208            D           2606    50519 5   historico_escolar historico_escolar_numero_aluno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.historico_escolar
    ADD CONSTRAINT historico_escolar_numero_aluno_fkey FOREIGN KEY (numero_aluno) REFERENCES public.aluno(numero_aluno) ON UPDATE CASCADE ON DELETE SET NULL;
 _   ALTER TABLE ONLY public.historico_escolar DROP CONSTRAINT historico_escolar_numero_aluno_fkey;
       public          postgres    false    209    204    2872            H           2606    50552 ,   matricula matricula_identificacao_turma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_identificacao_turma_fkey FOREIGN KEY (identificacao_turma) REFERENCES public.turma(identificacao_turma) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_identificacao_turma_fkey;
       public          postgres    false    2876    211    208            G           2606    50547 %   matricula matricula_numero_aluno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_numero_aluno_fkey FOREIGN KEY (numero_aluno) REFERENCES public.aluno(numero_aluno) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_numero_aluno_fkey;
       public          postgres    false    2872    204    211            F           2606    50537 2   pre_requisito pre_requisito_numero_disciplina_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisito
    ADD CONSTRAINT pre_requisito_numero_disciplina_fkey FOREIGN KEY (numero_disciplina) REFERENCES public.disciplina(numero_disciplina) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.pre_requisito DROP CONSTRAINT pre_requisito_numero_disciplina_fkey;
       public          postgres    false    206    210    2874            C           2606    50506 "   turma turma_numero_disciplina_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_numero_disciplina_fkey FOREIGN KEY (numero_disciplina) REFERENCES public.disciplina(numero_disciplina) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.turma DROP CONSTRAINT turma_numero_disciplina_fkey;
       public          postgres    false    2874    208    206            �   Y   x�3�L�KT�M,�LT(�/�J�4�L�<�*/(������[PZ�xx����\F�Y�@Z�83�,���BcN��E�I��E��F����qqq vy3*      �   [   x�3�LJ�K�WHIUHIL�/�4�LN�2�L-.)*-)-JD��d�93�J��SJ/?�8_�����ë�3�
��sJK�r�1z\\\ �#�      �   �   x�m�1�0���>�OP)���]Xܤ����0p�H\##�� ���}pdZل)i�2��RX(p��nD�O��l%�o:����Z7�$���lJ��N�F^�#��������k�4�Рb2/b����C�'��@�      �      x�3�4�2�4�2�1z\\\ T      �   ]   x�3�4�L-.)*-)-JTHIUHIL�/V�8����J��9�83�J��SJ/?�8_�����ë�3�%*$����$B䰙�i-W� څ,�      �      x�u��	1E��H�&k7^�dX"n&L�~�m�1�˞<���-Xp��%q��64�FI�����<<�u}^��K6�\�r�i��|���|�����{��h=nڄ��U�)]ND��<D      �   L   x���?�8_�(3)5�(�3+?1��!=713G/9?���4�2������8������4����0�0���$� �+F��� #�     