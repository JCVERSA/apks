package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class r {

    private static final Map f31737c = new HashMap();

    private final Context f31738a;

    private final String f31739b;

    private r(Context context, String str) {
        this.f31738a = context;
        this.f31739b = str;
    }

    public static synchronized r c(Context context, String str) {
        Map map;
        try {
            map = f31737c;
            if (!map.containsKey(str)) {
                map.put(str, new r(context, str));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (r) map.get(str);
    }

    public synchronized Void a() {
        this.f31738a.deleteFile(this.f31739b);
        return null;
    }

    String b() {
        return this.f31739b;
    }

    public synchronized f d() {
        FileInputStream fileInputStreamOpenFileInput;
        Throwable th2;
        try {
            try {
                fileInputStreamOpenFileInput = this.f31738a.openFileInput(this.f31739b);
                try {
                    int iAvailable = fileInputStreamOpenFileInput.available();
                    byte[] bArr = new byte[iAvailable];
                    fileInputStreamOpenFileInput.read(bArr, 0, iAvailable);
                    f fVarB = f.b(new JSONObject(new String(bArr, "UTF-8")));
                    fileInputStreamOpenFileInput.close();
                    return fVarB;
                } catch (FileNotFoundException | JSONException unused) {
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                    return null;
                } catch (Throwable th3) {
                    th2 = th3;
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        } catch (FileNotFoundException | JSONException unused2) {
            fileInputStreamOpenFileInput = null;
        } catch (Throwable th5) {
            fileInputStreamOpenFileInput = null;
            th2 = th5;
        }
    }

    public synchronized Void e(f fVar) {
        FileOutputStream fileOutputStreamOpenFileOutput = this.f31738a.openFileOutput(this.f31739b, 0);
        try {
            fileOutputStreamOpenFileOutput.write(fVar.toString().getBytes("UTF-8"));
            fileOutputStreamOpenFileOutput.close();
        } catch (Throwable th2) {
            fileOutputStreamOpenFileOutput.close();
            throw th2;
        }
        return null;
    }
}
