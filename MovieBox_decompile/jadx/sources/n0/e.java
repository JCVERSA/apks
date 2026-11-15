package n0;

import android.os.LocaleList;
import android.util.Log;
import androidx.compose.ui.text.platform.o;
import androidx.compose.ui.text.platform.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class e implements j {

    private LocaleList f66846a;

    private i f66847b;

    private final p f66848c = o.a();

    @Override
    public Locale a(String str) {
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        if (Intrinsics.c(localeForLanguageTag.toLanguageTag(), C.LANGUAGE_UNDETERMINED)) {
            Log.e(f.f66849a, "The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
        }
        return localeForLanguageTag;
    }

    @Override
    public i d() {
        LocaleList localeList = LocaleList.getDefault();
        synchronized (this.f66848c) {
            i iVar = this.f66847b;
            if (iVar != null && localeList == this.f66846a) {
                return iVar;
            }
            int size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(new h(localeList.get(i10)));
            }
            i iVar2 = new i(arrayList);
            this.f66846a = localeList;
            this.f66847b = iVar2;
            return iVar2;
        }
    }
}
