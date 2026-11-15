package com.transsion.search.fragment.suggest;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.search.bean.SuggestEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/transsion/search/fragment/suggest/d;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/search/bean/SuggestEntity;", "<init>", "()V", "", "keyWord", "", "R1", "(Ljava/lang/String;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "Ljava/lang/String;", "Q1", "()Ljava/lang/String;", "S1", "mKeyWord", "H", "a", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class d extends BaseProviderMultiAdapter<SuggestEntity> {

    public static final Companion INSTANCE = new Companion(null);
    public static final int I = 3;
    public static final int J = 2;
    public static final int K = 1;
    public static final int L = 0;

    private String mKeyWord;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CharSequence a(String mKeyWord, String str) {
            String str2;
            Intrinsics.h(mKeyWord, "mKeyWord");
            try {
                Result.Companion companion = Result.INSTANCE;
                Locale locale = Locale.ROOT;
                String upperCase = mKeyWord.toUpperCase(locale);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                if (str != null) {
                    String upperCase2 = str.toUpperCase(locale);
                    Intrinsics.g(upperCase2, "toUpperCase(...)");
                    str2 = upperCase2 == null ? "" : upperCase2;
                }
                int length = upperCase.length() - 1;
                int i10 = 0;
                boolean z10 = false;
                while (i10 <= length) {
                    boolean z11 = Intrinsics.j(upperCase.charAt(!z10 ? i10 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        }
                        length--;
                    } else if (z11) {
                        i10++;
                    } else {
                        z10 = true;
                    }
                }
                if (upperCase.subSequence(i10, length + 1).toString().length() == 0 || !StringsKt.c0(str2, upperCase, false, 2, null)) {
                    return str;
                }
                int iO0 = StringsKt.o0(str2, upperCase, 0, false, 6, null);
                int length2 = upperCase.length() + iO0;
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) str);
                if (length2 != 0 && iO0 != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#10A84D")), iO0, length2, 33);
                }
                return spannableStringBuilder;
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
                return "";
            }
        }

        private Companion() {
        }
    }

    public d() {
        super(null, 1, null);
        F1(new aq.d());
        F1(new aq.b());
        F1(new aq.c());
        F1(new aq.a());
        this.mKeyWord = "";
    }

    @Override
    protected int N1(List<? extends SuggestEntity> data, int position) {
        Intrinsics.h(data, "data");
        Integer type = data.get(position).getType();
        if (type != null && type.intValue() == 2) {
            return 2;
        }
        if (type != null && type.intValue() == 1) {
            return 1;
        }
        return ((type != null && type.intValue() == 0) || type == null || type.intValue() != 3) ? 0 : 3;
    }

    public final String getMKeyWord() {
        return this.mKeyWord;
    }

    public final void R1(String keyWord) {
        Intrinsics.h(keyWord, "keyWord");
        this.mKeyWord = keyWord;
    }

    public final void S1(String str) {
        Intrinsics.h(str, "<set-?>");
        this.mKeyWord = str;
    }
}
