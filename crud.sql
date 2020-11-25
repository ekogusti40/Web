-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 05:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `categori` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tanggal` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_publish` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `categori`, `slug`, `konten`, `tanggal`, `is_publish`) VALUES
(1, 'Foundamental Javascript', 1, 'node-js-foundamental-javascript', '<h2>Kali ini mimin mengenalkan foundamental node js</h2><h2><br></h2><blockquote>Terus learning sebisanya</blockquote><p>Kali ini mimin membahas tentan variable di javscript</p><p><br></p><ol><li>Penggunaan<strong> var,</strong> <strong>const</strong>, <strong>let</strong></li></ol><pre class=\"ql-syntax\" spellcheck=\"false\"><span class=\"hljs-keyword\">const</span> nama = <span class=\"hljs-string\">\"Merupakan sebuah constanta yang hanya satu kali instance\"</span>\n<span class=\"hljs-keyword\">let</span> huruf = <span class=\"hljs-string\">\"Merupakan data yang sering kita jumpai\"</span>;\n<span class=\"hljs-keyword\">var</span> angka = <span class=\"hljs-number\">0</span>?\n</pre><p><br></p>', '2020-11-19 01:21:07.554037', 0),
(2, 'Pengenalan Svelte Js', 1, 'node-js-pengenalan-svelte-js', '<h1>Apa itu svelte js?</h1><p><br></p><p class=\"ql-align-center\">Svelte js adalah kerangka kerja javscript frontend gratis dan sumber terbuka yang dibuat oleh <strong><em>Rich Harris</em></strong> dan dikelola</p><p class=\"ql-align-center\">oleh anggota tim inti svelte lainya</p><p>Kali ini mimin mencoba mengulik svelte dasar, apa sih itu?</p><p><br></p><p>svelte mempunyai reactiveform dengan cara penulisan yang lebih simple</p><pre class=\"ql-syntax\" spellcheck=\"false\">$:sapa = <span class=\"hljs-string\">\"Hello Word\"</span>\n</pre><p><br></p><p>Contoh kasus yang kita coba dengan reactiveform svelte:</p><ol><li>Saya ingin melakukan penjumlahan sederhana secara <strong><em>reactiveform</em></strong></li></ol><pre class=\"ql-syntax\" spellcheck=\"false\">let nilai =  1;\nfunction tambah(data){\n   nilai = data\n  }?\n$:hasil += nilai;\n\n<span class=\"hljs-comment\">&lt;!-- HTML --&gt;</span>\n<span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">button</span> <span class=\"hljs-attr\">type</span>=<span class=\"hljs-string\">\"button\"</span> <span class=\"hljs-attr\">on:click</span>=<span class=\"hljs-string\">{()</span>=&gt;</span> tambah(hasil)}&gt;Tambahkan<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">button</span>&gt;</span>\n<span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">p</span>&gt;</span>{hasil}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">p</span>&gt;</span>??\n\n</pre><p>Ketika button <strong>tambahkan</strong> di klik akan menjadikan penambahan otomastis dengan argumen pada function tambah nilai dari hasil yang diawali dengan variabel nilai = 1;</p>', '2020-11-19 01:34:15.129126', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categori`
--

CREATE TABLE `categori` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categori`
--

INSERT INTO `categori` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Node Js', 'node-js', NULL),
(5, 'Routify', 'node-js-routify', 1),
(6, 'PHP', 'php', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categori`
--
ALTER TABLE `categori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
