package hn;

import androidx.compose.foundation.e;
import com.transsion.player.config.PlayerType;
import com.transsion.player.p007enum.ScaleMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final d f61405a;

    private final PlayerType f61406b;

    private final boolean f61407c;

    private final boolean f61408d;

    private final float f61409e;

    private final ScaleMode f61410f;

    public a(d vodConfig, PlayerType playerType, boolean z10, boolean z11, float f10, ScaleMode scaleMode) {
        Intrinsics.h(vodConfig, "vodConfig");
        Intrinsics.h(playerType, "playerType");
        Intrinsics.h(scaleMode, "scaleMode");
        this.f61405a = vodConfig;
        this.f61406b = playerType;
        this.f61407c = z10;
        this.f61408d = z11;
        this.f61409e = f10;
        this.f61410f = scaleMode;
    }

    public final ScaleMode a() {
        return this.f61410f;
    }

    public final float b() {
        return this.f61409e;
    }

    public final boolean c() {
        return this.f61408d;
    }

    public final d d() {
        return this.f61405a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f61405a, aVar.f61405a) && this.f61406b == aVar.f61406b && this.f61407c == aVar.f61407c && this.f61408d == aVar.f61408d && Float.compare(this.f61409e, aVar.f61409e) == 0 && this.f61410f == aVar.f61410f;
    }

    public int hashCode() {
        return (((((((((this.f61405a.hashCode() * 31) + this.f61406b.hashCode()) * 31) + e.a(this.f61407c)) * 31) + e.a(this.f61408d)) * 31) + Float.floatToIntBits(this.f61409e)) * 31) + this.f61410f.hashCode();
    }

    public String toString() {
        return "LongVodConfig(vodConfig=" + this.f61405a + ", playerType=" + this.f61406b + ", openMediaNotification=" + this.f61407c + ", useSurface=" + this.f61408d + ", speed=" + this.f61409e + ", scaleMode=" + this.f61410f + ")";
    }

    public a(d dVar, PlayerType playerType, boolean z10, boolean z11, float f10, ScaleMode scaleMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i10 & 2) != 0 ? PlayerType.EXO : playerType, (i10 & 4) != 0 ? true : z10, (i10 & 8) != 0 ? true : z11, f10, scaleMode);
    }
}
