package ci;

import android.view.View;
import android.widget.TextView;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Regex;

public final class b {

    public static final b f16934a = new b();

    private b() {
    }

    public static final void f(TextView textView) {
        String strValueOf;
        try {
            Result.Companion companion = Result.INSTANCE;
            String lowerCase = textView.getText().toString().toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            if (f16934a.b(lowerCase)) {
                if (lowerCase.length() > 0) {
                    StringBuilder sb2 = new StringBuilder();
                    char cCharAt = lowerCase.charAt(0);
                    if (Character.isLowerCase(cCharAt)) {
                        Locale locale = Locale.getDefault();
                        Intrinsics.g(locale, "getDefault(...)");
                        strValueOf = CharsKt.d(cCharAt, locale);
                    } else {
                        strValueOf = String.valueOf(cCharAt);
                    }
                    sb2.append((Object) strValueOf);
                    String strSubstring = lowerCase.substring(1);
                    Intrinsics.g(strSubstring, "substring(...)");
                    sb2.append(strSubstring);
                    lowerCase = sb2.toString();
                }
                textView.setText(lowerCase);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final boolean b(String string) {
        Intrinsics.h(string, "string");
        return new Regex("[a-zA-Z]+").matches(string);
    }

    public final boolean c() {
        return com.transsion.ad.strategy.e.f41179a.c().getBoolean("key_downloading_play_bubble_guide", true);
    }

    public final void d() {
        com.transsion.ad.strategy.e.f41179a.c().putBoolean("key_downloading_play_bubble_guide", false);
    }

    public final void e(View layout, int i10) {
        Intrinsics.h(layout, "layout");
        View viewFindViewById = layout.findViewById(i10);
        if (viewFindViewById != null && (viewFindViewById instanceof TextView)) {
            final TextView textView = (TextView) viewFindViewById;
            textView.post(new Runnable() {
                @Override
                public final void run() {
                    b.f(textView);
                }
            });
        }
    }
}
