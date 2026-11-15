package h3;

import android.os.Bundle;
import android.os.Parcel;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;

public final class b {
    public e a(long j10, byte[] bArr, int i10, int i11) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, i10, i11);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return new e(androidx.media3.common.util.h.a(new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return u1.a.b((Bundle) obj);
            }
        }, (ArrayList) androidx.media3.common.util.a.e(bundle.getParcelableArrayList("c"))), j10, bundle.getLong(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D));
    }
}
