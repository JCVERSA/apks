package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.a1;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class l0 implements m0 {

    private final androidx.media3.datasource.a.InterfaceC0085a f11280a;

    private final String f11281b;

    private final boolean f11282c;

    private final Map f11283d;

    public l0(String str, boolean z10, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        androidx.media3.common.util.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f11280a = interfaceC0085a;
        this.f11281b = str;
        this.f11282c = z10;
        this.f11283d = new HashMap();
    }

    @Override
    public byte[] a(UUID uuid, b0.a aVar) throws MediaDrmCallbackException {
        String str;
        String strB = aVar.b();
        if (this.f11282c || TextUtils.isEmpty(strB)) {
            strB = this.f11281b;
        }
        if (TextUtils.isEmpty(strB)) {
            w1.h.b bVar = new w1.h.b();
            Uri uri = Uri.EMPTY;
            throw new MediaDrmCallbackException(bVar.i(uri).a(), uri, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = androidx.media3.common.h.f9673e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = androidx.media3.common.h.f9671c.equals(uuid) ? "application/json" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        map.put(HttpHeaders.CONTENT_TYPE, str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f11283d) {
            map.putAll(this.f11283d);
        }
        return x.a(this.f11280a.createDataSource(), strB, aVar.a(), map);
    }

    @Override
    public byte[] b(UUID uuid, b0.d dVar) {
        return x.a(this.f11280a.createDataSource(), dVar.b() + "&signedRequest=" + a1.H(dVar.a()), null, Collections.emptyMap());
    }

    public void c(String str, String str2) {
        androidx.media3.common.util.a.e(str);
        androidx.media3.common.util.a.e(str2);
        synchronized (this.f11283d) {
            this.f11283d.put(str, str2);
        }
    }
}
