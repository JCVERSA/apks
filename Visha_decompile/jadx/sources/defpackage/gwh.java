package defpackage;

import android.os.AsyncTask;

public abstract class gwh extends AsyncTask {
    public hwh a;
    public final dwh b;

    public gwh(dwh dwhVar) {
        this.b = dwhVar;
    }

    @Override
    public void onPostExecute(String str) {
        hwh hwhVar = this.a;
        if (hwhVar != null) {
            hwhVar.a(this);
        }
    }

    public final void b(hwh hwhVar) {
        this.a = hwhVar;
    }
}
