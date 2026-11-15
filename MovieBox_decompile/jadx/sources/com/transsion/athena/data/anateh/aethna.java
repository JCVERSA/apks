package com.transsion.athena.data.anateh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.athena.hatnea.anateh;
import com.transsion.athena.hatnea.taaneh;
import com.transsion.ga.i;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class aethna {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile aethna f41540a;

    private Context f41541b;

    private anehat f41542c;

    private String f41543d;

    public interface athena {
        void a(anateh anatehVar);
    }

    private aethna(Context context) {
        try {
            this.f41541b = context;
            this.f41542c = anehat.a(context);
            this.f41543d = context.getFilesDir().getPath();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.a(e10);
        }
    }

    public static aethna a(Context context) {
        if (f41540a == null) {
            synchronized (aethna.class) {
                try {
                    if (f41540a == null) {
                        f41540a = new aethna(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41540a;
    }

    public void b() {
        this.f41542c.a(true);
    }

    public List<AppIdData> c() {
        try {
            return this.f41542c.a(anehat.athena.f41550d);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return null;
        }
    }

    public synchronized void a(long j10, athena athenaVar) {
        try {
            String str = this.f41543d + File.separator + ehanat.f41485k;
            if (new File(str).exists()) {
                for (File file : com.transsion.athena.taaneh.athena.a(str, j10)) {
                    if (!file.getName().contains("upload")) {
                        if (file.getName().startsWith("f_") || file.getName().startsWith("r_")) {
                            File file2 = new File(file.getPath() + "upload" + System.currentTimeMillis());
                            file = !file.renameTo(file2) ? null : file2;
                        }
                    }
                    if (file != null) {
                        athenaVar.a(new taaneh(j10, file, com.transsion.athena.aethna.athena.c().a(j10)));
                    }
                }
            }
            String str2 = this.f41543d + File.separator + ehanat.f41486l;
            if (new File(str2).exists()) {
                try {
                    com.transsion.athena.taaneh.athena.a(this.f41541b, str2);
                } catch (Exception e10) {
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void a(enatha<SparseArray<com.transsion.athena.config.data.model.athena>> enathaVar) {
        try {
            this.f41542c.a(enathaVar);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a(com.transsion.athena.config.data.model.athena athenaVar, boolean z10) {
        try {
            this.f41542c.a(anehat.athena.f41550d, athenaVar, z10);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public void a(AppIdData appIdData) {
        try {
            this.f41542c.a(anehat.athena.f41550d, appIdData);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a(List<AppIdData> list) {
        try {
            this.f41542c.a(anehat.athena.f41550d, list);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public int a(Track track) {
        int i10 = 1;
        if (track.getTrackFlag() != 1 && track.getTrackFlag() != 2) {
            i10 = 0;
        }
        try {
            return this.f41542c.a(anehat.athena.f41547a, track, i10);
        } catch (com.transsion.ga.anateh e10) {
            int i11 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return 0;
        }
    }

    public int a(ArrayList<Track> arrayList, enatha<LongSparseArray<Integer>> enathaVar) {
        try {
            return this.f41542c.b(anehat.athena.f41547a, arrayList, enathaVar);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return 0;
        }
    }

    public synchronized com.transsion.athena.data.anehat a(long j10, long j11, String str, int i10, int i11) {
        try {
        } catch (com.transsion.ga.anateh e10) {
            int i12 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return null;
        }
        return this.f41542c.a(anehat.athena.f41547a, j10, j11, str, i10, i11);
    }

    public synchronized void a(List<Long> list, boolean z10, enatha<String> enathaVar) {
        if (z10) {
            try {
                String str = this.f41543d + File.separator + ehanat.f41485k;
                if (new File(str).exists()) {
                    for (File file : com.transsion.athena.taaneh.athena.a(str)) {
                        String name = file.getName();
                        if (!name.startsWith("f_") && !name.startsWith("r_")) {
                            com.transsion.athena.taaneh.aethna.a("cleanupEvents deleteFile " + name + " " + com.transsion.athena.taaneh.athena.b(this.f41541b, file));
                        } else if (list.contains(Long.valueOf(Long.parseLong(name.substring(2, name.indexOf(45)))))) {
                            com.transsion.athena.taaneh.aethna.a("cleanupEvents deleteFile " + name + " " + com.transsion.athena.taaneh.athena.b(this.f41541b, file));
                        }
                    }
                }
                String str2 = this.f41543d + File.separator + ehanat.f41486l;
                if (new File(str2).exists()) {
                    try {
                        com.transsion.athena.taaneh.athena.a(this.f41541b, str2);
                    } catch (Exception e10) {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        try {
            this.f41542c.a(anehat.athena.f41547a, list, enathaVar);
        } catch (com.transsion.ga.anateh e11) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e11);
        }
    }

    public int a(int i10, enatha<String> enathaVar) {
        try {
            return this.f41542c.a(anehat.athena.f41547a, i10, enathaVar);
        } catch (com.transsion.ga.anateh e10) {
            int i11 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return -1;
        }
    }

    public synchronized boolean a(int i10) {
        try {
        } catch (com.transsion.ga.anateh e10) {
            int i11 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
            return false;
        }
        return this.f41542c.a(anehat.athena.f41547a, i10);
    }

    public synchronized void a(List<AppIdData> list, int i10) {
        try {
            this.f41542c.a(anehat.athena.f41550d, list, i10);
        } catch (com.transsion.ga.anateh e10) {
            int i11 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a(List<AppIdData> list, String str) {
        try {
            this.f41542c.a(anehat.athena.f41547a, list, str);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a(String str, long j10) {
        try {
            this.f41542c.a(anehat.athena.f41547a, str, j10);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a(List<AppIdData> list, long j10, String str, enatha<SparseArray<com.transsion.athena.data.enatha>> enathaVar) {
        try {
            this.f41542c.a(anehat.athena.f41547a, list, j10, str, enathaVar);
        } catch (com.transsion.ga.anateh e10) {
            int i10 = com.transsion.ga.anateh.f43005a;
            i.a().c(e10);
        }
    }

    public synchronized void a() {
        this.f41542c.a();
        try {
            Context context = this.f41541b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f41543d);
            String str = File.separator;
            sb2.append(str);
            sb2.append(ehanat.f41485k);
            com.transsion.athena.taaneh.athena.a(context, sb2.toString());
            com.transsion.athena.taaneh.athena.a(this.f41541b, this.f41543d + str + ehanat.f41486l);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }
}
