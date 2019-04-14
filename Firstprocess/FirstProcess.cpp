#include<iostream>
#include<fstream>
#include<windows.h>
#define Size 10
using namespace std;

int main(int argc, char *argv[]) {
	// argv[1] = ����� ������ ��������� ������� 
	// argv[2] = ������� ������ ��� ��������� 
	// ��������� ������ ����������(����� �� ������ 3 ����������)))
	setlocale(LC_ALL, "rus");

	int **ptrarray = new int*[Size]; // ��� ������ � �������
	for (int count = 0; count < Size; count++)
		ptrarray[count] = new int[Size]; // � ���� ��������

	// ��������� ������ - 1 ��� ���������� 3 ��� ������
	ifstream fileinput("C:/Users/�����/source/repos/Firstprocess/Debug/data.txt");
	ofstream fileoutput1;
	ofstream fileoutput2;
	ofstream fileoutput3;

	// ����� switch ��������� ������� ���� ��������� ���� ���� ��� ���������� ������ ����������
	switch (atoi(argv[1]))
	{
	case 1:
		fileoutput1.open("C:/Users/�����/source/repos/Firstprocess/Debug/Result1.txt");
		break;
	case 2:
		fileoutput2.open("C:/Users/�����/source/repos/Firstprocess/Debug/Result2.txt");
		break;
	case 3:
		fileoutput3.open("C:/Users/�����/source/repos/Firstprocess/Debug/Result3.txt");
		break;
	default:

		break;
		return 0;
	}

	// ������� � ����� �� ��������� �����
	for (int i = 0; i <atoi(argv[2]); i++) {//�������� ���� �� ��������� ������� �������� ��������
		if (fileinput.is_open() && (fileoutput1.is_open() || fileoutput2.is_open() || fileoutput3.is_open())) { // ����� ������ is_open()
			for (int count_row = 0; count_row < Size; count_row++) {
				for (int count_column = 0; count_column < Size; count_column++) {
					fileinput >> ptrarray[count_row][count_column];
					// ����� ��������� � ���� ���� ������ ����������
					switch (atoi(argv[1]))
					{
					case 1:
						fileoutput1 << ptrarray[count_row][count_column] + rand() % (Size - 1) + 1;
						fileoutput1 << ' ';
					case 2:
						fileoutput2 << (ptrarray[count_row][count_column] + 1) * 6;
						fileoutput2 << ' ';
					case 3:
						fileoutput3 << (ptrarray[count_row][count_column] + 12) / 6;
						fileoutput3 << ' ';
					default:
						break;
					}

				}
				fileoutput1 << "\n";
				fileoutput2 << "\n";
				fileoutput3 << "\n";
			}
		}
		else
		{
			cout << "���� �� ������!\n\n" << endl;
		}
	}
	// ���������� ������
	fileinput.close();
	fileoutput1.close();
	fileoutput2.close();
	fileoutput3.close();

	return 0;
}
