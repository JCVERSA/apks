package com.facebook.biddingkit.logging;

import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

abstract class g {

    private static class c implements d {

        final d f23466a;

        int f23467b;

        c(d dVar, int i10) {
            this.f23466a = dVar;
            this.f23467b = i10;
        }

        @Override
        public void a(String str) {
            if (this.f23467b > 0) {
                this.f23466a.a(str);
                this.f23467b--;
            }
        }

        @Override
        public void flush() {
            this.f23466a.flush();
        }
    }

    private interface d {
        void a(String str);

        void flush();
    }

    private static class e extends Writer {

        final d f23468a;

        char[] f23469b = new char[1024];

        int f23470c;

        e(d dVar) {
            this.f23468a = dVar;
        }

        private void d() {
            this.f23468a.a(new String(this.f23469b, 0, this.f23470c));
            this.f23470c = 0;
        }

        @Override
        public void close() {
            flush();
        }

        @Override
        public void flush() {
            if (this.f23470c > 0) {
                d();
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001a  */
        @Override
        public void write(char[] cArr, int i10, int i11) {
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                char c10 = cArr[i12];
                if (c10 != '\n') {
                    int i13 = this.f23470c;
                    char[] cArr2 = this.f23469b;
                    if (i13 == cArr2.length) {
                        d();
                    } else {
                        cArr2[i13] = c10;
                        this.f23470c = i13 + 1;
                    }
                } else {
                    d();
                }
            }
        }
    }

    public static String a(Throwable th2) {
        return b(th2, 100);
    }

    public static String b(Throwable th2, int i10) {
        if (th2 == null) {
            return "";
        }
        try {
            b bVar = new b();
            d cVar = i10 >= 0 ? new c(bVar, i10) : bVar;
            th2.printStackTrace(new PrintWriter(new e(cVar)));
            cVar.flush();
            return bVar.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    private static class b implements d {

        final Collection f23465a;

        private b() {
            this.f23465a = new ArrayList();
        }

        @Override
        public void a(String str) {
            this.f23465a.add(str);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = this.f23465a.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
                sb2.append('\n');
            }
            return sb2.toString();
        }

        @Override
        public void flush() {
        }
    }
}
