package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import com.transsion.magicvideo.activities.MultiVideoResolutionSheetDialog;
import com.transsion.magicvideo.data.DownloadMediaItem;
import com.transsion.playercommon.fragments.AlertDialogFragment;

public class nr9 {
    public static volatile nr9 g;
    public a a;
    public DownloadMediaItem b;
    public DialogInterface.OnDismissListener c = null;
    public AlertDialogFragment.d d = null;
    public int[] e;
    public int[] f;

    public interface a {
        boolean a(String str, String str2, String str3, long j, String str4);
    }

    public static nr9 b() {
        if (g == null) {
            synchronized (nr9.class) {
                try {
                    if (g == null) {
                        g = new nr9();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public DownloadMediaItem a() {
        return this.b;
    }

    public a c() {
        return this.a;
    }

    public void d(DownloadMediaItem downloadMediaItem) {
        this.b = downloadMediaItem;
    }

    public void e(a aVar) {
        this.a = aVar;
    }

    public void f(Context context, int[] iArr, int[] iArr2) {
        this.e = iArr;
        this.f = iArr2;
        MultiVideoResolutionSheetDialog.p0(context, iArr);
    }

    public void setDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.c = onDismissListener;
    }

    public void setOnResumeListener(AlertDialogFragment.d dVar) {
        this.d = dVar;
    }
}
