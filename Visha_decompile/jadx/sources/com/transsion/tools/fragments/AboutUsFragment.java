package com.transsion.tools.fragments;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppLayoutConfigHelper;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.tools.R;
import com.transsion.tools.fragments.AboutUsFragment;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.f5;
import defpackage.ge;
import defpackage.k29;
import defpackage.mc7;
import defpackage.of8;
import defpackage.p06;
import defpackage.se;
import defpackage.t74;
import defpackage.vb;
import defpackage.w6c;
import defpackage.zf1;
import java.util.concurrent.TimeUnit;

public class AboutUsFragment extends BaseFragment {
    public int l;
    public int m;
    public int n;
    public int o;
    public final View.OnClickListener p = new a();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            int id = view.getId();
            if (R.id.ll_privacy == id) {
                Intent intent = new Intent("com.transsion.sniffer_load.open_html_url");
                intent.setPackage(se.a().getPackageName());
                intent.putExtra(VkConstant.URL, of8.g(((BaseFragment) AboutUsFragment.this).mContext));
                intent.putExtra("title", AboutUsFragment.this.getResources().getString(R.string.privacy_policy));
                f5.c(intent, ((BaseFragment) AboutUsFragment.this).mActivity);
                p06.d0("setup_about_privacy");
                return;
            }
            if (R.id.ll_agreement == id) {
                Intent intent2 = new Intent("com.transsion.sniffer_load.open_html_url");
                intent2.setPackage(se.a().getPackageName());
                intent2.putExtra(VkConstant.URL, of8.b(((BaseFragment) AboutUsFragment.this).mContext));
                intent2.putExtra("title", AboutUsFragment.this.getResources().getString(R.string.user_agreement));
                f5.c(intent2, ((BaseFragment) AboutUsFragment.this).mActivity);
                p06.d0("setup_about_user");
                return;
            }
            if (R.id.title_bar_back == id) {
                AboutUsFragment.this.getActivity().onBackPressed();
            } else if (R.id.ll_change_environment == id) {
                AboutUsFragment.this.m0();
            }
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final int[] b;

        public b(int[] iArr) {
            this.b = iArr;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            AboutUsFragment.this.l = this.b[0];
            AboutUsFragment.this.m = this.b[1];
            AboutUsFragment.this.n = this.b[2];
            AboutUsFragment.this.o = this.b[3];
            w6c.t(((BaseFragment) AboutUsFragment.this).mContext, "environment_mode", AboutUsFragment.this.l);
            w6c.t(((BaseFragment) AboutUsFragment.this).mContext, "area_mode", AboutUsFragment.this.m);
            w6c.t(((BaseFragment) AboutUsFragment.this).mContext, "gslb_mode", AboutUsFragment.this.n);
            w6c.t(((BaseFragment) AboutUsFragment.this).mContext, "push_env_mode", AboutUsFragment.this.o);
            Toast.makeText(((BaseFragment) AboutUsFragment.this).mContext, "Exit now to change Dev Config", 0).show();
            AboutUsFragment.this.i0();
        }
    }

    public class c implements RadioGroup.OnCheckedChangeListener {
        public final int[] a;
        public final int b;

        public c(int[] iArr, int i) {
            this.a = iArr;
            this.b = i;
        }

        @Override
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            this.a[this.b] = radioGroup.indexOfChild(radioGroup.findViewById(i));
        }
    }

    public void i0() {
        mc7.K(this).i(500L, TimeUnit.MILLISECONDS).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.k0((AboutUsFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                System.exit(0);
            }
        });
    }

    public final void j0(LinearLayout linearLayout, String str, String[] strArr, int i, int[] iArr) {
        TextView textView = new TextView(this.mContext);
        textView.setText(str);
        textView.setTextSize(2, 20.0f);
        textView.setPadding(0, 16, 0, 8);
        linearLayout.addView(textView);
        RadioGroup radioGroup = new RadioGroup(this.mContext);
        radioGroup.setOrientation(1);
        radioGroup.setPadding(0, 0, 0, 20);
        int i2 = 0;
        while (i2 < strArr.length) {
            RadioButton radioButton = new RadioButton(this.mContext);
            radioButton.setText(strArr[i2]);
            radioButton.setTextSize(2, 18.0f);
            radioButton.setId(View.generateViewId());
            radioButton.setChecked(i2 == iArr[i]);
            radioGroup.addView(radioButton);
            i2++;
        }
        radioGroup.setOnCheckedChangeListener(new c(iArr, i));
        linearLayout.addView(radioGroup);
    }

    public final Boolean k0(AboutUsFragment aboutUsFragment) {
        CacheManager.getInstance().removeCache(AppLayoutConfigHelper.LAYOUT_CACHE_KEY);
        w6c.s(this.mContext, w6c.a, false);
        w6c.s(this.mContext, w6c.b, true);
        w6c.u(this.mContext, w6c.e, 0);
        return Boolean.TRUE;
    }

    public void m0() {
        if (this.mContext == null) {
            return;
        }
        String[] stringArray = getResources().getStringArray(R.array.dev_environment);
        String[] stringArray2 = getResources().getStringArray(R.array.areas);
        String[] stringArray3 = getResources().getStringArray(R.array.dev_gslb_support);
        String[] stringArray4 = getResources().getStringArray(R.array.dev_push_environment);
        int[] iArr = {0, 0, 0, 0};
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.dialog_dev_config_groups, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.radio_container);
        iArr[0] = this.l;
        iArr[1] = this.m;
        iArr[2] = this.n;
        iArr[3] = this.o;
        j0(linearLayout, "Change Dev Environment", stringArray, 0, iArr);
        j0(linearLayout, "Change Area", stringArray2, 1, iArr);
        j0(linearLayout, "Change Gslb Mode", stringArray3, 2, iArr);
        j0(linearLayout, "Change Push Environment", stringArray4, 3, iArr);
        new AlertDialog.Builder(this.mContext).setView(viewInflate).setPositiveButton("Confirm", new b(iArr)).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create().show();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p06.d0("setup_about_show");
        return layoutInflater.inflate(R.layout.fragment_about_us, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        view.findViewById(R.id.ll_privacy).setOnClickListener(this.p);
        view.findViewById(R.id.ll_agreement).setOnClickListener(this.p);
        view.findViewById(R.id.title_bar_back).setOnClickListener(this.p);
        ((TextView) view.findViewById(R.id.title_bar_title)).setText(R.string.about);
        if (ge.e()) {
            this.l = w6c.d(this.mContext, "environment_mode", 0);
            this.m = w6c.d(this.mContext, "area_mode", 6);
            this.n = w6c.d(this.mContext, "gslb_mode", 0);
            this.o = w6c.d(this.mContext, "push_env_mode", 0);
            int i = R.id.ll_change_environment;
            view.findViewById(i).setVisibility(0);
            view.findViewById(i).setOnClickListener(this.p);
        }
    }
}
