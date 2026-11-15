package com.transsion.tools.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.tools.activities.PasswordSettingActivity;
import defpackage.hb0;

public class PasswordSuccessFragment extends BaseFragment implements View.OnClickListener {
    public TextView l;
    public int m;
    public int n;

    public static PasswordSuccessFragment P(int i) {
        PasswordSuccessFragment passwordSuccessFragment = new PasswordSuccessFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_setting_mode", i);
        bundle.putInt("privacy_from_page", 0);
        passwordSuccessFragment.setArguments(bundle);
        return passwordSuccessFragment;
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.btn_next) {
            ((PasswordSettingActivity) this.mActivity).u0();
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.m = arguments.getInt("privacy_setting_mode");
            this.n = arguments.getInt("privacy_from_page");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_password_success;
    }

    @Override
    public void onResume() {
        super.onResume();
        MMKV.p().y("mmkv_key_user_open_delayed_access_by_hidden_space", false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        int i;
        TextView textView = (TextView) view.findViewById(R.id.btn_next);
        this.l = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_message);
        int i2 = this.m;
        if (i2 == 5) {
            i = R.string.privacy_new_email_set_success;
        } else {
            i = i2 == 1 ? R.string.privacy_password_set_success : R.string.privacy_new_password_set_success;
        }
        textView2.setText(i);
        hb0.markTrackSingle("vd_more_hide_done_show", "type", Integer.valueOf(this.m != 1 ? 0 : 1));
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
    }
}
