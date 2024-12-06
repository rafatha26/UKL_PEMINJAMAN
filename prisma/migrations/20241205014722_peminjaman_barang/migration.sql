/*
  Warnings:

  - You are about to drop the column `id_Barang` on the `peminjaman` table. All the data in the column will be lost.
  - Added the required column `id_barang` to the `Peminjaman` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `peminjaman` DROP FOREIGN KEY `Peminjaman_id_Barang_fkey`;

-- AlterTable
ALTER TABLE `peminjaman` DROP COLUMN `id_Barang`,
    ADD COLUMN `id_barang` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Peminjaman` ADD CONSTRAINT `Peminjaman_id_barang_fkey` FOREIGN KEY (`id_barang`) REFERENCES `Barang`(`id_barang`) ON DELETE RESTRICT ON UPDATE CASCADE;
