package com.transsion.postdetail.comment;

import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.GalleryActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class m implements TextWatcher {

    private final SocialStatus f46748a;

    private final boolean f46749b;

    private AppCompatEditText f46750c;

    private TextView f46751d;

    private TextView f46752e;

    private View f46753f;

    private View f46754g;

    private ProgressBar f46755h;

    private LinearLayoutCompat f46756i;

    private AppCompatTextView f46757j;

    private AppCompatTextView f46758k;

    private AppCompatTextView f46759l;

    private AppCompatImageView f46760m;

    private ShapeableImageView f46761n;

    private ShapeableImageView f46762o;

    private AppCompatImageView f46763p;

    private vn.a f46764q;

    private List f46765r;

    private final InputFilter.LengthFilter f46766s;

    public static final class a extends InputFilter.LengthFilter {
        a() {
            super(300);
        }

        /* JADX WARN: Code duplicated, block: B:5:0x0007 A[Catch: Exception -> 0x000a, TRY_LEAVE, TryCatch #0 {Exception -> 0x000a, blocks: (B:3:0x0002, B:5:0x0007), top: B:8:0x0002 }] */
        @Override
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            if (charSequence != null) {
                try {
                    charSequence.length();
                    if (spanned != null) {
                        spanned.length();
                    }
                } catch (Exception unused) {
                }
            } else if (spanned != null) {
                spanned.length();
            }
            return charSequence;
        }
    }

    public m() {
        this(null, null, null, false, 15, null);
    }

    private final void A(int i10) {
        D(i10);
        C(i10);
    }

    private final void C(int i10) {
        TextView textView = this.f46751d;
        if (textView != null) {
            if (!this.f46749b || i10 < 0) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(new SpannableStringBuilder(i10 + "/" + q()));
            }
        }
        if (i10 > q()) {
            fh.b.f60176a.d(R$string.comment_max_tips);
        }
    }

    private final void D(int i10) {
        View view = this.f46753f;
        if (view != null) {
            boolean z10 = true;
            if ((1 > i10 || i10 > q()) && this.f46765r.isEmpty()) {
                z10 = false;
            }
            if (view.isEnabled() != z10) {
                view.setEnabled(z10);
            }
        }
    }

    private final i0 e() {
        vn.a aVar = this.f46764q;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    private final void f() {
        Editable text;
        CharSequence charSequenceN1;
        ShapeableImageView shapeableImageView = this.f46762o;
        if (shapeableImageView != null) {
            shapeableImageView.setVisibility(8);
        }
        this.f46765r.clear();
        AppCompatEditText appCompatEditText = this.f46750c;
        D((appCompatEditText == null || (text = appCompatEditText.getText()) == null || (charSequenceN1 = StringsKt.n1(text)) == null) ? 0 : charSequenceN1.length());
    }

    public static final void l(m mVar, View view) {
        AppCompatEditText appCompatEditText = mVar.f46750c;
        mVar.r(appCompatEditText != null ? appCompatEditText.getText() : null);
    }

    public static final void m(m mVar, View view) {
        mVar.s();
    }

    public static final void n(m mVar, View view) {
        mVar.f();
    }

    public static final void o(m mVar, View view) {
        com.transsion.publish.n.f48362b.a().f(mVar.f46765r);
        GalleryActivity.Companion companion = GalleryActivity.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        companion.a(applicationA, mVar.f46765r, 0, 4, 1);
    }

    private final void p(boolean z10) {
        if (z10) {
            LinearLayoutCompat linearLayoutCompat = this.f46756i;
            if (linearLayoutCompat != null) {
                uf.c.g(linearLayoutCompat);
            }
            AppCompatTextView appCompatTextView = this.f46757j;
            if (appCompatTextView != null) {
                uf.c.g(appCompatTextView);
            }
            AppCompatTextView appCompatTextView2 = this.f46759l;
            if (appCompatTextView2 != null) {
                uf.c.g(appCompatTextView2);
            }
            AppCompatImageView appCompatImageView = this.f46760m;
            if (appCompatImageView != null) {
                uf.c.g(appCompatImageView);
            }
            AppCompatEditText appCompatEditText = this.f46750c;
            if (appCompatEditText != null) {
                uf.c.k(appCompatEditText);
                return;
            }
            return;
        }
        LinearLayoutCompat linearLayoutCompat2 = this.f46756i;
        if (linearLayoutCompat2 != null) {
            uf.c.j(linearLayoutCompat2, this.f46748a.getShowTint());
        }
        AppCompatTextView appCompatTextView3 = this.f46757j;
        if (appCompatTextView3 != null) {
            uf.c.j(appCompatTextView3, this.f46748a.getShowLike());
        }
        AppCompatTextView appCompatTextView4 = this.f46759l;
        if (appCompatTextView4 != null) {
            uf.c.j(appCompatTextView4, this.f46748a.getShowShare());
        }
        AppCompatImageView appCompatImageView2 = this.f46760m;
        if (appCompatImageView2 != null) {
            uf.c.j(appCompatImageView2, this.f46748a.getShowDownload());
        }
        AppCompatEditText appCompatEditText2 = this.f46750c;
        if (appCompatEditText2 != null) {
            uf.c.g(appCompatEditText2);
        }
    }

    private final int q() {
        vn.a aVar = this.f46764q;
        if (aVar != null) {
            return aVar.c();
        }
        return 10;
    }

    private final void r(Editable editable) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            vn.a aVar = this.f46764q;
            i0VarE.T(editable, aVar != null ? aVar.d() : null);
        }
    }

    private final void s() {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.F();
        }
    }

    public final void B() {
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            appCompatEditText.setMaxEms(q() * 2);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.afterTextChanged(editable);
        }
        TextView textView = this.f46752e;
        if (textView != null) {
            textView.setVisibility((editable == null || editable.length() == 0) ? 0 : 8);
        }
        if ((editable != null ? editable.length() : 0) >= 295) {
            TextView textView2 = this.f46751d;
            if (textView2 != null) {
                textView2.setTextColor(com.blankj.utilcode.util.h.a(R$color.error_50));
                return;
            }
            return;
        }
        TextView textView3 = this.f46751d;
        if (textView3 != null) {
            textView3.setTextColor(com.blankj.utilcode.util.h.a(R$color.text_02));
        }
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.beforeTextChanged(charSequence, i10, i11, i12);
        }
    }

    public final void g() {
        ProgressBar progressBar = this.f46755h;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        View view = this.f46753f;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final Editable h() {
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            return appCompatEditText.getText();
        }
        return null;
    }

    public final CommentBean i() {
        vn.a aVar = this.f46764q;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public final List j() {
        return this.f46765r;
    }

    public final void k(vn.a aVar) {
        Editable editableB;
        CommentBean commentBeanD;
        this.f46764q = aVar;
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            appCompatEditText.addTextChangedListener(this);
            vn.a aVar2 = this.f46764q;
            if ((aVar2 != null ? aVar2.d() : null) == null) {
                appCompatEditText.setText("");
                appCompatEditText.setSelection(0);
                A(0);
                AppCompatEditText appCompatEditText2 = this.f46750c;
                if (appCompatEditText2 != null) {
                    appCompatEditText2.setHint(appCompatEditText.getContext().getString(R$string.comment_hint_add));
                }
            }
            vn.a aVar3 = this.f46764q;
            if (aVar3 != null && (commentBeanD = aVar3.d()) != null) {
                appCompatEditText.setText("");
                appCompatEditText.setSelection(0);
                A(0);
                AppCompatEditText appCompatEditText3 = this.f46750c;
                if (appCompatEditText3 != null) {
                    appCompatEditText3.setHint(appCompatEditText.getContext().getString(R$string.comment_reply_to, commentBeanD.getNickName()));
                }
            }
            vn.a aVar4 = this.f46764q;
            if (aVar4 != null && (editableB = aVar4.b()) != null) {
                appCompatEditText.setText(editableB);
                appCompatEditText.setSelection(editableB.length());
                A(editableB.length());
            }
            appCompatEditText.setMaxEms(q() * 2);
            if (this.f46749b) {
                appCompatEditText.requestFocus();
                appCompatEditText.setCursorVisible(true);
                if (Build.VERSION.SDK_INT >= 29) {
                    appCompatEditText.setTextCursorDrawable(androidx.core.content.b.getDrawable(appCompatEditText.getContext(), R$drawable.comment_edit_cursor));
                }
            }
            InputFilter[] filters = appCompatEditText.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listJ0 = ArraysKt.J0(filters);
            listJ0.add(0, this.f46766s);
            appCompatEditText.setFilters((InputFilter[]) listJ0.toArray(new InputFilter[0]));
        }
        View view = this.f46753f;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    m.l(this.f46744a, view2);
                }
            });
        }
        ShapeableImageView shapeableImageView = this.f46761n;
        if (shapeableImageView != null) {
            shapeableImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    m.m(this.f46745a, view2);
                }
            });
        }
        AppCompatImageView appCompatImageView = this.f46763p;
        if (appCompatImageView != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    m.n(this.f46746a, view2);
                }
            });
        }
        ShapeableImageView shapeableImageView2 = this.f46762o;
        if (shapeableImageView2 != null) {
            shapeableImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    m.o(this.f46747a, view2);
                }
            });
        }
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        A(charSequence != null ? charSequence.length() : 0);
        if (this.f46749b) {
            i0 i0VarE = e();
            if (i0VarE != null) {
                i0VarE.onTextChanged(charSequence, i10, i11, i12);
            }
        } else {
            View view = this.f46753f;
            if (view != null) {
                view.setVisibility((charSequence != null ? charSequence.length() : 0) <= 0 ? 8 : 0);
            }
        }
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            Linkify.addLinks(appCompatEditText, 1);
        }
    }

    public final void t() {
        x("");
        vn.a aVar = this.f46764q;
        if (aVar != null) {
            aVar.e();
        }
        p(false);
    }

    public final void u() {
        this.f46765r.clear();
        ShapeableImageView shapeableImageView = this.f46762o;
        if (shapeableImageView != null) {
            shapeableImageView.setVisibility(8);
        }
    }

    public final void v(CommentBean commentBean) {
        vn.a aVar = this.f46764q;
        if (aVar != null) {
            aVar.i(commentBean);
        }
    }

    public final void w(PhotoEntity photoEntity) {
        Editable text;
        CharSequence charSequenceN1;
        Intrinsics.h(photoEntity, "photoEntity");
        ShapeableImageView shapeableImageView = this.f46762o;
        if (shapeableImageView != null) {
            int length = 0;
            shapeableImageView.setVisibility(0);
            this.f46765r.add(photoEntity);
            RequestManager requestManagerWith = Glide.with(shapeableImageView);
            String localPath = photoEntity.getLocalPath();
            if (localPath == null) {
                localPath = "";
            }
            RequestBuilder<Drawable> requestBuilderLoad2 = requestManagerWith.load2(new File(localPath));
            ShapeableImageView shapeableImageView2 = this.f46762o;
            Intrinsics.e(shapeableImageView2);
            requestBuilderLoad2.into(shapeableImageView2);
            AppCompatEditText appCompatEditText = this.f46750c;
            if (appCompatEditText != null && (text = appCompatEditText.getText()) != null && (charSequenceN1 = StringsKt.n1(text)) != null) {
                length = charSequenceN1.length();
            }
            D(length);
        }
    }

    public final void x(CharSequence charSequence) {
        AppCompatEditText appCompatEditText;
        if (this.f46749b || (appCompatEditText = this.f46750c) == null) {
            return;
        }
        appCompatEditText.setText(charSequence);
    }

    public final void y() {
        ProgressBar progressBar = this.f46755h;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        View view = this.f46753f;
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public final void z() {
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            appCompatEditText.removeTextChangedListener(this);
        }
        View view = this.f46753f;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public m(View view, Dialog dialog, SocialStatus socialStatus, boolean z10) {
        View view2;
        Intrinsics.h(socialStatus, "socialStatus");
        this.f46748a = socialStatus;
        this.f46749b = z10;
        this.f46765r = new ArrayList();
        if (view != null) {
            this.f46750c = (AppCompatEditText) view.findViewById(R$id.comment_input_edit_text);
            this.f46751d = (TextView) view.findViewById(R$id.comment_input_edit_limit);
            this.f46753f = view.findViewById(R$id.comment_input_edit_post);
            this.f46754g = view.findViewById(R$id.comment_input_disable_click);
            this.f46752e = (TextView) view.findViewById(R$id.tv_hint);
            this.f46755h = (ProgressBar) view.findViewById(R$id.progress_bar);
            this.f46756i = (LinearLayoutCompat) view.findViewById(R$id.ll_tint);
            this.f46757j = (AppCompatTextView) view.findViewById(R$id.tv_like);
            this.f46758k = (AppCompatTextView) view.findViewById(R$id.tv_comment);
            this.f46759l = (AppCompatTextView) view.findViewById(R$id.tv_share);
            this.f46760m = (AppCompatImageView) view.findViewById(R$id.iv_download);
            this.f46761n = (ShapeableImageView) view.findViewById(R$id.iv_choose_image);
            this.f46762o = (ShapeableImageView) view.findViewById(R$id.iv_selected_image);
            this.f46763p = (AppCompatImageView) view.findViewById(R$id.icon_delete_image);
            p(z10);
        }
        if (dialog != null) {
            this.f46750c = (AppCompatEditText) dialog.findViewById(R$id.comment_input_edit_text);
            this.f46751d = (TextView) dialog.findViewById(R$id.comment_input_edit_limit);
            this.f46753f = dialog.findViewById(R$id.comment_input_edit_post);
            this.f46752e = (TextView) dialog.findViewById(R$id.tv_hint);
            this.f46755h = (ProgressBar) dialog.findViewById(R$id.progress_bar);
            this.f46756i = (LinearLayoutCompat) dialog.findViewById(R$id.ll_tint);
            this.f46757j = (AppCompatTextView) dialog.findViewById(R$id.tv_like);
            this.f46758k = (AppCompatTextView) dialog.findViewById(R$id.tv_comment);
            this.f46759l = (AppCompatTextView) dialog.findViewById(R$id.tv_share);
            this.f46760m = (AppCompatImageView) dialog.findViewById(R$id.iv_download);
            this.f46761n = (ShapeableImageView) dialog.findViewById(R$id.iv_choose_image);
            this.f46762o = (ShapeableImageView) dialog.findViewById(R$id.iv_selected_image);
            this.f46763p = (AppCompatImageView) dialog.findViewById(R$id.icon_delete_image);
            p(z10);
        }
        AppCompatEditText appCompatEditText = this.f46750c;
        if (appCompatEditText != null) {
            appCompatEditText.setEnabled(z10);
            appCompatEditText.setSingleLine(!z10);
            appCompatEditText.setClickable(!z10);
            if (appCompatEditText.isEnabled()) {
                appCompatEditText.setMaxLines(4);
            }
        }
        if (z10) {
            TextView textView = this.f46751d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        } else {
            TextView textView2 = this.f46751d;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        if (z10 && (view2 = this.f46753f) != null) {
            view2.setVisibility(0);
        }
        this.f46766s = new a();
    }

    public m(View view, Dialog dialog, SocialStatus socialStatus, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : view, (i10 & 2) != 0 ? null : dialog, (i10 & 4) != 0 ? new SocialStatus(true, true, true, true) : socialStatus, (i10 & 8) != 0 ? false : z10);
    }
}
