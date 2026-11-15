package h3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.List;

public final class d {
    public byte[] a(List list, long j10) {
        ArrayList<? extends Parcelable> arrayListB = androidx.media3.common.util.h.b(list, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return ((u1.a) obj).d();
            }
        });
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListB);
        bundle.putLong(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, j10);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
