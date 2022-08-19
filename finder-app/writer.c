#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char * argv[]){
    if(argc != 3){
        printf("need 2 params");
        syslog (LOG_ERR, "params error");
        return 1;
    }
    
    FILE *fp;

    fp = fopen(argv[1], "w+");
    fprintf(fp, argv[2]);
    fclose(fp);
    

    openlog ("writer", LOG_USER, LOG_USER);

    syslog (LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    
    
    closelog ();
    
    
    return 0;
    
    
}
