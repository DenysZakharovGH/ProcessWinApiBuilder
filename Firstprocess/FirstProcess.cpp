#include<iostream>
#include<fstream>
#include<windows.h>
#define Size 10
using namespace std;

int main(int argc, char *argv[]) {
	// argv[1] = какой именно запустить процесс 
	// argv[2] = сколько циклов его повторить 
	// параметри визова приложения(чтоби не писать 3 одинакових)))
	setlocale(LC_ALL, "rus");

	int **ptrarray = new int*[Size]; // две строки в массиве
	for (int count = 0; count < Size; count++)
		ptrarray[count] = new int[Size]; // и пять столбцов

	// відкриваємо потоки - 1 для считування 3 для запусу
	ifstream fileinput("C:/Users/Денис/source/repos/Firstprocess/Debug/data.txt");
	ofstream fileoutput1;
	ofstream fileoutput2;
	ofstream fileoutput3;

	// через switch параметра функции мейн визначаем який файл для результату будемо створювати
	switch (atoi(argv[1]))
	{
	case 1:
		fileoutput1.open("C:/Users/Денис/source/repos/Firstprocess/Debug/Result1.txt");
		break;
	case 2:
		fileoutput2.open("C:/Users/Денис/source/repos/Firstprocess/Debug/Result2.txt");
		break;
	case 3:
		fileoutput3.open("C:/Users/Денис/source/repos/Firstprocess/Debug/Result3.txt");
		break;
	default:

		break;
		return 0;
	}

	// обробка и запис до вибраного файлу
	for (int i = 0; i <atoi(argv[2]); i++) {//параметр майн шо визначает кількість ітерацій процессу
		if (fileinput.is_open() && (fileoutput1.is_open() || fileoutput2.is_open() || fileoutput3.is_open())) { // вызов метода is_open()
			for (int count_row = 0; count_row < Size; count_row++) {
				for (int count_column = 0; count_column < Size; count_column++) {
					fileinput >> ptrarray[count_row][count_column];
					// также вибираемо в який файл будемо записувати
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
			cout << "Файл не открыт!\n\n" << endl;
		}
	}
	// закриваемо потоки
	fileinput.close();
	fileoutput1.close();
	fileoutput2.close();
	fileoutput3.close();

	return 0;
}
