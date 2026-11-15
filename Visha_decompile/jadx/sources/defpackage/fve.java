package defpackage;

import android.util.Base64OutputStream;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class fve {
    public ByteArrayOutputStream a = new ByteArrayOutputStream(4096);
    public Base64OutputStream b = new Base64OutputStream(this.a, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        try {
            this.b.close();
        } catch (IOException e) {
            int i = zze.zza;
            zzo.zzh("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.a.close();
                string = this.a.toString();
            } catch (IOException e2) {
                int i2 = zze.zza;
                zzo.zzh("HashManager: Unable to convert to Base64.", e2);
                string = "";
            }
            return string;
        } finally {
            this.a = null;
            this.b = null;
        }
    }
}
