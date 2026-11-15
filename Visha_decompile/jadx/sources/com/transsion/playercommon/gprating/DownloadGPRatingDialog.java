package com.transsion.playercommon.gprating;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.MultiFlowLayout;
import com.transsion.widgets.ratingbar.OnRatingChangedListener;
import com.transsion.widgets.ratingbar.RtlDfRatingBar;
import defpackage.f5;
import defpackage.pp3;
import defpackage.py5;
import java.util.ArrayList;

public class DownloadGPRatingDialog extends DialogFragment {
    public int m;
    public TextView n;
    public TextView o;
    public TextView p;
    public TextView q;
    public String r;
    public EditText s;
    public View t;
    public MultiFlowLayout u;
    public float l = 0.0f;
    public int[] v = {R.string.rating_tip_1, R.string.rating_tip_2, R.string.rating_tip_3, R.string.rating_tip_4, R.string.rating_tip_5};
    public int[] w = {R.string.rating_feed_1, R.string.rating_feed_2, R.string.rating_feed_3, R.string.rating_feed_4, R.string.rating_feed_5};

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            DownloadGPRatingDialog.this.p.setText(editable.length() + "/200");
            if (editable.length() == 200) {
                TypedValue typedValue = new TypedValue();
                DownloadGPRatingDialog.this.getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
                DownloadGPRatingDialog.this.p.setTextColor(typedValue.data);
            } else {
                DownloadGPRatingDialog.this.p.setTextColor(R.color.os_text_tertiary_color);
            }
            DownloadGPRatingDialog.this.H();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public void L(View view) {
        if (!I(this.l, 0.0f)) {
            StringBuilder sb = new StringBuilder();
            if (this.u.getSelectedLabels() != null && this.u.getSelectedLabels().size() > 0) {
                int size = this.u.getSelectedLabels().size();
                for (int i = 0; i < size; i++) {
                    if (i != size - 1) {
                        sb.append(this.u.getSelectedLabels().get(i).type);
                        sb.append("_");
                    } else {
                        sb.append(this.u.getSelectedLabels().get(i).type);
                    }
                }
            }
            if (!TextUtils.isEmpty(this.s.getText().toString())) {
                sb.append("_");
                sb.append(this.s.getText().toString());
            }
            py5.d(this.m, this.l, sb.toString(), this.r);
            MMKV.p().y("mmkv_gp_rating_download", true);
        }
        if (I(this.l, 5.0f)) {
            P(getActivity());
            getDialog().dismiss();
        } else if (I(this.l, 0.0f)) {
            ToastUtils.s(R.string.gp_rating_check);
        } else {
            VishaFeedbackPage.f(getActivity(), getString(R.string.feedback), 2, String.valueOf(this.l), this.s.getText().toString());
            getDialog().dismiss();
        }
    }

    public void M(View view) {
        getDialog().dismiss();
        MMKV.p().t("gp_download_count_Limit", 6);
        MMKV.p().t("gp_download_count_time", 0);
        MMKV.p().t("gp_download_count", 0);
        py5.b(this.m, this.r);
    }

    public static DownloadGPRatingDialog O(String str) {
        DownloadGPRatingDialog downloadGPRatingDialog = new DownloadGPRatingDialog();
        downloadGPRatingDialog.r = str;
        return downloadGPRatingDialog;
    }

