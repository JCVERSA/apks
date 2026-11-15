package n0;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a implements j {
    @Override
    public Locale a(String str) {
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        if (Intrinsics.c(localeForLanguageTag.toLanguageTag(), C.LANGUAGE_UNDETERMINED)) {
            Log.e(f.f66849a, "The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtags delimiter and must be replaced with '-'.");
        }
        return localeForLanguageTag;
    }

    @Override
    public i d() {
        return new i(CollectionsKt.e(new h(Locale.getDefault())));
    }
}
