d1=35;
d2=30;
h1=30;

d3=34;
d4=39;
h2=33;


w_support=10;

$fn=100;


module support_piece(d=20){
    
    }

module support_block(d=20, h=100, w=w_support){
    translate([0,0,(h%w)/2])for(a=[0:w:h-w]){
        if((a/w)%2==0){
            translate([0,0,a])cylinder(r=d/2, h=w);
        }
        }
    }

//module inner(){
//    cylinder(r1=d4/2, r2=d1/2, h=(h2-h1)/2, $fn=100);
//    
//    }

//inner();
support_block(h=40);
//echo(33%10);