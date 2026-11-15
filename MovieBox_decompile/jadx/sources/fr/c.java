package fr;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c implements a {

    private final TextView f60493a;

    private String f60494b;

    private Function0 f60495c;

    private int f60496d;

    private int f60497e;

    private Function0 f60498f;

    public c(TextView textView) {
        Intrinsics.h(textView, "textView");
        this.f60493a = textView;
        this.f60494b = "http://schemas.android.com/apk/res/android";
    }

    public final void a(Context context, AttributeSet attributeSet, int i10) {
        Intrinsics.h(context, "context");
        if (attributeSet != null) {
            String attributeValue = attributeSet.getAttributeValue(this.f60494b, MimeTypes.BASE_TYPE_TEXT);
            if (attributeValue != null && attributeValue.length() >= 2) {
                String strSubstring = attributeValue.substring(1, attributeValue.length());
                Intrinsics.g(strSubstring, "substring(...)");
                this.f60496d = b.a(strSubstring);
            }
            String attributeValue2 = attributeSet.getAttributeValue(this.f60494b, "hint");
            if (attributeValue2 == null || attributeValue2.length() < 2) {
                return;
            }
            String strSubstring2 = attributeValue2.substring(1, attributeValue2.length());
            Intrinsics.g(strSubstring2, "substring(...)");
            this.f60497e = b.a(strSubstring2);
        }
    }

    public void b(int i10) {
        this.f60497e = i10;
        if (i10 != 0) {
            this.f60493a.setHint(i10);
        }
    }

    public void c(CharSequence charSequence) {
        this.f60497e = 0;
        this.f60493a.setHint(charSequence);
    }

    @Override
    public void changeLocal() {
        try {
            int i10 = this.f60496d;
            if (i10 != 0) {
                this.f60493a.setText(i10);
            }
            int i11 = this.f60497e;
            if (i11 != 0) {
                this.f60493a.setHint(i11);
            }
            Function0 function0 = this.f60498f;
            if (function0 != null) {
                this.f60493a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Function0 function1 = this.f60495c;
        if (function1 != null) {
            function1.invoke();
        }
    }

    public void d(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.f60495c = listener;
    }

    public void e(Function0 function0) {
        this.f60498f = function0;
        this.f60496d = 0;
        this.f60493a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
    }

    public void f(int i10) {
        this.f60496d = i10;
        if (i10 != 0) {
            this.f60493a.setText(i10);
        }
    }

    public void g(CharSequence charSequence) {
        this.f60498f = null;
        this.f60496d = 0;
        this.f60493a.setText(charSequence);
    }
}
