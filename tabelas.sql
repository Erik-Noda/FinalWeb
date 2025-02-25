CREATE TABLE `grupos` (
  `idgrupo` int(11) NOT NULL,
  `nomegrupo` varchar(15) NOT NULL,
  `corgrupo` varchar(15) NOT NULL,
  `situacaogrupo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idgrupo`);
  
ALTER TABLE `grupos`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


-- ------------------------------------------------------------------

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `nomeproduto` varchar(15) NOT NULL,
  `precoproduto` varchar(15) NOT NULL,
  `descontoproduto` varchar(15) NOT NULL,
  `descricaoproduto` varchar(15) NOT NULL,
  `situacaoproduto` varchar(15) NOT NULL,
  `fotoproduto` varchar(15) NOT NULL,
  `fornecedorproduto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

-- --------------------------------------------------------------------

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `loginusuario` varchar(22) DEFAULT NULL,
  `senhausuario` varchar(22) DEFAULT NULL,
  `emailusuario` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

INSERT INTO `usuarios` (`idusuario`, `loginusuario`, `senhausuario`, `emailusuario`) VALUES
(9, 'erik', '123', 'erik@123');
