

CREATE TABLE `gares` (
  `id_gare` int(20) NOT NULL,
  `nom_gare` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tgv` (
  `id_TGV` int(20) NOT NULL,
  `Date_depart` datetime NOT NULL,
  `Date_arrivee` datetime NOT NULL,
  `id_gare_depart` int(20) NOT NULL,
  `id_gare_arrivee` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



ALTER TABLE `gares`
  ADD PRIMARY KEY (`id_gare`);



ALTER TABLE `tgv`
  ADD PRIMARY KEY (`id_TGV`);


ALTER TABLE `tgv` ADD FOREIGN KEY (`id_gare_depart`) REFERENCES gares(`id_gare`);
ALTER TABLE `tgv` ADD FOREIGN KEY (`id_gare_arrivee`) REFERENCES gares(`id_gare`);





