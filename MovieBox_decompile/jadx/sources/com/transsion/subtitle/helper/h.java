package com.transsion.subtitle.helper;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class h implements View.OnTouchListener {

    public static final a f52883o = new a(null);

    private final ViewGroup f52884a;

    private ht.a f52885b;

    private ImageView f52886c;

    private ImageView f52887d;

    private ImageView f52888e;

    private EditText f52889f;

    private float f52891h;

    private Function2 f52892i;

    private Function0 f52893j;

    private long f52894k;

    private float f52895l;

    private Handler f52890g = new Handler(Looper.getMainLooper());

    private final Runnable f52896m = new Runnable() {
        @Override
        public final void run() {
            h.s(this.f52882a);
        }
    };

    private final c f52897n = new c(Looper.getMainLooper());

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
            Editable text;
            Intrinsics.h(s10, "s");
            h.this.f52890g.removeCallbacks(h.this.f52896m);
            EditText editText = h.this.f52889f;
            if (editText == null || (text = editText.getText()) == null) {
                return;
            }
            h hVar = h.this;
            float fM = h.m(hVar, text, 0.0f, 2, null);
            if (hVar.f52891h != fM) {
                hVar.f52891h = fM;
            }
            if (hVar.f52895l == fM) {
                return;
            }
            if (!StringsKt.G(text.toString(), "s", false, 2, null)) {
                EditText editText2 = hVar.f52889f;
                if (editText2 != null) {
                    editText2.setText(((Object) text) + "s");
                }
                EditText editText3 = hVar.f52889f;
                if (editText3 != null) {
                    editText3.setSelection(text.length());
                }
            }
            hVar.f52895l = fM;
            hVar.u((long) (fM * 1000));
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int i10, int i11, int i12) {
            Intrinsics.h(s10, "s");
        }

        @Override
        public void onTextChanged(CharSequence s10, int i10, int i11, int i12) {
            Intrinsics.h(s10, "s");
        }
    }

    public static final class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            int i10 = msg.what;
            int i11 = msg.arg1;
            if (i10 == 1) {
                h.this.t(i11 == R$id.iv_sync_adjust_plus);
                sendMessageDelayed(obtainMessage(i10, msg.arg1, msg.arg2), 100L);
            }
        }
    }

    public h(ViewGroup viewGroup) {
        this.f52884a = viewGroup;
    }

    private final float l(CharSequence charSequence, float f10) {
        if (charSequence.length() == 0) {
            return f10;
        }
        String string = charSequence.toString();
        if (StringsKt.G(string, "s", false, 2, null)) {
            string = string.substring(0, string.length() - 1);
            Intrinsics.g(string, "substring(...)");
        }
        if (StringsKt.c0(string, "s", false, 2, null)) {
            StringsKt.Q(string, "s", "", false, 4, null);
        }
        try {
            return Float.parseFloat(string);
        } catch (Throwable unused) {
            return f10;
        }
    }

    static float m(h hVar, CharSequence charSequence, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = Float.NaN;
        }
        return hVar.l(charSequence, f10);
    }

    public static final void p(h hVar, View view) {
        Function0 function0 = hVar.f52893j;
        if (function0 != null) {
            function0.invoke();
        }
        hVar.f52890g.removeCallbacks(hVar.f52896m);
        hVar.n();
    }

    public static final void s(h hVar) {
        hVar.n();
    }

    public final void t(boolean z10) {
        float f10 = (z10 ? (this.f52891h * 1000.0f) + 100 : (this.f52891h * 1000.0f) - 100) / 1000.0f;
        this.f52891h = f10;
        EditText editText = this.f52889f;
        if (editText != null) {
            editText.setText(f10 + "s");
        }
        this.f52890g.removeCallbacks(this.f52896m);
    }

    public final void u(long j10) {
        SubtitleDownloadTable subtitleDownloadTableB;
        ht.a aVar = this.f52885b;
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            subtitleDownloadTableB.setDelay(Long.valueOf(j10));
        }
        Function2 function2 = this.f52892i;
        if (function2 != null) {
            function2.invoke(this.f52885b, Long.valueOf(j10));
        }
    }

    public final void n() {
        ViewGroup viewGroup = this.f52884a;
        if (viewGroup != null) {
            uf.c.g(viewGroup);
            KeyboardUtils.e(viewGroup);
        }
    }

    public final void o(Function2 function2) {
        this.f52892i = function2;
        ViewGroup viewGroup = this.f52884a;
        this.f52886c = viewGroup != null ? (ImageView) viewGroup.findViewById(R$id.iv_close) : null;
        ViewGroup viewGroup2 = this.f52884a;
        this.f52887d = viewGroup2 != null ? (ImageView) viewGroup2.findViewById(R$id.iv_sync_adjust_plus) : null;
        ViewGroup viewGroup3 = this.f52884a;
        this.f52888e = viewGroup3 != null ? (ImageView) viewGroup3.findViewById(R$id.iv_sync_adjust_minus) : null;
        ViewGroup viewGroup4 = this.f52884a;
        this.f52889f = viewGroup4 != null ? (EditText) viewGroup4.findViewById(R$id.et_sync_adjust) : null;
        ImageView imageView = this.f52886c;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    h.p(this.f52881a, view);
                }
            });
        }
        ImageView imageView2 = this.f52887d;
        if (imageView2 != null) {
            imageView2.setOnTouchListener(this);
        }
        ImageView imageView3 = this.f52888e;
        if (imageView3 != null) {
            imageView3.setOnTouchListener(this);
        }
        ImageView imageView4 = this.f52887d;
        if (imageView4 != null) {
            imageView4.setFocusable(true);
        }
        ImageView imageView5 = this.f52888e;
        if (imageView5 != null) {
            imageView5.setFocusable(true);
        }
        ImageView imageView6 = this.f52887d;
        if (imageView6 != null) {
            imageView6.setClickable(true);
        }
        ImageView imageView7 = this.f52888e;
        if (imageView7 != null) {
            imageView7.setClickable(true);
        }
        EditText editText = this.f52889f;
        if (editText != null) {
            editText.addTextChangedListener(new b());
        }
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.f52894k = System.currentTimeMillis();
            c cVar = this.f52897n;
            cVar.sendMessageDelayed(cVar.obtainMessage(1, view != null ? view.getId() : 0, 0), 1200L);
            if (view != null) {
                view.setPressed(true);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            this.f52897n.removeCallbacksAndMessages(null);
            if (System.currentTimeMillis() - this.f52894k <= 400) {
                t((view != null ? view.getId() : 0) == R$id.iv_sync_adjust_plus);
            }
            if (view != null) {
                view.setPressed(false);
            }
        }
        return true;
    }

    public final void q(Function2 callback) {
        Intrinsics.h(callback, "callback");
        this.f52892i = callback;
    }

    public final void r(ht.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        Long delay;
        this.f52885b = aVar;
        float fLongValue = ((aVar == null || (subtitleDownloadTableB = aVar.b()) == null || (delay = subtitleDownloadTableB.getDelay()) == null) ? 0L : delay.longValue()) / 1000.0f;
        this.f52891h = fLongValue;
        this.f52895l = fLongValue;
        EditText editText = this.f52889f;
        if (editText != null) {
            editText.setText(fLongValue + "s");
        }
        com.transsion.subtitle.a.f52708a.a(h.class.getSimpleName() + " --> setCurDefVideoSubtitleBean() --> cur duration = " + this.f52891h);
    }
}
