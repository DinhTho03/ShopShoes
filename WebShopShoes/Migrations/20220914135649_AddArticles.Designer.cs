﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using ShopShoes.Data;

#nullable disable

namespace ShopShoes.Migrations
{
    [DbContext(typeof(ShopDbContext))]
    [Migration("20220914135649_AddArticles")]
    partial class AddArticles
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.8")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Category", b =>
            {
                b.Property<int>("CategoryId")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CategoryId"), 1L, 1);

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Value")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("CategoryId");

                b.ToTable("Category");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Product", b =>
            {
                b.Property<int>("ProductId")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ProductId"), 1L, 1);

                b.Property<string>("BrandName")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("CateId")
                    .HasColumnType("int");

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Description")
                    .IsRequired()
                    .HasColumnType("Text");

                b.Property<double>("Price")
                    .HasColumnType("float");

                b.Property<string>("ProductName")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Style")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Title")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ProductId");

                b.HasIndex("CateId");

                b.ToTable("Product");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.ProductImage", b =>
            {
                b.Property<int>("Id")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("FeatureImage")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("ProductId")
                    .HasColumnType("int");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("Id");

                b.HasIndex("ProductId");

                b.ToTable("ProductImage");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.ProductSize", b =>
            {
                b.Property<int>("ProductSizeId")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ProductSizeId"), 1L, 1);

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("ProductId")
                    .HasColumnType("int");

                b.Property<int>("SizeId")
                    .HasColumnType("int");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ProductSizeId");

                b.HasIndex("ProductId");

                b.HasIndex("SizeId");

                b.ToTable("ProductSize");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Size", b =>
            {
                b.Property<int>("Id")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Value")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("Id");

                b.ToTable("Size");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.UserInfo", b =>
            {
                b.Property<int>("Id")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int");

                SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                b.Property<int?>("Articles")
                    .HasColumnType("int");

                b.Property<string>("Avatar")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<DateTime>("CommentDate")
                    .HasColumnType("datetime2");

                b.Property<DateTime>("CreateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("CreateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("Products")
                    .HasColumnType("int");

                b.Property<DateTime>("UpdateAt")
                    .HasColumnType("datetime2");

                b.Property<string>("UpdateBy")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("UserName")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("Id");

                b.HasIndex("Products");

                b.ToTable("userInfos");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Product", b =>
            {
                b.HasOne("ShopShoes.Data.DetailPage_Description.DetailPage.Category", null)
                    .WithMany("ProductCates")
                    .HasForeignKey("CateId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.ProductImage", b =>
            {
                b.HasOne("ShopShoes.Data.DetailPage_Description.DetailPage.Product", null)
                    .WithMany("ProductImages")
                    .HasForeignKey("ProductId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.ProductSize", b =>
            {
                b.HasOne("ShopShoes.Data.DetailPage_Description.DetailPage.Product", null)
                    .WithMany("ProductSizes")
                    .HasForeignKey("ProductId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();

                b.HasOne("ShopShoes.Data.DetailPage_Description.DetailPage.Size", null)
                    .WithMany("ProductSizes")
                    .HasForeignKey("SizeId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.UserInfo", b =>
            {
                b.HasOne("ShopShoes.Data.DetailPage_Description.DetailPage.Product", null)
                    .WithMany("userInfos")
                    .HasForeignKey("Products")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Category", b =>
            {
                b.Navigation("ProductCates");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Product", b =>
            {
                b.Navigation("ProductImages");

                b.Navigation("ProductSizes");

                b.Navigation("userInfos");
            });

            modelBuilder.Entity("ShopShoes.Data.DetailPage_Description.DetailPage.Size", b =>
            {
                b.Navigation("ProductSizes");
            });
#pragma warning restore 612, 618
        }
    }
}
