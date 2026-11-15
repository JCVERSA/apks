package com.mgadplus.d;

import android.os.AsyncTask;
import defpackage.a9d;
import defpackage.cgd;
import defpackage.w5d;
import java.util.concurrent.Executor;

public class c extends AsyncTask {
    public w5d a;
    public b b;

    public class a implements com.mgadplus.d.b.a {
        public a() {
        }

        @Override
        public void a(int i) {
            c.this.publishProgress(Integer.valueOf(i));
        }
    }

    public interface b {
        void a();
    }

    @Override
    public cgd doInBackground(Object... objArr) {
        com.mgadplus.d.b bVar;
        w5d w5dVar = this.a;
        if (w5dVar == null || (bVar = w5dVar.a) == null) {
            return null;
        }
        cgd cgdVarA = bVar.a(w5dVar.b, new a());
        a9d a9dVar = this.a.c;
        if (a9dVar != null) {
            a9dVar.c(cgdVarA);
        }
        return cgdVarA;
    }

    @Override
    public void onPostExecute(cgd cgdVar) {
        a9d a9dVar;
        w5d w5dVar = this.a;
        if (w5dVar != null && (a9dVar = w5dVar.c) != null) {
            a9dVar.a(cgdVar);
        }
        b bVar = this.b;
        if (bVar != null) {
            bVar.a();
            this.b = null;
        }
    }

    public void d(Executor executor, w5d w5dVar, b bVar) {
        this.a = w5dVar;
        this.b = bVar;
        executeOnExecutor(executor, new Object[0]);
    }

    @Override
    public void onProgressUpdate(Integer... numArr) {
        a9d a9dVar;
        w5d w5dVar = this.a;
        if (w5dVar == null || (a9dVar = w5dVar.c) == null) {
            return;
        }
        a9dVar.a(numArr);
    }

    @Override
    public void onCancelled(cgd cgdVar) {
        w5d w5dVar = this.a;
        if (w5dVar != null) {
            com.mgadplus.d.b bVar = w5dVar.a;
            if (bVar != null) {
                bVar.a();
            }
            a9d a9dVar = this.a.c;
            if (a9dVar != null) {
                a9dVar.d(cgdVar);
            }
            this.a.c = null;
        }
    }

    @Override
    public void onPreExecute() {
        a9d a9dVar;
        w5d w5dVar = this.a;
        if (w5dVar == null || (a9dVar = w5dVar.c) == null) {
            return;
        }
        a9dVar.a();
    }
}
