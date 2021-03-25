import os
import net

fn main(){

mut remote_ip := ""
if os.args.len < 2 {
        remote_ip ='127.0.0.1'
}else{
	remote_ip = os.args[1]
}
    ports := {'http':80,'dns':53,'https':443,'ftp':20, 'ftp2':21}
    for key, value in ports{
                  mut conn := net.dial_tcp("$remote_ip:$value") or {continue}
                  if ip := conn.peer_ip(){
	
	                 println("$key -> $value ${ip}")
	          }else{
                        
	          }
		  conn.close() or {}		  
    }



}
