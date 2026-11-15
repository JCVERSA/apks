package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.b;
import defpackage.wd8;

public abstract class RemoteCreator {
    public final String a;
    public Object b;

    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(@NonNull String str) {
            super(str);
        }

        public RemoteCreatorException(@NonNull String str, @NonNull Throwable th) {
            super(str, th);
        }
    }

    public RemoteCreator(String str) {
        this.a = str;
    }

    public abstract Object a(IBinder iBinder);

    public final Object b(Context context) throws RemoteCreatorException {
        if (this.b == null) {
            wd8.l(context);
            Context contextE = b.e(context);
            if (contextE == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.b = a((IBinder) contextE.getClassLoader().loadClass(this.a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException("Could not instantiate creator.", e3);
            }
        }
        return this.b;
    }
}
