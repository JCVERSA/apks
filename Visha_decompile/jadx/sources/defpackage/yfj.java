package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.Objects;

public final class yfj implements Handler.Callback {
    public final jhj b;

    public yfj(jhj jhjVar, byte[] bArr) {
        Objects.requireNonNull(jhjVar);
        this.b = jhjVar;
    }

    @Override
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            jhj jhjVar = this.b;
            synchronized (jhjVar.f()) {
                try {
                    sbj sbjVar = (sbj) message.obj;
                    wdj wdjVar = (wdj) jhjVar.f().get(sbjVar);
                    if (wdjVar != null && wdjVar.g()) {
                        if (wdjVar.d()) {
                            wdjVar.a("GmsClientSupervisor");
                        }
                        jhjVar.f().remove(sbjVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        jhj jhjVar2 = this.b;
        synchronized (jhjVar2.f()) {
            try {
                sbj sbjVar2 = (sbj) message.obj;
                wdj wdjVar2 = (wdj) jhjVar2.f().get(sbjVar2);
                if (wdjVar2 != null && wdjVar2.e() == 3) {
                    String strValueOf = String.valueOf(sbjVar2);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(strValueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentNameI = wdjVar2.i();
                    if (componentNameI == null) {
                        componentNameI = sbjVar2.c();
                    }
                    if (componentNameI == null) {
                        String strB = sbjVar2.b();
                        wd8.l(strB);
                        componentNameI = new ComponentName(strB, "unknown");
                    }
                    wdjVar2.onServiceDisconnected(componentNameI);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }
}
