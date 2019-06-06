var ar =[0,0,0,0];
ar[0]=[0,0,0,0];
ar[1]=[0,0,0,0];
ar[2]=[0,0,0,0];
ar[3]=[0,0,0,0];
var temp=[0,0,0,0,0];
var move=0;
var score=0;
var change=1;
function shuaxin()
{   for(var i = 0 ; i < 4;i++)

    for(var j = 0;j <4;j++)
    {   var k=i*4+j+1;
        var id="in"+k;
        var x0=document.getElementById(id);
        if(ar[i][j]==0)
            x0.value=" ";
        else{
            switch (ar[i][j]) {
                case 1:x0.value="H";break;
                case 2:x0.value="²H";break;
                case 4:x0.value="He";break;
                case 8:x0.value="Be";break;
                case 16:x0.value="O";break;
                case 32:x0.value="S";break;
                case 64:x0.value="Gd";break;
                default:x0.value="128超素";
            }
        }

    }
    var x0=document.getElementById("move");
    x0.value=move;
    var x0=document.getElementById("score");
    x0.value=score;
    var gameover=1;
    for(i=0;i<=3;i++)
        for(j=0;j<=3;j++)
            if(ar[i][j]==0)
                gameover=0;
    if(gameover)
    {
        alert("游戏结束"+"您的成绩是"+score);
        ar =[0,0,0,0];
        ar[0]=[0,0,0,0];
        ar[1]=[0,0,0,0];
        ar[2]=[0,0,0,0];
        ar[3]=[0,0,0,0];
        temp=[0,0,0,0,0];
        move=0;
        score=0;
        change=1;
    }
}

function getKey(e){
    e = e || window.event;
    var keycode = e.which ? e.which : e.keyCode;
    var i,j;
    if(keycode == 38){
        for(j=0;j<=3;j++)
        {
            for(i=0;i<=3;i++)
            {
                temp[i]=ar[i][j];
            }
            temp[4]=0;
            change=change+add();
            for(i=0;i<=3;i++)
            {
                ar[i][j]=temp[i];
            }
        }
        rand();
        shuaxin();
    }
    if(keycode == 37){
        for(i=0;i<=3;i++)
        {
            for(j=0;j<=3;j++)
            {
                temp[j]=ar[i][j];
            }
            temp[4]=0;
            change=change+add();
            for(j=0;j<=3;j++)
            {
                ar[i][j]=temp[j];
            }
        }
        rand();
        shuaxin();
    }
    if(keycode == 39){
        for(i=0;i<=3;i++)
        {
            for(j=0;j<=3;j++)
            {
                temp[j]=ar[i][3-j];
            }
            temp[4]=0;
            change=change+add();
            for(j=0;j<=3;j++)
            {
                ar[i][3-j]=temp[j];
            }
        }
        rand();
        shuaxin();
    }
    if(keycode == 40){
        for(j=0;j<=3;j++)
        {
            for(i=0;i<=3;i++)
            {
                temp[i]=ar[3-i][j];
            }
            temp[4]=0;
            change=change+add();
            for(i=0;i<=3;i++)
            {
                ar[3-i][j]=temp[i];
            }
        }
        rand();
        shuaxin();
    }
}

function listenKey ()
{
    if (document.addEventListener)
    {
        document.addEventListener("keyup",getKey,false);
    }
    else if (document.attachEvent)
    {
        document.attachEvent("onkeyup",getKey);
    }
    else
    {
        document.onkeyup = getKey;
    }
}

function add()
{
    var i;
    var t=0;
    var change=0;
    do
    {
        for(i=0;i<=3;i++)
        {
            if(temp[i]==0)
            {
                if(temp[i]!=temp[i+1])
                    change=1;
                temp[i]=temp[i+1];
                temp[i+1]=0;
            }
        }
        t++;
    }while(t<=3);
    for(i=1;i<=3;i++)
    {
        if(temp[i]==temp[i-1])
        {
            if(temp!=0)
            {
                change=1;
                score=score+temp[i];
            }
            temp[i-1]=temp[i-1]*2;
            temp[i]=0;
        }
    }
    do
    {
        for(i=0;i<=3;i++)
        {
            if(temp[i]==0)
            {
                temp[i]=temp[i+1];
                temp[i+1]=0;
            }
        }
        t++;
    }while(t<=3);
    return change;
}
function rand()
{
    var i,j;
    do
    {
        i=(Math.floor(Math.random()*(3-0+1)+0));
        j=(Math.floor(Math.random()*(3-0+1)+0));
    }
    while(ar[i][j]!=0);
    ar[i][j]=(Math.floor(Math.random()*(2-1+1)+1)*2);
    move++;
}