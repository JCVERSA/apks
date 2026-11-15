package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.StreamKey;
import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class d extends b2.d {

    public static final d f11620n = new d("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    public final List f11621d;

    public final List f11622e;

    public final List f11623f;

    public final List f11624g;

    public final List f11625h;

    public final List f11626i;

    public final r f11627j;

    public final List f11628k;

    public final Map f11629l;

    public final List f11630m;

    public static final class a {

        public final Uri f11631a;

        public final r f11632b;

        public final String f11633c;

        public final String f11634d;

        public a(Uri uri, r rVar, String str, String str2) {
            this.f11631a = uri;
            this.f11632b = rVar;
            this.f11633c = str;
            this.f11634d = str2;
        }
    }

    public static final class b {

        public final Uri f11635a;

        public final r f11636b;

        public final String f11637c;

        public final String f11638d;

        public final String f11639e;

        public final String f11640f;

        public b(Uri uri, r rVar, String str, String str2, String str3, String str4) {
            this.f11635a = uri;
            this.f11636b = rVar;
            this.f11637c = str;
            this.f11638d = str2;
            this.f11639e = str3;
            this.f11640f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new r.b().f0("0").U(MimeTypes.APPLICATION_M3U8).N(), null, null, null, null);
        }

        public b a(r rVar) {
            return new b(this.f11635a, rVar, this.f11637c, this.f11638d, this.f11639e, this.f11640f);
        }
    }

    public d(String str, List list, List list2, List list3, List list4, List list5, List list6, r rVar, List list7, boolean z10, Map map, List list8) {
        super(str, list, z10);
        this.f11621d = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.f11622e = Collections.unmodifiableList(list2);
        this.f11623f = Collections.unmodifiableList(list3);
        this.f11624g = Collections.unmodifiableList(list4);
        this.f11625h = Collections.unmodifiableList(list5);
        this.f11626i = Collections.unmodifiableList(list6);
        this.f11627j = rVar;
        this.f11628k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f11629l = Collections.unmodifiableMap(map);
        this.f11630m = Collections.unmodifiableList(list8);
    }

    private static void a(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((a) list.get(i10)).f11631a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    private static List c(List list, int i10, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            for (int i12 = 0; i12 < list2.size(); i12++) {
                StreamKey streamKey = (StreamKey) list2.get(i12);
                if (streamKey.groupIndex == i10 && streamKey.streamIndex == i11) {
                    arrayList.add(obj);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static d d(String str) {
        return new d("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List e(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((b) list.get(i10)).f11635a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list2, arrayList);
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        return arrayList;
    }

    @Override
    public d copy(List list) {
        return new d(this.f15504a, this.f15505b, c(this.f11622e, 0, list), Collections.emptyList(), c(this.f11624g, 1, list), c(this.f11625h, 2, list), Collections.emptyList(), this.f11627j, this.f11628k, this.f15506c, this.f11629l, this.f11630m);
    }
}
