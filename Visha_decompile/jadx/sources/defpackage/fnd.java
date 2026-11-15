package defpackage;

import android.os.AsyncTask;
import com.mgadplus.mgutil.SourceKitLogger;

public abstract class fnd extends AsyncTask {
    private a a;
    private b b;
    private String c;
    private Exception d = null;
    private int e;

    public interface a {
        void a();

        void a(Exception exc);

        void a(Object obj);

        void a(Object... objArr);

        void b();
    }

    public interface b {
        Object a(Object... objArr);
    }

    public fnd(a aVar, b bVar, String str, int i) {
        this.a = aVar;
        this.b = bVar;
        this.c = str;
        this.e = i;
    }

    public void a(a aVar, b bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    @Override
    public Object doInBackground(Object... objArr) {
        b bVar;
        if (isCancelled() || (bVar = this.b) == null) {
            return null;
        }
        try {
            return bVar.a(objArr);
        } catch (Exception e) {
            this.d = e;
            return null;
        }
    }

    @Override
    public void onCancelled() {
        super.onCancelled();
        a aVar = this.a;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        a aVar = this.a;
        if (aVar != null) {
            Exception exc = this.d;
            if (exc == null) {
                aVar.a(obj);
            } else {
                aVar.a(exc);
                this.d = null;
            }
        }
    }

    @Override
    public void onPreExecute() {
        super.onPreExecute();
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override
    public void onProgressUpdate(Object... objArr) {
        super.onProgressUpdate(objArr);
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(objArr);
        }
    }

    public void a(boolean z) {
        SourceKitLogger.a("mgmi", "cancelSafer");
        try {
            if (isCancelled()) {
                return;
            }
            super.cancel(z);
        } catch (Exception unused) {
        }
    }

    public void a(Object... objArr) {
        if (this.e == 1) {
            executeOnExecutor(i4d.a().c(), objArr);
        } else {
            execute(objArr);
        }
    }
}
