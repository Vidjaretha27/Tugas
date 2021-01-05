#include <stdio.h>

typedef struct
{
	char nim[50];
	char nama[50];
	char jurusan[50];
	int tgllhr, blnlhr, thnlhr;
	int angkatan;
}iduser;

typedef struct
{
	char judul[50];
	char kode[20];
	char tglpinjam[10];
}perpus;

iduser data[50];
perpus buku[50];
int pil1, pil2;

void buatid()
{
	FILE*buat;
	FILE*idfix;
	buat = fopen("Data Diri.txt","w");
	idfix = fopen("ID.txt","w");				
	printf("Nama Anda\t\t: "); fflush(stdin); gets(data[0].nama);
	printf("NIM Anda\t\t: "); scanf("%s",&data[0].nim);
	printf("Jurusan Anda\t\t: "); fflush(stdin); gets(data[0].jurusan);fflush(stdin);
	printf("Tanggal Lahir [dd]\t: "); scanf("%d",&data[0].tgllhr);
	printf("Bulan Lahir [mm]\t: "); scanf("%d",&data[0].blnlhr);
	printf("Tahun Lahir[yyyy]\t: "); scanf("%d",&data[0].thnlhr);
	printf("Angkatan Anda\t\t: "); scanf("%d",&data[0].angkatan);
					
	printf("\n\tANDA SUDAH MEMBUAT ID\n");
	printf("\n\tID ANDA\t: %d%d%d\n",data[0].tgllhr,data[0].blnlhr,data[0].angkatan);
	fprintf(idfix,"ID : %d%d%d\n",data[0].tgllhr,data[0].blnlhr,data[0].angkatan);
	printf("\n\tHARAP CATAT DAN INGAT ID ANDA!!\n");
	
	fprintf(buat,"Nama: %s\n",data[0].nama);
	fprintf(buat,"NIM: %s\n",data[0].nim);
	fprintf(buat,"Jurusan: %s\n",data[0].jurusan);
	fprintf(buat,"Tanggal Lahir: %d\n",data[0].tgllhr);
	fprintf(buat,"Bulan Lahir: %d\n",data[0].blnlhr);
	fprintf(buat,"Tahun Lahir: %d\n",data[0].thnlhr);
	fprintf(buat,"Angkatan: %d\n",data[0].angkatan);
	
	fclose(buat);
	fclose(idfix);
}

void menupinjam()
{
	printf("\n\t\t--------------------------------\n");
	printf("\t\t--------PEMINJAMAN BUKU---------\n");
	printf("\t\t--------------------------------\n");
	printf("\n1. Peminjaman Buku\n");
	printf("2. Data Buku yg Dipinjam\n");
	printf("3. MENU UTAMA\n");
}

void pinjam()
{
	FILE*daftar;
	int m,i;
	daftar = fopen("Daftar Buku.txt","w");
	printf("\n\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
	printf("\t     BUKU YANG INGIN DIPINJAM     \n");
	printf("\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
	printf("\nJumlah Buku yang ingin dipinjam :");
	scanf("%d",&m);
	for(i=1;i<=m;i++)
	{
		printf("\nJudul Buku :"); fflush(stdin); gets(buku[i].judul);
		printf("Kode Buku :");scanf("%s",&buku[i].kode);	
		printf("Tanggal Peminjaman [ddmmyyyy] :"); scanf("%s",&buku[i].tglpinjam);
		fprintf(daftar,"\nJudul : %s\n",buku[i].judul);
		fprintf(daftar,"Kode : %s\n",buku[i].kode);	
		fprintf(daftar,"Tanggal Pinjam : %s\n",buku[i].tglpinjam);
	}
	
	fclose(daftar);
}

void databuku()
{
	char read[50];
	FILE*daftar;
	daftar = fopen("Daftar Buku.txt","r");	
	while(fgets(read,50,daftar))
	{
		printf("%s", read);
	}
	fclose(daftar);
}
int main()
{
	FILE*idfix;
	int pil1,pil2,c;
	char id[10], baca[10];
	int i,m;
	do
	{
		printf("\n\t\t--------------------------------\n");
		printf("\t\t----------PEMBUATAN ID----------\n");
		printf("\t\t--------------------------------\n");
		printf("\n1. Buat ID Perpustakaan\n");
		printf("2. Sudah Memiliki ID\n");
		printf("3. KELUAR\n");
		printf("Pilihan Anda :"); 
		scanf("%d",&pil1);
		system("cls");	
		printf ("\t\t/////////////////////////////////////\n");
		printf ("\t\t         PROGRAM PERPUSTAKAAN        \n");
		printf ("\t\t              SEDERHANA              \n");
		printf ("\t\t/////////////////////////////////////\n\n");
		switch(pil1)
		{
			case 1:
				buatid();
				system("pause");
				printf("\n\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
				printf("\t        KONFIRMASI ID ANDA        \n");
				printf("\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
				printf("\nKonfirmasi ID Anda : ");
				scanf("%d",&c);	
			break;
			case 2:
				
				printf("\nMasukkan ID Anda : "); scanf("%s",&id);
				if(id!=c)
				{
					do
					{
						menupinjam();
						printf("Pilihan Anda :"); 
						scanf("%d",&pil2);
						switch(pil2)
						{
							case 1:
								pinjam();
								system("cls");
							break;
							case 2:
								databuku();
								system("pause");
							break;
							case 3:
								system("pause");
							break;
							default:
								printf("INPUT ANDA SALAH !!");
						}
					}while(pil2!=3);
				}else{
						printf("\n\tID YANG ANDA MASUKKAN TIDAK SESUAI");
					}
			break;
			case 3:
				system("pause");
			break;
			default:
				printf("\nPILIHAN YANG ANDA MASUKKAN SALAH!!");
		}
	}while(pil1!=3);
	return 0;
}

