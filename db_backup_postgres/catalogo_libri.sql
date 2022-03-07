PGDMP     7    *                z            catalogo_libri    14.1    14.1 <    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    27190    catalogo_libri    DATABASE     j   CREATE DATABASE catalogo_libri WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE catalogo_libri;
                postgres    false            �            1259    39411    autore    TABLE     }   CREATE TABLE public.autore (
    id integer NOT NULL,
    cognome character varying(255),
    nome character varying(255)
);
    DROP TABLE public.autore;
       public         heap    postgres    false            �            1259    39410    autore_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.autore_id_seq;
       public          postgres    false    210            ?           0    0    autore_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.autore_id_seq OWNED BY public.autore.id;
          public          postgres    false    209            �            1259    39419    autore_libro    TABLE     d   CREATE TABLE public.autore_libro (
    autore_id integer NOT NULL,
    libro_id integer NOT NULL
);
     DROP TABLE public.autore_libro;
       public         heap    postgres    false            �            1259    39423 	   categoria    TABLE     f   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome_categoria character varying(255)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    39422    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    213            @           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    212            �            1259    39429    categoria_libro    TABLE     j   CREATE TABLE public.categoria_libro (
    categoria_id integer NOT NULL,
    libro_id integer NOT NULL
);
 #   DROP TABLE public.categoria_libro;
       public         heap    postgres    false            �            1259    39433    libro    TABLE     �   CREATE TABLE public.libro (
    id integer NOT NULL,
    anno integer,
    prezzo double precision,
    titolo character varying(255)
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    39439    libro_autore    TABLE     d   CREATE TABLE public.libro_autore (
    libro_id integer NOT NULL,
    autore_id integer NOT NULL
);
     DROP TABLE public.libro_autore;
       public         heap    postgres    false            �            1259    39442    libro_categoria    TABLE     j   CREATE TABLE public.libro_categoria (
    libro_id integer NOT NULL,
    categoria_id integer NOT NULL
);
 #   DROP TABLE public.libro_categoria;
       public         heap    postgres    false            �            1259    39432    libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.libro_id_seq;
       public          postgres    false    216            A           0    0    libro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.libro_id_seq OWNED BY public.libro.id;
          public          postgres    false    215            �            1259    39446    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    39445    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    220            B           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    219            �            1259    39452 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    39458    utente    TABLE     �   CREATE TABLE public.utente (
    id integer NOT NULL,
    email character varying(255),
    is_active boolean NOT NULL,
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.utente;
       public         heap    postgres    false            �            1259    39457    utente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.utente_id_seq;
       public          postgres    false    223            C           0    0    utente_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.utente_id_seq OWNED BY public.utente.id;
          public          postgres    false    222            �           2604    39414 	   autore id    DEFAULT     f   ALTER TABLE ONLY public.autore ALTER COLUMN id SET DEFAULT nextval('public.autore_id_seq'::regclass);
 8   ALTER TABLE public.autore ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    39426    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    39436    libro id    DEFAULT     d   ALTER TABLE ONLY public.libro ALTER COLUMN id SET DEFAULT nextval('public.libro_id_seq'::regclass);
 7   ALTER TABLE public.libro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    39449    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    39461 	   utente id    DEFAULT     f   ALTER TABLE ONLY public.utente ALTER COLUMN id SET DEFAULT nextval('public.utente_id_seq'::regclass);
 8   ALTER TABLE public.utente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            +          0    39411    autore 
   TABLE DATA           3   COPY public.autore (id, cognome, nome) FROM stdin;
    public          postgres    false    210   �A       ,          0    39419    autore_libro 
   TABLE DATA           ;   COPY public.autore_libro (autore_id, libro_id) FROM stdin;
    public          postgres    false    211   �A       .          0    39423 	   categoria 
   TABLE DATA           7   COPY public.categoria (id, nome_categoria) FROM stdin;
    public          postgres    false    213   B       /          0    39429    categoria_libro 
   TABLE DATA           A   COPY public.categoria_libro (categoria_id, libro_id) FROM stdin;
    public          postgres    false    214   XB       1          0    39433    libro 
   TABLE DATA           9   COPY public.libro (id, anno, prezzo, titolo) FROM stdin;
    public          postgres    false    216   uB       2          0    39439    libro_autore 
   TABLE DATA           ;   COPY public.libro_autore (libro_id, autore_id) FROM stdin;
    public          postgres    false    217   C       3          0    39442    libro_categoria 
   TABLE DATA           A   COPY public.libro_categoria (libro_id, categoria_id) FROM stdin;
    public          postgres    false    218   /C       5          0    39446    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    220   \C       6          0    39452 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    221   �C       8          0    39458    utente 
   TABLE DATA           K   COPY public.utente (id, email, is_active, password, user_name) FROM stdin;
    public          postgres    false    223   �C       D           0    0    autore_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.autore_id_seq', 4, true);
          public          postgres    false    209            E           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 4, true);
          public          postgres    false    212            F           0    0    libro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.libro_id_seq', 4, true);
          public          postgres    false    215            G           0    0    role_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.role_id_seq', 2, true);
          public          postgres    false    219            H           0    0    utente_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.utente_id_seq', 2, true);
          public          postgres    false    222            �           2606    39418    autore autore_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autore
    ADD CONSTRAINT autore_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.autore DROP CONSTRAINT autore_pkey;
       public            postgres    false    210            �           2606    39428    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    213            �           2606    39438    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    216            �           2606    39451    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    220            �           2606    39456    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    221    221            �           2606    39465    utente utente_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    223            �           2606    39501 +   libro_categoria fk11952p0wwxdk8rtrftctop2on    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fk11952p0wwxdk8rtrftctop2on FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fk11952p0wwxdk8rtrftctop2on;
       public          postgres    false    218    216    3214            �           2606    39511 %   user_role fk3ks9cgnjeu2q53u945alwbcsl    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl FOREIGN KEY (user_id) REFERENCES public.utente(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl;
       public          postgres    false    223    3220    221            �           2606    39481 +   categoria_libro fk4yoqovmqh9w9iblho55718cit    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_libro
    ADD CONSTRAINT fk4yoqovmqh9w9iblho55718cit FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 U   ALTER TABLE ONLY public.categoria_libro DROP CONSTRAINT fk4yoqovmqh9w9iblho55718cit;
       public          postgres    false    213    3212    214            �           2606    39506 %   user_role fka68196081fvovjhkek5m97n3y    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fka68196081fvovjhkek5m97n3y;
       public          postgres    false    220    3216    221            �           2606    39476 +   categoria_libro fkf8ohnpqjc4657gl07ea084djr    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_libro
    ADD CONSTRAINT fkf8ohnpqjc4657gl07ea084djr FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 U   ALTER TABLE ONLY public.categoria_libro DROP CONSTRAINT fkf8ohnpqjc4657gl07ea084djr;
       public          postgres    false    3214    214    216            �           2606    39496 +   libro_categoria fkj6mhf7vwwovtyqpcxj7r9nlvg    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg;
       public          postgres    false    213    3212    218            �           2606    39491 (   libro_autore fkjqi5oqp3sw7g9mm1bhhqy1pi8    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8 FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8;
       public          postgres    false    3214    216    217            �           2606    39466 (   autore_libro fkoh15x2gu5ynj76oad57vb9fsw    FK CONSTRAINT     �   ALTER TABLE ONLY public.autore_libro
    ADD CONSTRAINT fkoh15x2gu5ynj76oad57vb9fsw FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.autore_libro DROP CONSTRAINT fkoh15x2gu5ynj76oad57vb9fsw;
       public          postgres    false    211    216    3214            �           2606    39486 (   libro_autore fksgfg0ss84qscvi1l8fdd45qwj    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj;
       public          postgres    false    210    3210    217            �           2606    39471 (   autore_libro fkslex7qtrgaww7q4j68w13c4w2    FK CONSTRAINT     �   ALTER TABLE ONLY public.autore_libro
    ADD CONSTRAINT fkslex7qtrgaww7q4j68w13c4w2 FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.autore_libro DROP CONSTRAINT fkslex7qtrgaww7q4j68w13c4w2;
       public          postgres    false    210    211    3210            +   F   x�3�tM���MJ-*��2�����L��t�/��2��/.��t��/J���2�t�I�K�������� k��      ,      x������ � �      .   2   x�3�t�L����2�tK�+I,��2����,�2��(���I-����� f�      /      x������ � �      1   }   x��1�0 g�~AT���u���+�	Ud)�R[�O2�鎁c�Gw���;+}�R�����w:~j��u#�km��	��ػK�间
%�4�mY�V��r�IRR!��qػ��e7|9D�%�      2      x�3�4�2�4�2�4�2�4����� ��      3      x�3�4�2�4�2�4�2�4����� ��      5   !   x�3���q�v�2��]|=��b���� t��      6      x�3�4�2�4�2�=... !
      8   �   x�U�I�0  �s���l7� �E�F�-KHK��=9�m�]�4o*{
8��\Rd)�˞��%5|Z|��uFEp����mΞ9c��V�>�1�O�����j��@�4a�s#&����f��ҝ�9�.Q�А�Exz��5�n�� �o+]8�     