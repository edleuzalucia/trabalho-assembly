using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace trabalho_para_assembly
{
    class Program
    {
        static void Main(string[] args)
        {
            //Programa que recebe dois numeros inteiros calcula a soma e mostra o resultado.
            int num1, num2, resultado; //declaração de variáveis.
            Console.WriteLine("Digite um numero : "); //solicita ao usuario a digitar o primeiro úumero inteiro.
            num1 = int.Parse(Console.ReadLine());//faz a leitura do primeiro número. 
            Console.WriteLine("Digite o segundo numero : ");//solicita ao usuario a digitar o segundo número inteiro.
            num2 = int.Parse(Console.ReadLine());  //faz a leitura do segundo número. 
            resultado = num1 + num2; //calculo da operação de soma dos números.
            Console.Write(" O resultado é : "+resultado);// mostrar na tela o resultado do calculo.
            Console.ReadKey();// Finaliza o programa.
            
        }
    }
}
