package uu;

import com.transsion.upload.bean.UploadTstTokenStorageType;

public interface a {

    public static final class C0900a {
        public static void a(a aVar, String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFailure");
            }
            if ((i10 & 2) != 0) {
                str2 = null;
            }
            if ((i10 & 4) != 0) {
                str3 = null;
            }
            if ((i10 & 8) != 0) {
                uploadTstTokenStorageType = null;
            }
            aVar.c(str, str2, str3, uploadTstTokenStorageType);
        }
    }

    void a(String str, long j10, long j11);

    void b(String str, String str2, String str3);

    void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType);
}
