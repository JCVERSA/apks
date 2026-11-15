package androidx.work;

import android.content.Context;

public abstract class s {

    private static final String f15419a = j.i("WorkerFactory");

    class a extends s {
        a() {
        }

        @Override
        public i a(Context context, String str, WorkerParameters workerParameters) {
            return null;
        }
    }

    public static s c() {
        return new a();
    }

    public abstract i a(Context context, String str, WorkerParameters workerParameters);

    public final i b(Context context, String str, WorkerParameters workerParameters) {
        Class clsAsSubclass;
        i iVarA = a(context, str, workerParameters);
        if (iVarA == null) {
            try {
                clsAsSubclass = Class.forName(str).asSubclass(i.class);
            } catch (Throwable th2) {
                j.e().d(f15419a, "Invalid class: " + str, th2);
                clsAsSubclass = null;
            }
            if (clsAsSubclass != null) {
                try {
                    iVarA = (i) clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th3) {
                    j.e().d(f15419a, "Could not instantiate " + str, th3);
                }
            }
        }
        if (iVarA == null || !iVarA.k()) {
            return iVarA;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
