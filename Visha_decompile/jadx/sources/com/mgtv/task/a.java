package com.mgtv.task;

import android.os.AsyncTask;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class a<Param, ResultType> extends AsyncTask<Param, Integer, l<ResultType>> {
    private f<Param, ResultType> a;
    private i b;
    private InterfaceC0186a<Param, ResultType> c;
    private boolean d;
    private j e = new j() {
        @Override
        public void a(Integer... numArr) {
            a.this.publishProgress(numArr);
        }
    };

    public interface InterfaceC0186a<Param, ResultType> {
        void a(f<Param, ResultType> fVar, boolean z);
    }

    public a(@NonNull f<Param, ResultType> fVar, @Nullable i iVar, @NonNull InterfaceC0186a<Param, ResultType> interfaceC0186a, boolean z) {
        this.a = fVar;
        this.b = iVar;
        this.c = interfaceC0186a;
        this.d = z;
    }

    @Override
    @CallSuper
    public void onPostExecute(l<ResultType> lVar) {
        boolean zD;
        i iVar;
        d<ResultType> dVar = this.a.c;
        if (dVar != null) {
            if (lVar == null) {
                dVar.a(null, null, null);
            } else {
                dVar.a(lVar.a, lVar.d, lVar.e);
            }
            zD = dVar.d();
        } else {
            zD = false;
        }
        i iVar2 = this.b;
        if (iVar2 != null) {
            iVar2.setProgress(iVar2.getProgress() + ((this.a.f * 100) / this.b.a()));
        }
        f<Param, ResultType> fVar = this.a.g;
        if (fVar == null && (iVar = this.b) != null) {
            iVar.hide();
        }
        if (!zD && (lVar == null || !lVar.c)) {
            if (fVar != null) {
                this.c.a(fVar, this.d);
            }
        } else {
            i iVar3 = this.b;
            if (iVar3 != null) {
                iVar3.hide();
            }
        }
    }

    @Override
    @CallSuper
    public void onPreExecute() {
        d<ResultType> dVar = this.a.c;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override
    public l<ResultType> doInBackground(Param[] paramArr) {
        ResultType resulttype;
        long j = this.a.e;
        if (j > 0) {
            try {
                Thread.sleep(j);
            } catch (InterruptedException unused) {
                return null;
            }
        }
        n<Param, ResultType> nVar = this.a.a;
        if (nVar == null) {
            return null;
        }
        l<ResultType> lVarA = nVar.a(this.e, paramArr[0]);
        c<Param, ResultType> cVar = this.a.d;
        if (cVar != null && lVarA != null && lVarA.b && (resulttype = lVarA.a) != null && lVarA.e == null) {
            cVar.a(paramArr[0], resulttype);
        }
        d<ResultType> dVar = this.a.c;
        if (dVar != null && lVarA != null) {
            dVar.d(lVarA.a, lVarA.d, lVarA.e);
        }
        return lVarA;
    }

    @Override
    @CallSuper
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
        if (this.b != null) {
            int iIntValue = (numArr[0].intValue() * this.a.f) / this.b.a();
            i iVar = this.b;
            iVar.setProgress(iVar.getProgress() + iIntValue);
        }
    }

    @Override
    @CallSuper
    public void onCancelled(l<ResultType> lVar) {
        i iVar = this.b;
        if (iVar != null) {
            iVar.hide();
        }
        d<ResultType> dVar = this.a.c;
        if (dVar != null) {
            if (lVar == null) {
                dVar.b(null, null, null);
            } else {
                dVar.b(lVar.a, lVar.d, lVar.e);
            }
        }
        a();
    }

    @SafeVarargs
    public final void b(Param... paramArr) {
        onPreExecute();
        l<ResultType> lVarDoInBackground = doInBackground(paramArr);
        if (isCancelled()) {
            onCancelled(lVarDoInBackground);
        } else {
            onPostExecute(lVarDoInBackground);
        }
    }

    private void a() {
        this.b = null;
        this.a.c = null;
    }
}
