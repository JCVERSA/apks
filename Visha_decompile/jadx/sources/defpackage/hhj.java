package defpackage;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.IMessengerCompat;
import com.google.android.gms.cloudmessaging.zzd;
import java.util.Objects;

public final class hhj {
    public final Messenger a;
    public final zzd b;

    public hhj(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.a = new Messenger(iBinder);
            this.b = null;
        } else {
            if (!Objects.equals(interfaceDescriptor, IMessengerCompat.DESCRIPTOR)) {
                Log.w("MessengerIpcClient", "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor)));
                throw new RemoteException();
            }
            this.b = new zzd(iBinder);
            this.a = null;
        }
    }

    public final void a(Message message) throws RemoteException {
        Messenger messenger = this.a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzd zzdVar = this.b;
        if (zzdVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zzdVar.zzb(message);
    }
}
