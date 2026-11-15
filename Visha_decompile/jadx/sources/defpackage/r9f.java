package defpackage;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.zzv;

public final class r9f implements DialogInterface.OnClickListener {
    public final String b;
    public final String c;
    public final t9f d;

    public r9f(t9f t9fVar, String str, String str2) {
        this.b = str;
        this.c = str2;
        this.d = t9fVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.d.d.getSystemService("download");
        try {
            String str = this.b;
            String str2 = this.c;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzv.zzq();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.d.c("Could not store picture.");
        }
    }
}
