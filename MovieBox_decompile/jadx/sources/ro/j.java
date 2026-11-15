package ro;

import android.app.Dialog;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.view.LinkEditText;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class j implements TextWatcher {

    private final boolean f71285a;

    private LinkEditText f71286b;

    private TextView f71287c;

    private TextView f71288d;

    private View f71289e;

    private RelativeLayout f71290f;

    private View f71291g;

    private View f71292h;

    private ro.b f71293i;

    private Dialog f71294j;

    private MMKV f71295k;

    private boolean f71296l;

    private mo.b.InterfaceC0816b f71297m;

    private View f71298n;

    private final InputFilter.LengthFilter f71299o;

    public static final class a implements TextWatcher {
        a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                RelativeLayout relativeLayout = j.this.f71290f;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(4);
                    return;
                }
                return;
            }
            RelativeLayout relativeLayout2 = j.this.f71290f;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(0);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class b extends InputFilter.LengthFilter {
        b() {
            super(1000);
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            int length;
            if (charSequence != null) {
                try {
                    length = charSequence.length();
                } catch (Exception unused) {
                }
            } else {
                length = 0;
            }
            if (length + (spanned != null ? spanned.length() : 0) > getMax()) {
                fh.b.f60176a.d(R$string.comment_max_tips);
            }
            return charSequence;
        }
    }

    public j() {
        this(null, null, null, null, false, 31, null);
    }

    private final ro.a h() {
        ro.b bVar = this.f71293i;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    public static final void l(final j jVar, View view, boolean z10) {
        LinkEditText linkEditText;
        view.dispatchWindowFocusChanged(z10);
        if (z10) {
            LinkEditText linkEditText2 = jVar.f71286b;
            if (!TextUtils.isEmpty(linkEditText2 != null ? linkEditText2.getText() : null) || (linkEditText = jVar.f71286b) == null) {
                return;
            }
            linkEditText.post(new Runnable() {
                @Override
                public final void run() {
                    j.m(this.f71284a);
                }
            });
        }
    }

    public static final void m(j jVar) {
        LinkEditText linkEditText = jVar.f71286b;
        if (linkEditText != null) {
            linkEditText.setText("");
        }
        LinkEditText linkEditText2 = jVar.f71286b;
        if (linkEditText2 != null) {
            linkEditText2.setSelection(0);
        }
        LinkEditText linkEditText3 = jVar.f71286b;
        if (linkEditText3 != null) {
            linkEditText3.requestFocus();
        }
    }

    public static final void n(j jVar) {
        mo.b.InterfaceC0816b interfaceC0816b = jVar.f71297m;
        if (interfaceC0816b != null) {
            interfaceC0816b.completeLoad();
        }
    }

    public static final void o(j jVar, View view) {
        LinkEditText linkEditText = jVar.f71286b;
        jVar.s(String.valueOf(linkEditText != null ? linkEditText.getText() : null));
    }

    public static final void p(j jVar, View view) {
        LinkEditText linkEditText = jVar.f71286b;
        String strValueOf = String.valueOf(linkEditText != null ? linkEditText.getText() : null);
        MMKV mmkv = jVar.f71295k;
        if (mmkv != null) {
            mmkv.putString("link", strValueOf);
        }
        jVar.i();
    }

    public static final void q(j jVar, View view) {
        LinkEditText linkEditText = jVar.f71286b;
        if (linkEditText != null) {
            linkEditText.setText("");
        }
        LinkEditText linkEditText2 = jVar.f71286b;
        if (linkEditText2 != null) {
            linkEditText2.requestFocus();
        }
        LinkEditText linkEditText3 = jVar.f71286b;
        if (linkEditText3 != null) {
            linkEditText3.setSelection(0);
        }
    }

    private final int r() {
        ro.b bVar = this.f71293i;
        if (bVar != null) {
            return bVar.c();
        }
        return 10;
    }

    private final void s(String str) {
        if (TextUtils.isEmpty(StringsKt.n1(str).toString()) || str.length() < 5) {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.post_link_hint);
            return;
        }
        String strSubstring = str.substring(0, 5);
        Intrinsics.g(strSubstring, "substring(...)");
        if (!StringsKt.c0(strSubstring, "http", false, 2, null) && !StringsKt.c0(strSubstring, "https", false, 2, null) && !StringsKt.c0(strSubstring, "www.", false, 2, null)) {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.post_link_hint);
            return;
        }
        if (!StringsKt.c0(str, "http:", false, 2, null) && !StringsKt.c0(str, "https:", false, 2, null)) {
            str = "https://" + str;
        }
        MMKV mmkv = this.f71295k;
        if (mmkv != null) {
            mmkv.putString("link", "");
        }
        com.transsion.publish.c.f48352a.a().g(str);
        i();
    }

    private final void t(int i10) {
        v(i10);
        u(i10);
    }

    private final void u(int i10) {
        if (i10 > r()) {
            fh.b.f60176a.d(R$string.comment_max_tips);
        }
    }

    private final void v(int i10) {
        View view = this.f71289e;
        if (view != null) {
            boolean z10 = false;
            if (1 <= i10 && i10 <= r()) {
                z10 = true;
            }
            if (view.isSelected() != z10) {
                view.setSelected(z10);
            }
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {
        ro.a aVarH = h();
        if (aVarH != null) {
            aVarH.afterTextChanged(editable);
        }
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        ro.a aVarH = h();
        if (aVarH != null) {
            aVarH.beforeTextChanged(charSequence, i10, i11, i12);
        }
    }

    public final void i() {
        this.f71298n = null;
        LinkEditText linkEditText = this.f71286b;
        if (linkEditText != null) {
            KeyboardUtils.e(linkEditText);
        }
        Dialog dialog = this.f71294j;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public final View j() {
        return this.f71286b;
    }

    public final void k(ro.b bVar) {
        LinkEditText linkEditText;
        Editable editableB;
        this.f71293i = bVar;
        LinkEditText linkEditText2 = this.f71286b;
        if (linkEditText2 != null) {
            linkEditText2.addTextChangedListener(this);
            ro.b bVar2 = this.f71293i;
            if (bVar2 != null && bVar2.d() != null) {
                linkEditText2.setText("");
                linkEditText2.setSelection(0);
                t(0);
            }
            ro.b bVar3 = this.f71293i;
            if (bVar3 != null && (editableB = bVar3.b()) != null) {
                linkEditText2.setText(editableB);
                linkEditText2.setSelection(editableB.length());
                t(editableB.length());
            }
            linkEditText2.setMaxEms(r() * 2);
            if (this.f71285a) {
                linkEditText2.requestFocus();
                linkEditText2.setCursorVisible(true);
                if (Build.VERSION.SDK_INT >= 29) {
                    linkEditText2.setTextCursorDrawable(androidx.core.content.b.getDrawable(linkEditText2.getContext(), R$drawable.comment_edit_cursor));
                }
            }
            InputFilter[] filters = linkEditText2.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listJ0 = ArraysKt.J0(filters);
            listJ0.add(0, this.f71299o);
            linkEditText2.setFilters((InputFilter[]) listJ0.toArray(new InputFilter[0]));
        }
        View view = this.f71289e;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    j.o(this.f71279a, view2);
                }
            });
        }
        TextView textView = this.f71288d;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    j.p(this.f71280a, view2);
                }
            });
        }
        RelativeLayout relativeLayout = this.f71290f;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    j.q(this.f71281a, view2);
                }
            });
        }
        LinkEditText linkEditText3 = this.f71286b;
        Editable text = linkEditText3 != null ? linkEditText3.getText() : null;
        if (!TextUtils.isEmpty(text) && (linkEditText = this.f71286b) != null) {
            linkEditText.setText(text);
        }
        LinkEditText linkEditText4 = this.f71286b;
        if (linkEditText4 != null) {
            linkEditText4.addTextChangedListener(new a());
        }
        LinkEditText linkEditText5 = this.f71286b;
        if (linkEditText5 != null) {
            linkEditText5.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view2, boolean z10) {
                    j.l(this.f71282a, view2, z10);
                }
            });
        }
        LinkEditText linkEditText6 = this.f71286b;
        if (linkEditText6 != null) {
            linkEditText6.requestFocus();
        }
        LinkEditText linkEditText7 = this.f71286b;
        if (linkEditText7 != null) {
            linkEditText7.setSelection(text != null ? text.length() : 0);
        }
        LinkEditText linkEditText8 = this.f71286b;
        if (linkEditText8 != null) {
            linkEditText8.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    j.n(this.f71283a);
                }
            }, 1000L);
        }
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        t(charSequence != null ? charSequence.length() : 0);
        if (this.f71285a) {
            ro.a aVarH = h();
            if (aVarH != null) {
                aVarH.onTextChanged(charSequence, i10, i11, i12);
                return;
            }
            return;
        }
        View view = this.f71289e;
        if (view != null) {
            view.setVisibility((charSequence != null ? charSequence.length() : 0) <= 0 ? 8 : 0);
        }
    }

    public j(View view, Dialog dialog, mo.b.InterfaceC0816b interfaceC0816b, View view2, boolean z10) {
        LinkEditText linkEditText;
        View view3;
        this.f71285a = z10;
        this.f71297m = interfaceC0816b;
        this.f71298n = view2;
        this.f71296l = true;
        if (view != null) {
            this.f71286b = (LinkEditText) view.findViewById(R$id.comment_input_edit_text);
            this.f71289e = view.findViewById(R$id.tv_add);
            this.f71288d = (TextView) view.findViewById(R$id.tv_cancel);
            this.f71291g = view.findViewById(R$id.comment_input_disable_click);
            this.f71287c = (TextView) view.findViewById(R$id.tv_hint);
            this.f71290f = (RelativeLayout) view.findViewById(R$id.rl_clear);
        }
        this.f71294j = dialog;
        if (dialog != null) {
            this.f71286b = (LinkEditText) dialog.findViewById(R$id.comment_input_edit_text);
            this.f71289e = dialog.findViewById(R$id.tv_add);
            this.f71287c = (TextView) dialog.findViewById(R$id.tv_hint);
            this.f71288d = (TextView) dialog.findViewById(R$id.tv_cancel);
            this.f71290f = (RelativeLayout) dialog.findViewById(R$id.rl_clear);
            this.f71292h = dialog.findViewById(R$id.comment_input_layout);
        }
        LinkEditText linkEditText2 = this.f71286b;
        if (linkEditText2 != null) {
            linkEditText2.setEnabled(z10);
            linkEditText2.setSingleLine(!z10);
            linkEditText2.setClickable(!z10);
            if (linkEditText2.isEnabled()) {
                linkEditText2.setMaxLines(4);
            }
        }
        if (z10 && (view3 = this.f71289e) != null) {
            view3.setVisibility(0);
        }
        LinkEditText linkEditText3 = this.f71286b;
        if (linkEditText3 != null) {
            KeyboardUtils.i(linkEditText3);
        }
        try {
            MMKV mmkvI = MMKV.I("kv_link_record");
            this.f71295k = mmkvI;
            String string = mmkvI != null ? mmkvI.getString("link", "") : null;
            if (!TextUtils.isEmpty(string) && (linkEditText = this.f71286b) != null) {
                linkEditText.setText(string);
            }
        } catch (Exception unused) {
        }
        this.f71299o = new b();
    }

    public j(View view, Dialog dialog, mo.b.InterfaceC0816b interfaceC0816b, View view2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : view, (i10 & 2) != 0 ? null : dialog, (i10 & 4) != 0 ? null : interfaceC0816b, (i10 & 8) == 0 ? view2 : null, (i10 & 16) != 0 ? false : z10);
    }
}
