package com.mgmi.ads.api.e;

import java.util.ArrayList;

public class l {
    public static String a = "FULLSCREEN";
    public static String b = "HARLFSCREEN";
    private static l d;
    private ArrayList<a> c = new ArrayList<>();

    public interface a {
        void a(String str);
    }

    private l() {
    }

    public static l a() {
        if (d == null) {
            synchronized (l.class) {
                try {
                    if (d == null) {
                        d = new l();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public void b(a aVar) {
        try {
            ArrayList<a> arrayList = this.c;
            if (arrayList == null || arrayList.size() <= 0 || !this.c.contains(aVar)) {
                return;
            }
            this.c.remove(aVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(a aVar) {
        try {
            ArrayList<a> arrayList = this.c;
            if ((!arrayList.contains(aVar)) && (arrayList != null)) {
                this.c.add(aVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str) {
        ArrayList<a> arrayList = this.c;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        try {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                this.c.get(i).a(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
