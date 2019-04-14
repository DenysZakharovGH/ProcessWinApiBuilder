//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "windows.h"
#include "iostream.h"
#include <ctime>
#include <iostream>
#include <string>
#include <fstream>
#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TForm1::N4Click(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender){ // если кнопка Старта була нажата
                STARTUPINFO ci ;   // определяет внешний вид основного окна процесса
                ZeroMemory(&ci,sizeof(STARTUPINFO));
                DWORD dwPriorityClass = IDLE_PRIORITY_CLASS;
                //PROCESS_INFORMATION pi Структура PROCESS_INFORMATION заполняется функцией CreateProcess информацией о новом созданном процессе и его главном потоке.
                clock_t timeAllStart = clock();// засекаем время начала роботи всего блока
                clock_t time1Start = clock();// засекаем время начала роботи первого блока
                PROCESS_INFORMATION pi1 ;

        if (Form1->CheckBox1->Checked){ // если нажат ЧЕКБОКС порвоого процесса

                char ConsoleParam1[6]=" 1 ";  // Перша частина параметра для приложухи обробки файлов

                if (CreateProcess("C:\\Users\\Денис\\source\\repos\\Firstprocess\\Debug\\Firstprocess.exe", strcat(ConsoleParam1,Edit1->Text.c_str()), // спариваем первую часть со второй из параметров введенних пользователем тип const char*
                NULL,NULL,FALSE,NULL,NULL,NULL,&ci,&pi1) == TRUE)
                {
                        // вибираем приоритет виполнения
                        switch(Form1->ComboBox1->ItemIndex)
                        {
                                case 0:
                                     dwPriorityClass = IDLE_PRIORITY_CLASS;
                                     break;
                                case 2:
                                     dwPriorityClass = REALTIME_PRIORITY_CLASS;
                                     break;
                                default:
                                     dwPriorityClass = NORMAL_PRIORITY_CLASS; // если приоритет не менялся или в листе вибрано один что =
                                     break;  // НОрмальному тогда и дефолт чтоби не писать два нормальних приоритетов
                        }
                SetPriorityClass(pi1.hProcess,dwPriorityClass);// меняем приоритет
                }
                else{Form1->Memo1->Lines->Add("Something goes wrong");}

        }
//-------------------------------------------------------------------------------------------------------------------------------
          clock_t time2Start = clock();
                PROCESS_INFORMATION pi2 ;
          if (Form1->CheckBox2->Checked){
                
                char ConsoleParam2[6]=" 2 ";

                if (CreateProcess("C:\\Users\\Денис\\source\\repos\\Firstprocess\\Debug\\Firstprocess.exe",strcat(ConsoleParam2,Edit2->Text.c_str()),
                NULL,NULL,FALSE,NULL,NULL,NULL,&ci,&pi2)==TRUE)
                {

                        switch(Form1->ComboBox2->ItemIndex)
                        {
                                case 0:
                                     dwPriorityClass = IDLE_PRIORITY_CLASS;
                                     break;
                                case 2:
                                     dwPriorityClass = REALTIME_PRIORITY_CLASS;
                                     break;
                                default:
                                     dwPriorityClass = NORMAL_PRIORITY_CLASS;
                                     break;
                        }
                SetPriorityClass(pi2.hProcess,dwPriorityClass);
                }
                else{Form1->Memo1->Lines->Add("Something goes wrong");}
                
        }

//-------------------------------------------------------------------------------------------------------------------------------
         clock_t time3Start = clock();
                PROCESS_INFORMATION pi3 ;
         if (Form1->CheckBox3->Checked){
                
                char ConsoleParam3[6]=" 3 ";
                if (CreateProcess("C:\\Users\\Денис\\source\\repos\\Firstprocess\\Debug\\Firstprocess.exe",strcat(ConsoleParam3,Edit3->Text.c_str()),
                NULL,NULL,FALSE,NULL,NULL,NULL,&ci,&pi3)==TRUE)
                {

                        switch(Form1->ComboBox3->ItemIndex)
                        {
                                case 0:
                                     dwPriorityClass = IDLE_PRIORITY_CLASS;
                                     break;
                                case 2:
                                     dwPriorityClass = REALTIME_PRIORITY_CLASS;
                                     break;
                                default:
                                     dwPriorityClass = NORMAL_PRIORITY_CLASS;
                                     break;
                        }
                SetPriorityClass(pi3.hProcess,dwPriorityClass);
                }
                else{Form1->Memo1->Lines->Add("Something goes wrong");}

        }
//что нажато тои будем закривать
if (Form1->CheckBox1->Checked){
                WaitForSingleObject(pi1.hProcess,INFINITE);// ждем конца и останавливаем секундомер
                clock_t time1Stop = clock();
                CloseHandle(pi1.hProcess); // закриваем потоки и дискриптори
                CloseHandle(pi1.hThread);
                Form1->Memo1->Lines->Add("First Process Work");  // виводим шо получилось на форми
                Form1->Memo1->Lines->Add((double)(time1Stop - time1Start) / CLOCKS_PER_SEC);
                Form2->Edit3->Text =((double)(time1Stop - time1Start) / CLOCKS_PER_SEC);
}
if (Form1->CheckBox2->Checked){
        WaitForSingleObject(pi2.hProcess,INFINITE);
                clock_t time2Stop = clock();
                CloseHandle(pi2.hProcess);
                CloseHandle(pi2.hThread);
                Form1->Memo1->Lines->Add("Second Process Work");
                Form1->Memo1->Lines->Add((double)(time2Stop - time2Start) / CLOCKS_PER_SEC);
                Form2->Edit2->Text =((double)(time2Stop - time2Start) / CLOCKS_PER_SEC);
}
if (Form1->CheckBox3->Checked){
WaitForSingleObject(pi3.hProcess,INFINITE);
                clock_t time3Stop = clock();
                CloseHandle(pi3.hProcess);
                CloseHandle(pi3.hThread);
                Form1->Memo1->Lines->Add("Third Process Work");
                Form1->Memo1->Lines->Add((double)(time3Stop - time3Start) / CLOCKS_PER_SEC);
                Form2->Edit1->Text =((double)(time3Stop - time3Start) / CLOCKS_PER_SEC);
}
clock_t timeAllStop = clock(); // останавливаем секундомер всего блока и считам сколько прошло времени
Form1->Edit4->Text =((double)(timeAllStop - timeAllStart) / CLOCKS_PER_SEC);


}
//---------------------------------------------------------------------------









void __fastcall TForm1::Button2Click(TObject *Sender)
{
         // считаваем 3 матрици и виводим в мемо
        string line;
        Form2->Show();
        std::ifstream in1("C:/Users/Денис/source/repos/Firstprocess/Debug/Result1.txt"); // окрываем файл для чтения
        if (in1.is_open())
        {
                while (getline(in1, line))
                {
                        Form2->Memo1->Lines->Add(line.c_str());
                }
        }
        in1.close();     // закрываем файл


        std::ifstream in2("C:/Users/Денис/source/repos/Firstprocess/Debug/Result2.txt"); // окрываем файл для чтения
        if (in2.is_open())
        {
                while (getline(in2, line))
                {
                        Form2->Memo2->Lines->Add(line.c_str());
                }
        }
        in2.close();     // закрываем файл


        Form2->Show();
        std::ifstream in3("C:/Users/Денис/source/repos/Firstprocess/Debug/Result3.txt"); // окрываем файл для чтения
        if (in3.is_open())
        {
                while (getline(in3, line))
                {
                        Form2->Memo3->Lines->Add(line.c_str());
                }
        }
        in3.close();     // закрываем файл

}
//---------------------------------------------------------------------------

