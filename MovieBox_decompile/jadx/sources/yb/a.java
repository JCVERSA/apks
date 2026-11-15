package yb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
import xb.g;

public class a {

    private final File f76209a;

    public a(g gVar) {
        this.f76209a = gVar.g("com.crashlytics.settings.json");
    }

    private File a() {
        return this.f76209a;
    }

    public JSONObject b() throws Throwable {
        Throwable th2;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        qb.g.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File fileA = a();
                if (fileA.exists()) {
                    fileInputStream = new FileInputStream(fileA);
                    try {
                        jSONObject = new JSONObject(CommonUtils.A(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e10) {
                        e = e10;
                        qb.g.f().e("Failed to fetch cached settings", e);
                        CommonUtils.f(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    qb.g.f().i("Settings file does not exist.");
                    jSONObject = null;
                }
                CommonUtils.f(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(null, "Error while closing settings cache file.");
                throw th2;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            CommonUtils.f(null, "Error while closing settings cache file.");
            throw th2;
        }
    }

    public void c(long j10, JSONObject jSONObject) throws Throwable {
        qb.g.f().i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter = null;
            try {
                try {
                    jSONObject.put("expires_at", j10);
                    FileWriter fileWriter2 = new FileWriter(a());
                    try {
                        fileWriter2.write(jSONObject.toString());
                        fileWriter2.flush();
                        CommonUtils.f(fileWriter2, "Failed to close settings writer.");
                    } catch (Exception e10) {
                        e = e10;
                        fileWriter = fileWriter2;
                        qb.g.f().e("Failed to cache settings", e);
                        CommonUtils.f(fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th2) {
                        th = th2;
                        fileWriter = fileWriter2;
                        CommonUtils.f(fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
    }
}
