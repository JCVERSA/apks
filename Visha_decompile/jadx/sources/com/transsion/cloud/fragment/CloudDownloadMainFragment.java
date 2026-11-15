package com.transsion.cloud.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.cloud.fragment.CloudDownloadMainFragment;
import com.transsion.netdisk.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.fragment.DownloadGuideFragment;
import com.transsion.sniffer_load.fragment.DownloadMainFragmentNew;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import defpackage.a64;
import defpackage.p06;
import defpackage.w6c;
import defpackage.y45;
import defpackage.ydc;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ!\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0014\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0016R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u0016R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u0016R\u0018\u0010#\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u0016¨\u0006$"}, d2 = {"Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;", "Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;", MethodDecl.initName, "()V", "Lzfb;", "h1", "Landroid/view/View;", "view", "initView", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "needAnimation", "()Z", "J0", ExifInterface.LONGITUDE_EAST, "Landroid/view/View;", "mIvLogo", "Landroid/widget/TextView;", "F", "Landroid/widget/TextView;", "mTvTitle", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mFlDownloadManager", "H", "mIconBack", "I", "mIvDownloadGuid", "J", "mIvDownloadGuidCloud", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudDownloadMainFragment extends DownloadMainFragmentNew {

    public View mIvLogo;

    public TextView mTvTitle;

    public View mFlDownloadManager;

    public View mIconBack;

    public View mIvDownloadGuid;

    public View mIvDownloadGuidCloud;

    public static final void f1(CloudDownloadMainFragment cloudDownloadMainFragment, View view) {
        FragmentActivity activity = cloudDownloadMainFragment.getActivity();
        if (activity != null) {
            BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
            if (baseActivity != null) {
                a64.a(baseActivity);
            }
        }
    }

    public static final void g1(CloudDownloadMainFragment cloudDownloadMainFragment, View view) {
        cloudDownloadMainFragment.stopEdit();
        a64.n((DownloadGuideFragment) new DownloadGuideFragment().setBaseActivity((BaseActivity) cloudDownloadMainFragment.getActivity()), true, true);
        p06.f0(null, "dl_guide_cl", 9324L);
    }

    private final void h1() {
        if (w6c.c(this.mContext, "need_download_guide", true)) {
            w6c.r(this.mContext, "need_download_guide", false);
            new com.transsion.sniffer_load.a().b(this.mContext);
        }
    }

    private final void initView(View view) {
        this.mIvLogo = view.findViewById(R.id.iv_logo);
        this.mTvTitle = (TextView) view.findViewById(R.id.tv_title);
        this.mFlDownloadManager = view.findViewById(R.id.fl_download_manager);
        this.mIconBack = view.findViewById(R.id.title_bar_back);
        this.mIvDownloadGuid = view.findViewById(R.id.iv_download_guide);
        this.mIvDownloadGuidCloud = view.findViewById(R.id.iv_download_guide_cloud);
        View view2 = this.mIvLogo;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = this.mTvTitle;
        if (textView2 != null) {
            Context context = this.mContext;
            textView2.setText(context != null ? context.getString(R.string.visha_global_network_download_title) : null);
        }
        View view3 = this.mFlDownloadManager;
        if (view3 != null) {
            view3.setVisibility(8);
        }
        View view4 = this.mIconBack;
        if (view4 != null) {
            view4.setVisibility(0);
        }
        View view5 = this.mIconBack;
        if (view5 != null) {
            view5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view6) {
                    CloudDownloadMainFragment.f1(this.b, view6);
                }
            });
        }
        View view6 = this.mIvDownloadGuid;
        if (view6 != null) {
            view6.setVisibility(8);
        }
        View view7 = this.mIvDownloadGuidCloud;
        if (view7 != null) {
            view7.setVisibility(0);
        }
        View view8 = this.mIvDownloadGuidCloud;
        if (view8 != null) {
            view8.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view9) {
                    CloudDownloadMainFragment.g1(this.b, view9);
                }
            });
        }
    }

    @Override
    public boolean J0() {
        return false;
    }

    @Override
    public boolean needAnimation() {
        return true;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        try {
            if (SearchAnimManager.getInstance().x()) {
                SearchAnimManager.getInstance().f();
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        this.z = Boolean.TRUE;
        super.onViewCreated(view, savedInstanceState);
        backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        initView(view);
        if (ydc.b) {
            h1();
        }
    }
}
