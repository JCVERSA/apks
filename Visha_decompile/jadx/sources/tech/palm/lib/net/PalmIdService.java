package tech.palm.lib.net;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.jb0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class PalmIdService extends Service {
    @Override
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str;
        printWriter.println("\n palmID === ");
        printWriter.println("\n------------------------------------------------------");
        int i = 0;
        while (i < strArr.length && (str = strArr[i]) != null && str.length() > 0 && str.charAt(0) == '-') {
            i++;
            if ("-mode".equals(str) && strArr.length > i) {
                String str2 = strArr[i];
                if ("dev".equals(str2)) {
                    jb0.a = 1;
                    printWriter.println("App is dev");
                } else if ("pre".equals(str2)) {
                    jb0.a = 3;
                    printWriter.println("App is pre");
                } else if ("test".equals(str2)) {
                    jb0.a = 2;
                    printWriter.println("App is test");
                } else {
                    jb0.a = 4;
                    printWriter.println("App is prod");
                }
            }
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
