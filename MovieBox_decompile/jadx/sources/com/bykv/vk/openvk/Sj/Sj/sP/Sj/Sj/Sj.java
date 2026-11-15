package com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj;

import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import g6.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Sj implements z5.b {

    private String f19561a = "video_reward_full";

    private String f19562b = "video_brand";

    private String f19563c = "video_splash";

    private String f19564d = "video_default";

    private String f19565e = null;

    private String f19566f = null;

    private String f19567g = null;

    private String f19568h = null;

    private String f19569i = null;

    private Set b() {
        HashSet hashSet = new HashSet();
        for (f6.a aVar : f6.a.f60039e.values()) {
            if (aVar != null && aVar.d() != null) {
                TKC tkcD = aVar.d();
                hashSet.add(e6.b.d(tkcD.sP(), tkcD.sef()).getAbsolutePath());
                hashSet.add(e6.b.c(tkcD.sP(), tkcD.sef()).getAbsolutePath());
            }
        }
        for (c cVar : g6.b.f60665a.values()) {
            if (cVar != null && cVar.e() != null) {
                TKC tkcE = cVar.e();
                hashSet.add(e6.b.d(tkcE.sP(), tkcE.sef()).getAbsolutePath());
                hashSet.add(e6.b.c(tkcE.sP(), tkcE.sef()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    private static void c(File[] fileArr, int i10, Set set) {
        if (i10 >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i10) {
                    List listAsList = Arrays.asList(fileArr);
                    Collections.sort(listAsList, new Comparator<File>() {
                        @Override
                        public int compare(File file, File file2) {
                            long jLastModified = file2.lastModified() - file.lastModified();
                            if (jLastModified == 0) {
                                return 0;
                            }
                            return jLastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i10 < listAsList.size()) {
                        File file = (File) listAsList.get(i10);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) listAsList.get(i10)).delete();
                        }
                        i10++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private List d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new z5.a(new File(Sj()).listFiles(), d6.a.f()));
        arrayList.add(new z5.a(new File(sP()).listFiles(), d6.a.g()));
        arrayList.add(new z5.a(new File(a()).listFiles(), d6.a.a()));
        arrayList.add(new z5.a(new File(TKC()).listFiles(), d6.a.b()));
        return arrayList;
    }

    @Override
    public synchronized void EjP() {
        try {
            Set setB = null;
            for (z5.a aVar : d()) {
                File[] fileArrA = aVar.a();
                if (fileArrA != null && fileArrA.length >= aVar.b()) {
                    if (setB == null) {
                        setB = b();
                    }
                    int iB = aVar.b() - 2;
                    if (iB < 0) {
                        iB = 0;
                    }
                    c(aVar.a(), iB, setB);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void Sj(String str) {
        this.f19565e = str;
    }

    @Override
    public String TKC() {
        if (this.f19569i == null) {
            this.f19569i = this.f19565e + File.separator + this.f19564d;
            File file = new File(this.f19569i);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f19569i;
    }

    public String a() {
        if (this.f19567g == null) {
            this.f19567g = this.f19565e + File.separator + this.f19562b;
            File file = new File(this.f19567g);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f19567g;
    }

    @Override
    public String sP() {
        if (this.f19568h == null) {
            this.f19568h = this.f19565e + File.separator + this.f19563c;
            File file = new File(this.f19568h);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f19568h;
    }

    @Override
    public String Sj() {
        if (this.f19566f == null) {
            this.f19566f = this.f19565e + File.separator + this.f19561a;
            File file = new File(this.f19566f);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f19566f;
    }

    @Override
    public long sP(TKC tkc) {
        if (TextUtils.isEmpty(tkc.sP()) || TextUtils.isEmpty(tkc.sef())) {
            return 0L;
        }
        return e6.b.a(tkc.sP(), tkc.sef());
    }

    @Override
    public boolean Sj(TKC tkc) {
        if (TextUtils.isEmpty(tkc.sP()) || TextUtils.isEmpty(tkc.sef())) {
            return false;
        }
        return new File(tkc.sP(), tkc.sef()).exists();
    }
}
