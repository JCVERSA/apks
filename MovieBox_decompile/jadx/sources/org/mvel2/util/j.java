package org.mvel2.util;

import java.util.ArrayList;
import java.util.Set;
import java.util.TreeSet;

public class j {

    private char[] f68894a;

    private ArrayList f68895b;

    private Set f68896c;

    class a implements b {
        a() {
        }

        @Override
        public int a(int i10) {
            for (c cVar : j.this.f68895b) {
                if (cVar.d(i10)) {
                    return cVar.b();
                }
            }
            return -1;
        }
    }

    public interface b {
        int a(int i10);
    }

    private static class c implements Comparable {

        private int f68898a;

        private int f68899b;

        private int f68900c;

        c(int i10, int i11, int i12, a aVar) {
            this(i10, i11, i12);
        }

        @Override
        public int compareTo(c cVar) {
            if (cVar.f68898a >= this.f68899b) {
                return 1;
            }
            return cVar.f68899b < this.f68898a ? -1 : 0;
        }

        public int b() {
            return this.f68900c;
        }

        public boolean d(int i10) {
            return i10 >= this.f68898a && i10 <= this.f68899b;
        }

        private c(int i10, int i11, int i12) {
            this.f68898a = i10;
            this.f68899b = i11;
            this.f68900c = i12;
        }
    }

    public j(char[] cArr) {
        this.f68894a = cArr;
    }

    public b b() {
        a aVar;
        this.f68895b = new ArrayList();
        this.f68896c = new TreeSet();
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            char[] cArr = this.f68894a;
            aVar = null;
            if (i10 >= cArr.length) {
                break;
            }
            if (cArr[i10] == '\n') {
                this.f68896c.add(Integer.valueOf(i11));
                this.f68895b.add(new c(i12, i10, i11, aVar));
                i12 = i10 + 1;
                i11++;
            }
            i10++;
        }
        if (i10 > i12) {
            this.f68896c.add(Integer.valueOf(i11));
            this.f68895b.add(new c(i12, i10, i11, aVar));
        }
        return new a();
    }
}
