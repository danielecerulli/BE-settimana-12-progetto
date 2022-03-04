PGDMP         -                z            catalogo_libri    14.1    14.1 *    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    27190    catalogo_libri    DATABASE     j   CREATE DATABASE catalogo_libri WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE catalogo_libri;
                postgres    false            �            1259    31351    autore    TABLE     }   CREATE TABLE public.autore (
    id integer NOT NULL,
    cognome character varying(255),
    nome character varying(255)
);
    DROP TABLE public.autore;
       public         heap    postgres    false            �            1259    31358    autore_libro    TABLE     d   CREATE TABLE public.autore_libro (
    autore_id integer NOT NULL,
    libro_id integer NOT NULL
);
     DROP TABLE public.autore_libro;
       public         heap    postgres    false            �            1259    31361 	   categoria    TABLE     f   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome_categoria character varying(255)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    31366    categria_libro    TABLE     i   CREATE TABLE public.categria_libro (
    categoria_id integer NOT NULL,
    libro_id integer NOT NULL
);
 "   DROP TABLE public.categria_libro;
       public         heap    postgres    false            �            1259    31350    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    31369    libro    TABLE     �   CREATE TABLE public.libro (
    id integer NOT NULL,
    anno integer,
    prezzo double precision,
    titolo character varying(255)
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    31374    libro_autore    TABLE     d   CREATE TABLE public.libro_autore (
    libro_id integer NOT NULL,
    autore_id integer NOT NULL
);
     DROP TABLE public.libro_autore;
       public         heap    postgres    false            �            1259    31377    libro_categoria    TABLE     j   CREATE TABLE public.libro_categoria (
    libro_id integer NOT NULL,
    categoria_id integer NOT NULL
);
 #   DROP TABLE public.libro_categoria;
       public         heap    postgres    false            �            1259    31380    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    31385 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    31390    utente    TABLE     �   CREATE TABLE public.utente (
    id integer NOT NULL,
    email character varying(255),
    is_active boolean NOT NULL,
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.utente;
       public         heap    postgres    false            "          0    31351    autore 
   TABLE DATA           3   COPY public.autore (id, cognome, nome) FROM stdin;
    public          postgres    false    210   >/       #          0    31358    autore_libro 
   TABLE DATA           ;   COPY public.autore_libro (autore_id, libro_id) FROM stdin;
    public          postgres    false    211   �/       $          0    31361 	   categoria 
   TABLE DATA           7   COPY public.categoria (id, nome_categoria) FROM stdin;
    public          postgres    false    212   �/       %          0    31366    categria_libro 
   TABLE DATA           @   COPY public.categria_libro (categoria_id, libro_id) FROM stdin;
    public          postgres    false    213   �/       &          0    31369    libro 
   TABLE DATA           9   COPY public.libro (id, anno, prezzo, titolo) FROM stdin;
    public          postgres    false    214   0       '          0    31374    libro_autore 
   TABLE DATA           ;   COPY public.libro_autore (libro_id, autore_id) FROM stdin;
    public          postgres    false    215   �0       (          0    31377    libro_categoria 
   TABLE DATA           A   COPY public.libro_categoria (libro_id, categoria_id) FROM stdin;
    public          postgres    false    216   �0       )          0    31380    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    217   1       *          0    31385 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    218   51       +          0    31390    utente 
   TABLE DATA           K   COPY public.utente (id, email, is_active, password, user_name) FROM stdin;
    public          postgres    false    219   \1       2           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 16, true);
          public          postgres    false    209            �           2606    31357    autore autore_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autore
    ADD CONSTRAINT autore_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.autore DROP CONSTRAINT autore_pkey;
       public            postgres    false    210            �           2606    31365    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    212            �           2606    31373    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    214            �           2606    31384    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    217            �           2606    31389    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    218    218            �           2606    31396    utente utente_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    219            �           2606    31432 +   libro_categoria fk11952p0wwxdk8rtrftctop2on    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fk11952p0wwxdk8rtrftctop2on FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fk11952p0wwxdk8rtrftctop2on;
       public          postgres    false    216    3205    214            �           2606    31442 %   user_role fk3ks9cgnjeu2q53u945alwbcsl    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl FOREIGN KEY (user_id) REFERENCES public.utente(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl;
       public          postgres    false    219    3211    218            �           2606    31407 *   categria_libro fk5jb5itsh7ss3fso72nb2eyfb8    FK CONSTRAINT     �   ALTER TABLE ONLY public.categria_libro
    ADD CONSTRAINT fk5jb5itsh7ss3fso72nb2eyfb8 FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 T   ALTER TABLE ONLY public.categria_libro DROP CONSTRAINT fk5jb5itsh7ss3fso72nb2eyfb8;
       public          postgres    false    213    3205    214            �           2606    31437 %   user_role fka68196081fvovjhkek5m97n3y    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fka68196081fvovjhkek5m97n3y;
       public          postgres    false    3207    218    217            �           2606    31412 )   categria_libro fkhl9hk1tl54kc9wgfdjdfdfxy    FK CONSTRAINT     �   ALTER TABLE ONLY public.categria_libro
    ADD CONSTRAINT fkhl9hk1tl54kc9wgfdjdfdfxy FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 S   ALTER TABLE ONLY public.categria_libro DROP CONSTRAINT fkhl9hk1tl54kc9wgfdjdfdfxy;
       public          postgres    false    213    3203    212            �           2606    31427 +   libro_categoria fkj6mhf7vwwovtyqpcxj7r9nlvg    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg;
       public          postgres    false    216    212    3203            �           2606    31422 (   libro_autore fkjqi5oqp3sw7g9mm1bhhqy1pi8    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8 FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8;
       public          postgres    false    3205    215    214            �           2606    31397 (   autore_libro fkoh15x2gu5ynj76oad57vb9fsw    FK CONSTRAINT     �   ALTER TABLE ONLY public.autore_libro
    ADD CONSTRAINT fkoh15x2gu5ynj76oad57vb9fsw FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.autore_libro DROP CONSTRAINT fkoh15x2gu5ynj76oad57vb9fsw;
       public          postgres    false    214    211    3205            �           2606    31417 (   libro_autore fksgfg0ss84qscvi1l8fdd45qwj    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj;
       public          postgres    false    210    215    3201            �           2606    31402 (   autore_libro fkslex7qtrgaww7q4j68w13c4w2    FK CONSTRAINT     �   ALTER TABLE ONLY public.autore_libro
    ADD CONSTRAINT fkslex7qtrgaww7q4j68w13c4w2 FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.autore_libro DROP CONSTRAINT fkslex7qtrgaww7q4j68w13c4w2;
       public          postgres    false    211    210    3201            "   F   x���tM���MJ-*��24�����L��t�/�9��39�3��3�F��9�yɕ@u�\1z\\\ ��A      #      x������ � �      $   2   x�3�t�L����2�tK�+I,��2����,���(���I-����� 	.�      %      x������ � �      &      x��1
�0 g�z���$�c���Ю]\7�kA����|�_���7�Z�ߍ>[)�zD��8���Ɵ���M�E�Z����=p����_�)i�EtϢȓu�uF�cJ)��<�m-�/���s&�      '   $   x�34��24�44�24�44�24�44����� ;�      (   !   x�34�4�24�4�24�4�24������� .9e      )   !   x�3���q�v�2��]|=��b���� t��      *      x�3�4�2�4�2�1z\\\ k      +   �   x�U��B@ �k���f�ơ49U����a��j	3=}M]�=����[��C-������6���x�U�k��o�<�R"�sE�֔�˖�VՎ���߇dn��Q�?k��f����6����73O�2z�	j�@{v��&m>C�j4���7��7v     