    public static void P(Context context) {
        try {
            if (context.getPackageName() != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
                intent.setPackage("com.android.vending");
                intent.addFlags(268435456);
                f5.c(intent, context);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + context.getPackageName()));
            intent2.addFlags(268435456);
            f5.c(intent2, context);
        }
    }

    public final void G() {
        int i = (int) this.l;
        this.q.setText(this.v[i - 1]);
        boolean z = i == 5;
        this.u.setVisibility(z ? 8 : 0);
        this.t.setVisibility(z ? 8 : 0);
        this.o.setVisibility(z ? 0 : 8);
        if (!z) {
            this.s.requestFocus();
        }
        H();
    }

    public final void H() {
        this.n.setEnabled(I(this.l, 5.0f) || (!I(this.l, 0.0f) && (!TextUtils.isEmpty(this.s.getText().toString()) || this.u.getSelectedLabels().size() > 0)));
    }

    public boolean I(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    public final void J(ImageView imageView, float f) {
        if (I(f, 1.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_one);
        } else if (I(f, 2.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_two);
        } else if (I(f, 3.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_three);
        } else if (I(f, 4.0f) || I(f, 4.5f)) {
            imageView.setImageResource(R.drawable.ic_rating_four);
            f = 4.0f;
        }
        boolean zI = I(f, 5.0f);
        if (zI) {
            imageView.setImageResource(R.drawable.ic_rating_five);
        }
        imageView.setLayoutParams(new LinearLayout.LayoutParams((int) getContext().getResources().getDimension(zI ? R.dimen.gp_guide_normal_five_w_small : R.dimen.gp_guide_normal_small), (int) getContext().getResources().getDimension(zI ? R.dimen.gp_guide_normal_five_h_small : R.dimen.gp_guide_normal_small)));
        this.n.setText(zI ? R.string.gp_go_rate : R.string.submit);
        this.l = f;
        G();
    }

    public final void K(MultiFlowLayout.FlowBean flowBean, Object obj) {
        H();
    }

    public final boolean N(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        dismiss();
        return false;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_download_gp_rating, (ViewGroup) null);
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = com.transsion.utils.a.m(getContext()) - 96;
        attributes.height = -2;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.gravity = 81;
        attributes2.width = getResources().getDisplayMetrics().widthPixels - 96;
        window.getDecorView().setBackgroundColor(getContext().getResources().getColor(R.color.transparent));
        window.getDecorView().setPadding(0, 0, 0, 162);
        window.setAttributes(attributes2);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RtlDfRatingBar rtlDfRatingBar = (RtlDfRatingBar) view.findViewById(R.id.score);
        final ImageView imageView = (ImageView) view.findViewById(R.id.bg_top);
        this.n = (TextView) view.findViewById(R.id.submit);
        this.o = (TextView) view.findViewById(R.id.rate_tip);
        this.q = (TextView) view.findViewById(R.id.rating_tip);
        this.s = (EditText) view.findViewById(R.id.input);
        this.p = (TextView) view.findViewById(R.id.input_tip);
        this.u = (MultiFlowLayout) view.findViewById(R.id.tag);
        this.t = view.findViewById(R.id.input_lay);
        this.m = MMKV.p().g("count", 0) + 1;
        this.o.setText(pp3.c ? R.string.gp_rating_tip_pre : R.string.gp_rating_tip);
        MMKV.p().t("count", this.m);
        py5.e(this.m, this.r);
        rtlDfRatingBar.setOnRatingChangedListener(new OnRatingChangedListener() {
            @Override
            public final void onRatingChanged(float f) {
                this.a.J(imageView, f);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int[] iArr = this.w;
            if (i >= iArr.length) {
                break;
            }
            String string = getString(iArr[i]);
            i++;
            arrayList.add(new MultiFlowLayout.FlowBean(string, i));
        }
        this.u.setLabels(arrayList, true);
        this.u.setOnTagClickListener(new MultiFlowLayout.OnTagClickListener() {
            @Override
            public final void onTagClick(MultiFlowLayout.FlowBean flowBean, Object obj) {
                this.a.K(flowBean, obj);
            }
        });
        this.s.addTextChangedListener(new a());
        setCancelable(false);
        view.findViewById(R.id.submit).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.L(view2);
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.M(view2);
            }
        });
        if (getDialog() != null) {
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return this.b.N(dialogInterface, i2, keyEvent);
                }
            });
        }
    }

    public void showListDialog(Context context, String str) {
        if (context instanceof FragmentActivity) {
            ((FragmentActivity) context).getSupportFragmentManager().beginTransaction().add(this, str).commitAllowingStateLoss();
        }
    }
}
