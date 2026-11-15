package com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj;

import android.os.Handler;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.Dq.vS;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public abstract class TKC extends com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a {

    public final File f19610a;

    private final LinkedHashMap f19611b;

    private final ReentrantReadWriteLock.WriteLock f19612c;

    private final Set f19613d;

    private volatile long f19614e;

    private volatile float f19615f;

    private final b f19616g;

    private final Runnable f19617h;

    private final Handler f19618i;

    class AnonymousClass1 implements Runnable {
        final TKC Sj;

        AnonymousClass1(TKC tkc) {
        }

        @Override
        public void run() {
            vS.sP(new Dq("cleanupCmd", 1) {
                @Override
                public void run() {
                    TKC tkc = AnonymousClass1.this.Sj;
                    tkc.k(tkc.f19614e);
                }
            });
        }
    }

    class AnonymousClass2 extends Dq {
        final TKC Sj;

        AnonymousClass2(TKC tkc, String str, int i10) {
            super(str, i10);
        }

        @Override
        public void run() {
            this.Sj.j();
        }
    }

    class AnonymousClass4 extends Dq {
        final TKC Sj;

        AnonymousClass4(TKC tkc, String str, int i10) {
            super(str, i10);
        }

        @Override
        public void run() {
            this.Sj.k(0L);
        }
    }

    public interface a {
        void a(Set set);
    }

    private static final class b {
        abstract boolean a(String str);
    }

    private String f(File file) {
        return file.getName();
    }

    private void i() {
        this.f19618i.removeCallbacks(this.f19617h);
        this.f19618i.postDelayed(this.f19617h, 10000L);
    }

    public void j() {
        this.f19612c.lock();
        try {
            File[] fileArrListFiles = this.f19610a.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                final HashMap map = new HashMap(fileArrListFiles.length);
                ArrayList<File> arrayList = new ArrayList(fileArrListFiles.length);
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        map.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>(this) {
                    final TKC sP;

                    @Override
                    public int compare(File file2, File file3) {
                        long jLongValue = ((Long) map.get(file2)).longValue() - ((Long) map.get(file3)).longValue();
                        if (jLongValue < 0) {
                            return -1;
                        }
                        return jLongValue > 0 ? 1 : 0;
                    }
                });
                for (File file2 : arrayList) {
                    this.f19611b.put(f(file2), file2);
                }
            }
            this.f19612c.unlock();
            i();
        } catch (Throwable th2) {
            this.f19612c.unlock();
            throw th2;
        }
    }

    public void k(long j10) {
        HashSet hashSet;
        final HashSet hashSet2 = new HashSet();
        this.f19612c.lock();
        try {
            Iterator it = this.f19611b.entrySet().iterator();
            long length = 0;
            while (it.hasNext()) {
                length += ((File) ((Map.Entry) it.next()).getValue()).length();
            }
            if (length <= j10) {
                this.f19612c.unlock();
                return;
            }
            long j11 = (long) (j10 * this.f19615f);
            hashSet = new HashSet();
            try {
                for (Map.Entry entry : this.f19611b.entrySet()) {
                    File file = (File) entry.getValue();
                    if (file == null || !file.exists()) {
                        hashSet.add(entry.getKey());
                    } else if (!this.f19616g.a(f(file))) {
                        long length2 = file.length();
                        File file2 = new File(file.getAbsolutePath() + "-tmp");
                        if (file.renameTo(file2)) {
                            hashSet2.add(file2);
                            length -= length2;
                            hashSet.add(entry.getKey());
                        }
                    }
                    if (length <= j11) {
                        break;
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    this.f19611b.remove((String) it2.next());
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            hashSet = null;
        }
        this.f19612c.unlock();
        Iterator it3 = this.f19613d.iterator();
        while (it3.hasNext()) {
            ((a) it3.next()).a(hashSet);
        }
        vS.sP(new Dq(this, "trimSize", 1) {
            final TKC sP;

            @Override
            public void run() {
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    try {
                        ((File) it4.next()).delete();
                    } catch (Throwable unused3) {
                    }
                }
            }
        });
    }

    public abstract void g();
}
