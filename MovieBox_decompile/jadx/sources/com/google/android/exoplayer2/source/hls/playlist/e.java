package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class e extends aa.d {

    public static final e f25507n = new e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    public final List f25508d;

    public final List f25509e;

    public final List f25510f;

    public final List f25511g;

    public final List f25512h;

    public final List f25513i;

    public final p1 f25514j;

    public final List f25515k;

    public final Map f25516l;

    public final List f25517m;

    public static final class a {

        public final Uri f25518a;

        public final p1 f25519b;

        public final String f25520c;

        public final String f25521d;

        public a(Uri uri, p1 p1Var, String str, String str2) {
            this.f25518a = uri;
            this.f25519b = p1Var;
            this.f25520c = str;
            this.f25521d = str2;
        }
    }

    public static final class b {

        public final Uri f25522a;

        public final p1 f25523b;

        public final String f25524c;

        public final String f25525d;

        public final String f25526e;

        public final String f25527f;

        public b(Uri uri, p1 p1Var, String str, String str2, String str3, String str4) {
            this.f25522a = uri;
            this.f25523b = p1Var;
            this.f25524c = str;
            this.f25525d = str2;
            this.f25526e = str3;
            this.f25527f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new p1.b().S("0").K(MimeTypes.APPLICATION_M3U8).E(), null, null, null, null);
        }

        public b a(p1 p1Var) {
            return new b(this.f25522a, p1Var, this.f25524c, this.f25525d, this.f25526e, this.f25527f);
        }
    }

    public e(String str, List list, List list2, List list3, List list4, List list5, List list6, p1 p1Var, List list7, boolean z10, Map map, List list8) {
        super(str, list, z10);
        this.f25508d = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.f25509e = Collections.unmodifiableList(list2);
        this.f25510f = Collections.unmodifiableList(list3);
        this.f25511g = Collections.unmodifiableList(list4);
        this.f25512h = Collections.unmodifiableList(list5);
        this.f25513i = Collections.unmodifiableList(list6);
        this.f25514j = p1Var;
        this.f25515k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f25516l = Collections.unmodifiableMap(map);
        this.f25517m = Collections.unmodifiableList(list8);
    }

    private static void a(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((a) list.get(i10)).f25518a;
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

    public static e d(String str) {
        return new e("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List e(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((b) list.get(i10)).f25522a;
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
    public e copy(List list) {
        return new e(this.f260a, this.f261b, c(this.f25509e, 0, list), Collections.emptyList(), c(this.f25511g, 1, list), c(this.f25512h, 2, list), Collections.emptyList(), this.f25514j, this.f25515k, this.f262c, this.f25516l, this.f25517m);
    }
}
