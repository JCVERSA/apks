package com.transsion.tools.fragments;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.privateroom.api.beans.FeedbackBean;
import com.transsion.tools.R;
import com.transsion.utils.ToastUtils;
import defpackage.a64;
import defpackage.e07;
import defpackage.fo1;
import defpackage.ge;
import defpackage.hb0;
import defpackage.k29;
import defpackage.kg8;
import defpackage.mc7;
import defpackage.tg8;
import defpackage.uv3;
import defpackage.vb;
import defpackage.zf1;
import java.util.concurrent.Callable;

public class PrivacyHelpFragment extends BaseFragment implements View.OnClickListener {
    public boolean l;
    public View m;
    public TextView n;

    public class a extends fo1 {
        public a() {
        }

        @Override
        public void onClick(View view) {
            PrivacyHelpFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://chat.whatsapp.com/IDflRYYwf5vC51nS9toNXi")));
        }
    }

    public class b extends fo1 {
        public b() {
        }

        @Override
        public void onClick(View view) {
            Uri uri = Uri.parse("mailto:visha.rd@transsion.com");
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(uri);
            PrivacyHelpFragment.this.startActivity(intent);
        }
    }

    private void R(View view) {
        ((TextView) view.findViewById(R.id.title_bar_title)).setText(this.l ? R.string.forget_email : R.string.cannot_receive_verify_code);
    }

    private void S(View view) {
        view.findViewById(R.id.verify_container).setVisibility(this.l ? 8 : 0);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.m = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        ((TextView) view.findViewById(R.id.tv_message_hint)).setText(this.l ? R.string.forget_email_contact_message : R.string.verify_code_contact_message);
        TextView textView = (TextView) view.findViewById(R.id.tv_message_whatsapp);
        int color = getResources().getColor(R.color.os_text_tertiary_color);
        a aVar = new a();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String string = this.mContext.getResources().getString(R.string.whats_app);
        String string2 = this.mContext.getResources().getString(R.string.contact_way_whats_app, string);
        SpannableString spannableString = new SpannableString(string2);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(color);
        int iIndexOf = string2.indexOf(string);
        int length = string.length() + iIndexOf;
        spannableString.setSpan(aVar, iIndexOf, length, 18);
        spannableString.setSpan(foregroundColorSpan, iIndexOf, length, 18);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) spannableString);
        textView.setText(spannableStringBuilder);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_message_email);
        b bVar = new b();
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        String string3 = this.mContext.getResources().getString(R.string.email);
        String string4 = this.mContext.getResources().getString(R.string.contact_way_email, string3);
        SpannableString spannableString2 = new SpannableString(string4);
        ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(color);
        int iIndexOf2 = string4.indexOf(string3);
        int length2 = string3.length() + iIndexOf2;
        spannableString2.setSpan(bVar, iIndexOf2, length2, 18);
        spannableString2.setSpan(foregroundColorSpan2, iIndexOf2, length2, 18);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder2.append((CharSequence) spannableString2);
        textView2.setText(spannableStringBuilder2);
        if (this.l) {
            this.n = (TextView) view.findViewById(R.id.btn_delayed_access);
            TextView textView3 = (TextView) view.findViewById(R.id.tv_message_delayed_access);
            boolean zC = uv3.c(getContext());
            textView3.setVisibility(zC ? 8 : 0);
            this.n.setVisibility(zC ? 8 : 0);
            textView3.setText(String.format(this.mContext.getResources().getString(R.string.visha_delay_access_space_info), String.valueOf(kg8.b())));
            if (MMKV.p().e("mmkv_key_user_open_delayed_access_by_hidden_space", false)) {
                this.n.setEnabled(false);
            } else {
                this.n.setEnabled(true);
                this.n.setOnClickListener(this);
            }
        }
    }

    public static PrivacyHelpFragment V(boolean z) {
        PrivacyHelpFragment privacyHelpFragment = new PrivacyHelpFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("privacy_help_email", z);
        privacyHelpFragment.setArguments(bundle);
        return privacyHelpFragment;
    }

    public final Long T() {
        return Long.valueOf(kg8.a.a(this.mContext));
    }

    public final void U(Long l) {
        if (l.longValue() > kg8.d()) {
            MMKV.p().u("mmkv_key_user_operated_delayed_access_time_by_hidden_space", l.longValue());
            MMKV.p().y("mmkv_key_user_open_delayed_access_by_hidden_space", true);
            ToastUtils.r(String.format(ge.e() ? this.mContext.getResources().getString(R.string.visha_delay_access_of_minutes) : this.mContext.getResources().getString(R.string.visha_delay_access_of_hours), String.valueOf(kg8.b())));
        }
    }

    public final void W() {
        FeedbackBean feedbackBean = new FeedbackBean();
        feedbackBean.setModuleId(8);
        feedbackBean.setProblemTypeId(17);
        feedbackBean.setFeedbackTypeId(25);
        feedbackBean.setRemark(tg8.d().c() + ", " + com.transsion.utils.deviceinfo.a.j());
        feedbackBean.setAppVersion(com.blankj.utilcode.util.b.d());
        feedbackBean.setProblemDescribe("隐私文件夹反馈");
        tg8.d().m(feedbackBean);
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.title_bar_back) {
            a64.a((BaseActivity) this.mContext);
            return;
        }
        if (id == R.id.btn_delayed_access) {
            if (!e07.e(this.mContext)) {
                ToastUtils.s(R.string.visha_delay_access_countdown_notice_no_network);
            } else {
                this.n.setEnabled(false);
                mc7.D(new Callable() {
                    @Override
                    public final Object call() {
                        return this.b.T();
                    }
                }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        this.b.U((Long) obj);
                    }
                });
            }
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.l = arguments.getBoolean("privacy_help_email");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_privacy_help;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        S(view);
        R(view);
        W();
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
        hb0.markDirect("vd_more_hide_cot_show");
    }
}
