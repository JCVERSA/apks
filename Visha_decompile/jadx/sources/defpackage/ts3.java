package defpackage;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import com.transsion.dbdata.beans.media.MediaItem;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class ts3 {
    public static final ts3 a = new ts3();

    public static final void f(Context context, final rc7 rc7Var) {
        y45.j(rc7Var, "emitter");
        List listC = a.c();
        if (!listC.isEmpty()) {
            String[] strArr = (String[]) listC.toArray(new String[0]);
            final AtomicInteger atomicInteger = new AtomicInteger(strArr.length);
            MediaScannerConnection.scanFile(context, strArr, null, new MediaScannerConnection.OnScanCompletedListener() {
                @Override
                public final void onScanCompleted(String str, Uri uri) {
                    ts3.g(atomicInteger, rc7Var, str, uri);
                }
            });
        } else {
            if (rc7Var.isDisposed()) {
                return;
            }
            rc7Var.onNext(zfb.a);
            rc7Var.onComplete();
        }
    }

    public static final void g(AtomicInteger atomicInteger, rc7 rc7Var, String str, Uri uri) {
        if (atomicInteger.decrementAndGet() > 0 || rc7Var.isDisposed()) {
            return;
        }
        rc7Var.onNext(zfb.a);
        rc7Var.onComplete();
    }

    public final List c() {
        File file = yx2.m;
        y45.i(file, "FILE_TRANS_FILE");
        if (!file.exists() || !file.isDirectory()) {
            return y71.k();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                arrayList.add(file2);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((File) it.next()).getAbsolutePath());
        }
        return arrayList2;
    }

    public final void d(Iterable iterable) {
        String str;
        y45.j(iterable, "items");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            if (!mediaItem.isTimeItem && (str = mediaItem.data) != null && (mediaItem.size <= 0 || mediaItem.dateModified <= 0)) {
                File file = new File(str);
                if (file.exists() && file.isFile()) {
                    if (mediaItem.size <= 0) {
                        mediaItem.size = file.length();
                    }
                    if (mediaItem.dateModified <= 0) {
                        mediaItem.dateModified = file.lastModified() / ((long) 1000);
                    }
                }
            }
        }
    }

    public final mc7 e(Context context) {
        y45.j(context, "context");
        final Context applicationContext = context.getApplicationContext();
        mc7 mc7VarH = mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                ts3.f(applicationContext, rc7Var);
            }
        });
        y45.i(mc7VarH, "create(...)");
        return mc7VarH;
    }
}
