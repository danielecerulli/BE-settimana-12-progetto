PGDMP         /                z            catalogo_libri    14.1    14.1 "                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    27190    catalogo_libri    DATABASE     j   CREATE DATABASE catalogo_libri WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE catalogo_libri;
                postgres    false            ?            1259    42276    autore    TABLE     }   CREATE TABLE public.autore (
    id integer NOT NULL,
    cognome character varying(255),
    nome character varying(255)
);
    DROP TABLE public.autore;
       public         heap    postgres    false            ?            1259    42283 	   categoria    TABLE     f   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome_categoria character varying(255)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    42275    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    42288    libro    TABLE     ?   CREATE TABLE public.libro (
    id integer NOT NULL,
    anno integer,
    prezzo double precision,
    titolo character varying(255)
);
    DROP TABLE public.libro;
       public         heap    postgres    false            ?            1259    42293    libro_autore    TABLE     d   CREATE TABLE public.libro_autore (
    libro_id integer NOT NULL,
    autore_id integer NOT NULL
);
     DROP TABLE public.libro_autore;
       public         heap    postgres    false            ?            1259    42296    libro_categoria    TABLE     j   CREATE TABLE public.libro_categoria (
    libro_id integer NOT NULL,
    categoria_id integer NOT NULL
);
 #   DROP TABLE public.libro_categoria;
       public         heap    postgres    false            ?            1259    42299    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    42304 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            ?            1259    42309    utente    TABLE     ?   CREATE TABLE public.utente (
    id integer NOT NULL,
    email character varying(255),
    is_active boolean NOT NULL,
    password character varying(255),
    user_name character varying(255)
);
    DROP TABLE public.utente;
       public         heap    postgres    false                      0    42276    autore 
   TABLE DATA           3   COPY public.autore (id, cognome, nome) FROM stdin;
    public          postgres    false    210   ?$                 0    42283 	   categoria 
   TABLE DATA           7   COPY public.categoria (id, nome_categoria) FROM stdin;
    public          postgres    false    211   K%                 0    42288    libro 
   TABLE DATA           9   COPY public.libro (id, anno, prezzo, titolo) FROM stdin;
    public          postgres    false    212   ?%                 0    42293    libro_autore 
   TABLE DATA           ;   COPY public.libro_autore (libro_id, autore_id) FROM stdin;
    public          postgres    false    213   &                 0    42296    libro_categoria 
   TABLE DATA           A   COPY public.libro_categoria (libro_id, categoria_id) FROM stdin;
    public          postgres    false    214   P&                 0    42299    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    215   ?&                 0    42304 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    216   ?&                 0    42309    utente 
   TABLE DATA           K   COPY public.utente (id, email, is_active, password, user_name) FROM stdin;
    public          postgres    false    217   ?&       $           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 16, true);
          public          postgres    false    209            y           2606    42282    autore autore_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autore
    ADD CONSTRAINT autore_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.autore DROP CONSTRAINT autore_pkey;
       public            postgres    false    210            {           2606    42287    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    211            }           2606    42292    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    212                       2606    42303    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    215            ?           2606    42308    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    216    216            ?           2606    42315    utente utente_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    217            ?           2606    42331 +   libro_categoria fk11952p0wwxdk8rtrftctop2on    FK CONSTRAINT     ?   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fk11952p0wwxdk8rtrftctop2on FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fk11952p0wwxdk8rtrftctop2on;
       public          postgres    false    212    3197    214            ?           2606    42341 %   user_role fk3ks9cgnjeu2q53u945alwbcsl    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl FOREIGN KEY (user_id) REFERENCES public.utente(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fk3ks9cgnjeu2q53u945alwbcsl;
       public          postgres    false    217    3203    216            ?           2606    42336 %   user_role fka68196081fvovjhkek5m97n3y    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fka68196081fvovjhkek5m97n3y;
       public          postgres    false    215    3199    216            ?           2606    42326 +   libro_categoria fkj6mhf7vwwovtyqpcxj7r9nlvg    FK CONSTRAINT     ?   ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 U   ALTER TABLE ONLY public.libro_categoria DROP CONSTRAINT fkj6mhf7vwwovtyqpcxj7r9nlvg;
       public          postgres    false    214    3195    211            ?           2606    42321 (   libro_autore fkjqi5oqp3sw7g9mm1bhhqy1pi8    FK CONSTRAINT     ?   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8 FOREIGN KEY (libro_id) REFERENCES public.libro(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fkjqi5oqp3sw7g9mm1bhhqy1pi8;
       public          postgres    false    212    3197    213            ?           2606    42316 (   libro_autore fksgfg0ss84qscvi1l8fdd45qwj    FK CONSTRAINT     ?   ALTER TABLE ONLY public.libro_autore
    ADD CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj FOREIGN KEY (autore_id) REFERENCES public.autore(id);
 R   ALTER TABLE ONLY public.libro_autore DROP CONSTRAINT fksgfg0ss84qscvi1l8fdd45qwj;
       public          postgres    false    210    3193    213               F   x???tM???MJ-*??24?????L??t?/?9????39?3???3?F??9?yɕ@u?\1z\\\ ??A         2   x?3?t?L????2?tK?+I,??2????,????(???I-?????? 	.?            x??1
?0 g?z???$?c???Ю]\7?kA????|?_????7?Z??ߍ>[)?zD??8???Ɵ???M?E?Z????=p????_?)i?EtϢȓu?uF?cJ)??<?m-?/???s&?         $   x?34???24?44?24?44?24?44?????? ;?         !   x?34?4?24?4?24?4?24???????? .9e         !   x?3???q?v?2??]|=??b???? t??            x?3?4?2?4?2?=... o         ?   x?U?I?0  ?s???a??1aQ	D$^*?(?BAx?FO?F$?Uk?%U????"Ȓ???E#V???A??J???q?:?i???t??????@?S??A?P0??Y?????F?S???p??mu?V#{-???;??u?^|??H??S?_??~7xC?7?~8     