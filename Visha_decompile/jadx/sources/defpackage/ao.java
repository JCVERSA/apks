package defpackage;

import android.net.Uri;
import androidx.p004lifecycle.LiveData;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListMediaItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ao implements du4 {
    public static final a d = new a(null);
    public static final yi5 e = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return ao.i0();
        }
    });
    public final yi5 a = b.a(new c74() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(ao.u0());
        }
    });
    public final yi5 b;
    public final yi5 c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ao a() {
            return b();
        }

        public final ao b() {
            return (ao) ao.e.getValue();
        }

        public a() {
        }
    }

    public ao() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.b = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return ao.g0();
            }
        });
        this.c = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return ao.h0();
            }
        });
    }

    public static final ao U() {
        return d.a();
    }

    public static final wj5 g0() {
        return wj5.a;
    }

    public static final hq6 h0() {
        return hq6.a;
    }

    public static final ao i0() {
        return new ao();
    }

    public static final boolean u0() {
        return false;
    }

    public List A() {
        return y0() ? V().C() : W().E();
    }

    public List B() {
        return y0() ? V().D() : W().F();
    }

    public List C(int i) {
        return y0() ? V().E(i) : W().G(i);
    }

    public AudioAlbum D(int i) {
        return y0() ? V().F(i) : W().H(i);
    }

    public AudioItem E(String str) {
        y45.j(str, "displayName");
        return y0() ? V().G(str) : W().I(str);
    }

    public AudioItem F(int i) {
        return y0() ? V().H(i) : W().J(i);
    }

    public AudioItem G(String str) {
        y45.j(str, "path");
        return y0() ? V().I(str) : W().K(str);
    }

    public AudioItem H(Uri uri) {
        y45.j(uri, "uri");
        return y0() ? V().J(uri) : W().L(uri);
    }

    public List I(String str, String str2) {
        y45.j(str, "albumName");
        return y0() ? V().K(str, str2) : W().M(str, str2);
    }

    public List J(String str, String str2) {
        y45.j(str, "artistName");
        return y0() ? V().L(str, str2) : W().N(str, str2);
    }

    public Pair K(long j, String str, String str2, boolean z) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        return y0() ? V().M(j, str, str2, z) : W().O(j, str, str2, z);
    }

    public List L(List list, boolean z) {
        y45.j(list, "mediaIds");
        return y0() ? V().N(list, z) : W().P(list, z);
    }

    public List M(String str, boolean z) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        return y0() ? V().O(str, z) : W().R(str, z);
    }

    public List N(List list, String str, boolean z) {
        y45.j(list, "mediaIds");
        return y0() ? V().P(list, str, z) : W().S(list, str, z);
    }

    public List O() {
        return y0() ? V().Q() : W().T();
    }

    public List P() {
        return y0() ? V().R() : W().U();
    }

    public List Q(String str, boolean z) {
        return y0() ? V().S(str, z) : W().V(str, z);
    }

    public LyricData R(int i) {
        return y0() ? V().T(i) : W().W(i);
    }

    public List S(long j, String str) {
        return y0() ? V().W(j, str) : W().Z(j, str);
    }

    public List T() {
        return y0() ? V().X() : W().a0();
    }

    public final wj5 V() {
        return (wj5) this.b.getValue();
    }

    public final hq6 W() {
        return (hq6) this.c.getValue();
    }

    public List X(boolean z, String str) {
        return y0() ? V().Y(z, str) : W().c0(z, str);
    }

    public List Y(long j, String str) {
        return y0() ? V().a0(j, str) : W().e0(j, str);
    }

    public List Z() {
        return y0() ? V().b0() : W().f0();
    }

    @Override
    public List a(String str) {
        return y0() ? V().a(str) : W().a(str);
    }

    public PlayListMediaItem a0(int i, int i2, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        return y0() ? V().c0(i, i2, audioItem, z) : W().g0(i, i2, audioItem, z);
    }

    @Override
    public List b(String str) {
        return y0() ? V().b(str) : W().b(str);
    }

    public List b0(boolean z, String str) {
        return y0() ? V().d0(z, str) : W().h0(z, str);
    }

    public boolean c0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        return y0() ? V().e0(z, audioItem) : W().j0(z, audioItem);
    }

    public boolean d0(MediaItem mediaItem) {
        y45.j(mediaItem, "data");
        return y0() ? V().f0(mediaItem) : W().k0(mediaItem);
    }

    public boolean e0(String str) {
        return y0() ? V().g0(str) : W().l0(str);
    }

    public boolean f0(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return y0() ? V().h0(mediaItem) : W().m0(mediaItem);
    }

    public int h(int i, String str) {
        y45.j(str, "path");
        return y0() ? V().e(i, str) : W().d(i, str);
    }

    public boolean i(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return y0() ? V().f(mediaItem) : W().e(mediaItem);
    }

    public boolean j() {
        return y0() ? V().h() : W().j();
    }

    public LiveData j0() {
        return y0() ? V().l0() : W().p0();
    }

    public int k(int i, String str) {
        y45.j(str, "path");
        return y0() ? V().i(i, str) : W().k(i, str);
    }

    public List k0() {
        return y0() ? V().m0() : W().r0();
    }

    public boolean l(List list) {
        y45.j(list, "items");
        return y0() ? V().j(list) : W().l(list);
    }

    public void l0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        if (y0()) {
            V().n0(z, audioItem);
        } else {
            W().s0(z, audioItem);
        }
    }

    public boolean m(int i, String str) {
        y45.j(str, "path");
        return y0() ? V().k(i, str) : W().m(i, str);
    }

    public long m0(String str, boolean z) {
        y45.j(str, "name");
        return y0() ? V().o0(str, z) : W().t0(str, z);
    }

    public boolean n(AudioItem audioItem) {
        y45.j(audioItem, "item");
        return y0() ? V().l(audioItem) : W().n(audioItem);
    }

    public int n0(String str, long j, AudioItem audioItem) {
        y45.j(str, "playlistName");
        y45.j(audioItem, "mediaItem");
        return y0() ? V().p0(str, j, audioItem) : W().u0(str, j, audioItem);
    }

    public int o(long j) {
        return y0() ? V().m(j) : W().o(j);
    }

    public List o0(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        return y0() ? V().q0(str, j, arrayList, z) : W().v0(str, j, arrayList, z);
    }

    public int p(int i, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        return y0() ? V().n(i, audioItem, z) : W().p(i, audioItem, z);
    }

    public void p0(int i) {
        if (y0()) {
            V().r0(i);
        } else {
            W().w0(i);
        }
    }

    public int q(int i, List list, boolean z) {
        y45.j(list, "mediaIds");
        return y0() ? V().o(i, list, z) : W().q(i, list, z);
    }

    public int q0(int i, String str, int i2) {
        return y0() ? V().s0(i, str, i2) : W().x0(i, str, i2);
    }

    public int r(AudioItem audioItem, int i, int i2, boolean z) {
        y45.j(audioItem, "audioItem");
        return y0() ? V().p(audioItem, i, i2, z) : W().r(audioItem, i, i2, z);
    }

    public List r0(String str) {
        return y0() ? V().t0(str) : W().y0(str);
    }

    public void s(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
        if (y0()) {
            V().q(mediaItem, e74Var);
        } else {
            W().s(mediaItem, e74Var);
        }
    }

    public boolean s0(int i, String str, String str2) {
        y45.j(str, "mediaPath");
        y45.j(str2, "customCoverPath");
        return y0() ? V().u0(i, str, str2) : W().z0(i, str, str2);
    }

    public void t(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
        if (y0()) {
            V().r(list, e74Var);
        } else {
            W().t(list, e74Var);
        }
    }

    public boolean t0(AudioItem audioItem) {
        return y0() ? V().v0(audioItem) : W().A0(audioItem);
    }

    public List u(String str, String str2, String str3, int i, Long l) {
        return y0() ? V().w(str, str2, str3, i, l) : W().x(str, str2, str3, i, l);
    }

    public List v() {
        return y0() ? V().x() : W().y();
    }

    public int v0(AudioItem audioItem, String str) {
        y45.j(audioItem, "audioItem");
        y45.j(str, "newPath");
        return y0() ? V().w0(audioItem, str) : W().B0(audioItem, str);
    }

    public List w() {
        return y0() ? V().y() : W().z();
    }

    public int w0(PlayList playList) {
        y45.j(playList, "playList");
        return y0() ? V().x0(playList) : W().C0(playList);
    }

    public Pair x(String str) {
        return y0() ? V().z(str) : W().B(str);
    }

    public boolean x0(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return y0() ? V().y0(audioItem) : W().D0(audioItem);
    }

    public Pair y(boolean z) {
        return y0() ? V().A(z) : W().C(z);
    }

    public final boolean y0() {
        return false;
    }

    public List z() {
        return y0() ? V().B() : W().D();
    }
}
