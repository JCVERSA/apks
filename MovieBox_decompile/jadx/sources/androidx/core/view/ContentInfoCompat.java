package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import com.cloud.tmc.integration.event.EventConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;
    private final f mCompat;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    private static final class a {
        public static Pair a(ContentInfo contentInfo, final Predicate predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean zTest = predicate.test(clip.getItemAt(0));
                ContentInfo contentInfo2 = zTest ? contentInfo : null;
                if (zTest) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair<ClipData, ClipData> pairPartition = ContentInfoCompat.partition(clip, new androidx.core.util.j() {
                @Override
                public final boolean a(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (pairPartition.first == null) {
                return Pair.create(null, contentInfo);
            }
            return pairPartition.second == null ? Pair.create(contentInfo, null) : Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) pairPartition.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) pairPartition.second).build());
        }
    }

    private interface c {
        void a(int i10);

        void b(Uri uri);

        ContentInfoCompat build();

        void c(ClipData clipData);

        void d(int i10);

        void setExtras(Bundle bundle);
    }

    private static final class e implements f {

        private final ContentInfo f7974a;

        e(ContentInfo contentInfo) {
            this.f7974a = androidx.core.view.a.a(androidx.core.util.i.g(contentInfo));
        }

        @Override
        public int a() {
            return this.f7974a.getSource();
        }

        @Override
        public Uri b() {
            return this.f7974a.getLinkUri();
        }

        @Override
        public ContentInfo c() {
            return this.f7974a;
        }

        @Override
        public ClipData d() {
            return this.f7974a.getClip();
        }

        @Override
        public Bundle getExtras() {
            return this.f7974a.getExtras();
        }

        @Override
        public int getFlags() {
            return this.f7974a.getFlags();
        }

        public String toString() {
            return "ContentInfoCompat{" + this.f7974a + "}";
        }
    }

    private interface f {
        int a();

        Uri b();

        ContentInfo c();

        ClipData d();

        Bundle getExtras();

        int getFlags();
    }

    private static final class g implements f {

        private final ClipData f7975a;

        private final int f7976b;

        private final int f7977c;

        private final Uri f7978d;

        private final Bundle f7979e;

        g(d dVar) {
            this.f7975a = (ClipData) androidx.core.util.i.g(dVar.f7969a);
            this.f7976b = androidx.core.util.i.c(dVar.f7970b, 0, 5, EventConstants.KEY_SOURCE);
            this.f7977c = androidx.core.util.i.f(dVar.f7971c, 1);
            this.f7978d = dVar.f7972d;
            this.f7979e = dVar.f7973e;
        }

        @Override
        public int a() {
            return this.f7976b;
        }

        @Override
        public Uri b() {
            return this.f7978d;
        }

        @Override
        public ContentInfo c() {
            return null;
        }

        @Override
        public ClipData d() {
            return this.f7975a;
        }

        @Override
        public Bundle getExtras() {
            return this.f7979e;
        }

        @Override
        public int getFlags() {
            return this.f7977c;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ContentInfoCompat{clip=");
            sb2.append(this.f7975a.getDescription());
            sb2.append(", source=");
            sb2.append(ContentInfoCompat.sourceToString(this.f7976b));
            sb2.append(", flags=");
            sb2.append(ContentInfoCompat.flagsToString(this.f7977c));
            if (this.f7978d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f7978d.toString().length() + ")";
            }
            sb2.append(str);
            sb2.append(this.f7979e != null ? ", hasExtras" : "");
            sb2.append("}");
            return sb2.toString();
        }
    }

    ContentInfoCompat(f fVar) {
        this.mCompat = fVar;
    }

    static ClipData buildClipData(ClipDescription clipDescription, List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i10 = 1; i10 < list.size(); i10++) {
            clipData.addItem(list.get(i10));
        }
        return clipData;
    }

    static String flagsToString(int i10) {
        return (i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10);
    }

    static String sourceToString(int i10) {
        if (i10 == 0) {
            return "SOURCE_APP";
        }
        if (i10 == 1) {
            return "SOURCE_CLIPBOARD";
        }
        if (i10 == 2) {
            return "SOURCE_INPUT_METHOD";
        }
        if (i10 == 3) {
            return "SOURCE_DRAG_AND_DROP";
        }
        if (i10 != 4) {
            return i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT";
        }
        return "SOURCE_AUTOFILL";
    }

    public static ContentInfoCompat toContentInfoCompat(ContentInfo contentInfo) {
        return new ContentInfoCompat(new e(contentInfo));
    }

    public ClipData getClip() {
        return this.mCompat.d();
    }

    public Bundle getExtras() {
        return this.mCompat.getExtras();
    }

    public int getFlags() {
        return this.mCompat.getFlags();
    }

    public Uri getLinkUri() {
        return this.mCompat.b();
    }

    public int getSource() {
        return this.mCompat.a();
    }

    public Pair<ContentInfoCompat, ContentInfoCompat> partition(androidx.core.util.j jVar) {
        ClipData clipDataD = this.mCompat.d();
        if (clipDataD.getItemCount() == 1) {
            boolean zA = jVar.a(clipDataD.getItemAt(0));
            return Pair.create(zA ? this : null, zA ? null : this);
        }
        Pair<ClipData, ClipData> pairPartition = partition(clipDataD, jVar);
        if (pairPartition.first == null) {
            return Pair.create(null, this);
        }
        return pairPartition.second == null ? Pair.create(this, null) : Pair.create(new Builder(this).setClip((ClipData) pairPartition.first).build(), new Builder(this).setClip((ClipData) pairPartition.second).build());
    }

    public ContentInfo toContentInfo() {
        ContentInfo contentInfoC = this.mCompat.c();
        Objects.requireNonNull(contentInfoC);
        return androidx.core.view.a.a(contentInfoC);
    }

    public String toString() {
        return this.mCompat.toString();
    }

    private static final class b implements c {

        private final ContentInfo.Builder f7968a;

        b(ClipData clipData, int i10) {
            this.f7968a = i.a(clipData, i10);
        }

        @Override
        public void a(int i10) {
            this.f7968a.setSource(i10);
        }

        @Override
        public void b(Uri uri) {
            this.f7968a.setLinkUri(uri);
        }

        @Override
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new e(this.f7968a.build()));
        }

        @Override
        public void c(ClipData clipData) {
            this.f7968a.setClip(clipData);
        }

        @Override
        public void d(int i10) {
            this.f7968a.setFlags(i10);
        }

        @Override
        public void setExtras(Bundle bundle) {
            this.f7968a.setExtras(bundle);
        }

        b(ContentInfoCompat contentInfoCompat) {
            k.a();
            this.f7968a = j.a(contentInfoCompat.toContentInfo());
        }
    }

    private static final class d implements c {

        ClipData f7969a;

        int f7970b;

        int f7971c;

        Uri f7972d;

        Bundle f7973e;

        d(ClipData clipData, int i10) {
            this.f7969a = clipData;
            this.f7970b = i10;
        }

        @Override
        public void a(int i10) {
            this.f7970b = i10;
        }

        @Override
        public void b(Uri uri) {
            this.f7972d = uri;
        }

        @Override
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new g(this));
        }

        @Override
        public void c(ClipData clipData) {
            this.f7969a = clipData;
        }

        @Override
        public void d(int i10) {
            this.f7971c = i10;
        }

        @Override
        public void setExtras(Bundle bundle) {
            this.f7973e = bundle;
        }

        d(ContentInfoCompat contentInfoCompat) {
            this.f7969a = contentInfoCompat.getClip();
            this.f7970b = contentInfoCompat.getSource();
            this.f7971c = contentInfoCompat.getFlags();
            this.f7972d = contentInfoCompat.getLinkUri();
            this.f7973e = contentInfoCompat.getExtras();
        }
    }

    public static final class Builder {
        private final c mBuilderCompat;

        public Builder(ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new b(contentInfoCompat);
            } else {
                this.mBuilderCompat = new d(contentInfoCompat);
            }
        }

        public ContentInfoCompat build() {
            return this.mBuilderCompat.build();
        }

        public Builder setClip(ClipData clipData) {
            this.mBuilderCompat.c(clipData);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mBuilderCompat.setExtras(bundle);
            return this;
        }

        public Builder setFlags(int i10) {
            this.mBuilderCompat.d(i10);
            return this;
        }

        public Builder setLinkUri(Uri uri) {
            this.mBuilderCompat.b(uri);
            return this;
        }

        public Builder setSource(int i10) {
            this.mBuilderCompat.a(i10);
            return this;
        }

        public Builder(ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new b(clipData, i10);
            } else {
                this.mBuilderCompat = new d(clipData, i10);
            }
        }
    }

    static Pair<ClipData, ClipData> partition(ClipData clipData, androidx.core.util.j jVar) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
            ClipData.Item itemAt = clipData.getItemAt(i10);
            if (jVar.a(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        if (arrayList2 == null) {
            return Pair.create(clipData, null);
        }
        return Pair.create(buildClipData(clipData.getDescription(), arrayList), buildClipData(clipData.getDescription(), arrayList2));
    }

    public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, Predicate<ClipData.Item> predicate) {
        return a.a(contentInfo, predicate);
    }
}
