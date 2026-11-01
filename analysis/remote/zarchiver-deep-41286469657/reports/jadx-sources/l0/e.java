package l0;

import android.content.ContentProviderClient;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import h0.h;
import java.io.FileOutputStream;
import java.io.IOException;

public final class e extends FileOutputStream {

    public final ContentProviderClient f1202a;

    public final ParcelFileDescriptor f1203b;

    public final h f1204c;

    public e(ContentProviderClient contentProviderClient, h hVar, ParcelFileDescriptor parcelFileDescriptor) {
        super(parcelFileDescriptor.getFileDescriptor());
        this.f1202a = contentProviderClient;
        this.f1203b = parcelFileDescriptor;
        this.f1204c = hVar;
    }

    @Override
    public final void close() throws IOException {
        ContentProviderClient contentProviderClient = this.f1202a;
        String[] strArr = c.f1180a;
        h hVar = this.f1204c;
        boolean z2 = false;
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", c.h(hVar));
            Bundle bundleCall = contentProviderClient.call("flush", null, bundle);
            if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                z2 = true;
            }
        } catch (Exception unused) {
        }
        this.f1203b.close();
        super.close();
        if (Build.VERSION.SDK_INT >= 24) {
            contentProviderClient.close();
        } else {
            contentProviderClient.release();
        }
        if (!z2) {
            throw new IOException("PUT file error!");
        }
    }

    @Override
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        try {
            super.write(bArr, i2, i3);
        } catch (IOException e2) {
            String strG = c.g(this.f1204c);
            if (strG == null) {
                throw e2;
            }
            throw new IOException(strG);
        }
    }
}
