package uu;

import android.text.TextUtils;
import com.transsion.upload.auth.AuthCheckManager;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import vu.d;

public final class c {

    public static final c f73250a = new c();

    private static final Map f73251b = new LinkedHashMap();

    private static b f73252c;

    private static final class a implements com.transsion.upload.auth.a {

        private final String f73253a;

        private final UploadFileType f73254b;

        private final boolean f73255c;

        private final WeakReference f73256d;

        public a(String localFilePath, UploadFileType uploadFileType, boolean z10, WeakReference callbackRef) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(uploadFileType, "uploadFileType");
            Intrinsics.h(callbackRef, "callbackRef");
            this.f73253a = localFilePath;
            this.f73254b = uploadFileType;
            this.f73255c = z10;
            this.f73256d = callbackRef;
        }

        @Override
        public void a(TstTokenEntity tstTokenEntity) {
            uu.a aVar = (uu.a) this.f73256d.get();
            if (aVar != null) {
                if (tstTokenEntity == null) {
                    aVar.c(this.f73253a, "TstTokenEntity is empty", "", null);
                    return;
                }
                vu.a aVarD = c.f73250a.d(tstTokenEntity.getStorage());
                if (aVarD != null) {
                    aVarD.i(tstTokenEntity, this.f73253a, this.f73254b, this.f73255c, (uu.a) this.f73256d.get());
                }
            }
        }

        @Override
        public void onFail(String str) {
            uu.a aVar = (uu.a) this.f73256d.get();
            if (aVar != null) {
                uu.a.C0900a.a(aVar, this.f73253a, "client authorization failed", null, null, 12, null);
            }
        }
    }

    private c() {
    }

    public final vu.a d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map map = f73251b;
        if (!map.containsKey(str)) {
            UploadTstTokenStorageType uploadTstTokenStorageType = UploadTstTokenStorageType.TST_TOKEN_STORAGE_OSS;
            if (Intrinsics.c(str, uploadTstTokenStorageType.getType())) {
                map.put(uploadTstTokenStorageType.getType(), new vu.c());
            } else {
                UploadTstTokenStorageType uploadTstTokenStorageType2 = UploadTstTokenStorageType.TST_TOKEN_STORAGE_S3;
                if (Intrinsics.c(str, uploadTstTokenStorageType2.getType())) {
                    map.put(uploadTstTokenStorageType2.getType(), new d());
                }
            }
        }
        return (vu.a) map.get(str);
    }

    public final void b() {
        Iterator it = f73251b.entrySet().iterator();
        while (it.hasNext()) {
            ((vu.a) ((Map.Entry) it.next()).getValue()).b();
        }
    }

    public final b c() {
        return f73252c;
    }

    public final void e(b config) {
        Intrinsics.h(config, "config");
        f73252c = config;
    }

    public final void f(String localFilePath, UploadFileType uploadFileType, boolean z10, uu.a aVar) {
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        AuthCheckManager.f54559a.f(new a(localFilePath, uploadFileType, z10, new WeakReference(aVar)));
    }
}
