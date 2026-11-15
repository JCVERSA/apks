package defpackage;

import android.os.Environment;
import com.transsion.sniffer_load.data.WhatsBookmark;
import java.io.File;

public abstract class yx2 {
    public static final String a;
    public static final String b;
    public static final String c;
    public static File d;
    public static final String e;
    public static File f;
    public static File g;
    public static final String h;
    public static final String i;
    public static File j;
    public static File k;
    public static String l;
    public static File m;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("VishaPlayer");
        String str = File.separator;
        sb.append(str);
        sb.append("Video");
        a = sb.toString();
        String str2 = "VishaPlayer" + str + "Visha";
        b = str2;
        String str3 = "VishaPlayer" + str + "Cover";
        c = str3;
        d = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        String str4 = d.getName() + str + str2 + str;
        e = str4;
        f = new File(d, str2);
        g = new File(d, str3);
        h = f.getAbsolutePath();
        String str5 = "VishaPlayer" + str + "BtDownload";
        i = str5;
        j = new File(d, str5);
        k = new File(f, WhatsBookmark.URL_WHATSAPP);
        l = str4 + "FileTransferReceive" + str;
        m = new File(f, "FileTransferReceive");
    }
}
