package com.transsion.dbdata.source.data.ktx;

import com.lzy.okgo.model.Progress;
import defpackage.g1a;
import defpackage.ge6;
import defpackage.j1a;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u001a\u001a\u0010\u0007\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¨\u0006\b"}, d2 = {"isValidVideoFilePath", "", Progress.FILE_PATH, "", "checkFileExist", "checkFileSuffix", "isBucketCheck", "isValidAudioFilePath", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FileValidExtKt {
    public static final boolean isValidAudioFilePath(String str, boolean z) {
        return ge6.p(str, z);
    }

    public static final boolean isValidVideoFilePath(String str, boolean z, boolean z2, boolean z3) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (z2 && !ge6.a.f(str, true)) {
            return false;
        }
        if (z3 && j1a.X(str, "visha_hls_", false, 2, null) && g1a.C(str, ".ts", true)) {
            return false;
        }
        return ge6.p(str, z);
    }
}
