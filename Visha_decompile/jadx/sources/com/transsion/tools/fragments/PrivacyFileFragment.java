package com.transsion.tools.fragments;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.fragments.VideoPlayListFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.SortItem;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.privateroom.api.beans.PrivateFile;
import com.transsion.tools.R;
import com.transsion.tools.activities.PasswordSettingActivity;
import com.transsion.tools.activities.PrivacyFileActivity;
import com.transsion.tools.fragments.PrivacyFileFragment;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.av3;
import defpackage.dp3;
import defpackage.h27;
import defpackage.hb0;
import defpackage.jf;
import defpackage.k29;
import defpackage.mc7;
import defpackage.nr3;
import defpackage.p06;
import defpackage.q06;
import defpackage.sv3;
import defpackage.t74;
import defpackage.tg8;
import defpackage.tpb;
import defpackage.uv3;
import defpackage.vb;
import defpackage.zf1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PrivacyFileFragment extends VideoPlayListFragment implements h27.b {
    public PopupWindow e1;

    public class a extends GridLayoutManager.SpanSizeLookup {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        @Override
        public int getSpanSize(int i) {
            if (PrivacyFileFragment.this.r == null || PrivacyFileFragment.this.r.size() <= 0 || PrivacyFileFragment.this.r.size() <= i || !((MediaItem) PrivacyFileFragment.this.r.get(i)).isTimeItem) {
                return 1;
            }
            return this.a;
        }
    }

    public class b implements FileOperateUtils.k {
        public b() {
        }

        @Override
        public void d() {
            PrivacyFileFragment.this.postDelayLoadData();
        }

        @Override
        public void f() {
            PrivacyFileFragment.this.editMode(false);
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    public class c implements FileOperateUtils.k {
        public c() {
        }

        @Override
        public void c(PrivateFile privateFile) {
            if (tpb.j0().T(privateFile.getOriginalPath())) {
                dp3.e().b.add(privateFile.getOriginalPath());
            }
        }

        @Override
        public void d() {
        }

        @Override
        public void g(String str, String str2) {
        }

        @Override
        public void i() {
            PrivacyFileFragment.this.postDelayLoadData();
            ((BaseFragment) PrivacyFileFragment.this).mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        }
    }

    public class d implements sv3.b {
        public final Context a;

        public d(Context context) {
            this.a = context;
        }

        @Override
        public void a(int i, int i2) {
        }

        @Override
        public void b(int i, int i2) {
            q06.a("vd_more_hide_bio_verify", "is_verified", Boolean.FALSE);
            PrivacyFileFragment.this.r5(i, false);
        }

        @Override
        public void c(int i, int i2) {
            q06.a("vd_more_hide_bio_verify", "is_verified", Boolean.TRUE);
            PrivacyFileFragment.this.s5(this.a, i);
            PrivacyFileFragment.this.r5(i, true);
        }

        @Override
        public void d(int i, int i2) {
        }
    }

    @Override
    public void P3() {
        super.P3();
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity instanceof PrivacyFileActivity) {
            ((PrivacyFileActivity) baseActivity).p0(true);
        }
    }

    @Override
    public void U3(final MediaItem mediaItem, final boolean z) {
        mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.o5(mediaItem, (PrivacyFileFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.p5(mediaItem, z, (Uri) obj);
            }
        });
    }

    @Override
    public void V3() {
        super.V3();
        hb0.markTrackSingle("vd_more_hide_mp_list_cl", hb0.KEY_NAME_MODE, O2() == 3 ? "thumbnail" : "list");
    }

    public final void d5() {
        a64.n((PrivacyFileAddFragment) new PrivacyFileAddFragment().d2(true).setBaseActivity(this.mActivity), true, true);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        String str;
        Object obj;
        if (i == 1140) {
            List listB = tg8.d().b();
            if (listB != null && listB.size() > 0) {
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    PrivateFile privateFile = (PrivateFile) it.next();
                    if (privateFile != null && privateFile.getOriginalPath() != null && objArr[0] != null && privateFile.getHidePath().equals(objArr[0])) {
                        it.remove();
                    }
                }
            }
            Iterator it2 = this.r.iterator();
            while (it2.hasNext()) {
                MediaItem mediaItem = (MediaItem) it2.next();
                if (mediaItem != null && (str = mediaItem.data) != null && (obj = objArr[0]) != null && str.equals(obj)) {
                    it2.remove();
                }
            }
            if (this.t != null) {
                updateShowUI();
                this.t.notifyDataSetChanged();
            }
        }
    }

    public final void e5() {
        PopupWindow popupWindow = this.e1;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.e1.dismiss();
        this.e1 = null;
    }

    @Override
    public void editMode(boolean z) {
        super.editMode(z);
    }

    public final void f5(View view) {
        View viewInflate = ((ViewStub) view.findViewById(R.id.xhide_notification_view)).inflate();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.findViewById(com.transsion.magicvideo.R.id.ll_main_fragment).getLayoutParams();
        layoutParams.removeRule(3);
        layoutParams.addRule(3, com.transsion.magicvideo.R.id.ll_open);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.tv_open)).setText(jf.i(getContext()));
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.g5(view2);
            }
        });
    }

    public void fingerPrintMethod(int i, int i2, int i3, int i4, int i5) {
        q06.a("vd_more_hide_bio_open", null, null);
        Context context = (Context) new WeakReference(this.mActivity).get();
        if (context != null) {
            new sv3(context, new d(context), i, i5).g(context, i2, i3, i4);
            if (uv3.d(context)) {
                uv3.h(getContext(), "isFirstHideLaunch", false);
            }
        }
    }

    public final void g5(View view) {
        hb0.markTrackSingle("vd_more_hide_mp_set_btn_cl", hb0.KEY_NAME_BTN, "Xhide");
        hb0.markDirect("vd_more_hide_mp_xhidecl");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.xui.xhide", "com.xui.xhide.SecBoxActivity"));
        try {
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public final List h5(PrivacyFileFragment privacyFileFragment) {
        List listT = SortUtil.t(nr3.f(tg8.d().b()));
        List arrayList = listT == null ? new ArrayList() : listT;
        H0(listT);
        this.r.clear();
        this.r.addAll(arrayList);
        return arrayList;
    }

    public final void i5(List list) {
        this.mDataUpdated = true;
        if (this.mbFragmentShowCompleted) {
            updateShowUI();
        }
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        String string = getResources().getString(R.string.privacy_space);
        this.B = string;
        this.mTitleTv.setText(string);
    }

    public final void j5() {
        editMode(false);
    }

    public final void k5(View view) {
        e5();
        hb0.markTrackSingle("vd_more_hide_mp_set_btn_cl", hb0.KEY_NAME_BTN, "Add Video");
        d5();
    }

    public final void l5(View view) {
        e5();
        PrivacyPasswordFragment privacyPasswordFragment = (PrivacyPasswordFragment) PrivacyPasswordFragment.k0(3).setBaseActivity(this.mActivity);
        privacyPasswordFragment.setNeedBg(true);
        a64.n(privacyPasswordFragment, true, true);
        hb0.markTrackSingle("vd_more_hide_mp_set_btn_cl", hb0.KEY_NAME_BTN, "Change Password");
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.h5((PrivacyFileFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.i5((List) obj);
            }
        });
    }

    public final void m5(View view) {
        e5();
        Intent intent = new Intent(this.mActivity, (Class<?>) PasswordSettingActivity.class);
        intent.putExtra("privacy_setting_mode", 5);
        startActivityForResult(intent, 5);
    }

    public final void n5(View view) {
        e5();
        if (uv3.c(getContext()) && sv3.e(getContext())) {
            fingerPrintMethod(11, R.string.disable_biometric_unlock, R.string.biometric_unlock_hint, 0, 0);
        } else {
            if (uv3.c(getContext()) || !sv3.e(getContext())) {
                return;
            }
            fingerPrintMethod(22, R.string.enable_biometric_unlock, R.string.biometric_unlock_hint, 0, 0);
        }
    }

    public final Uri o5(MediaItem mediaItem, PrivacyFileFragment privacyFileFragment) {
        Cursor cursorQuery = this.mContext.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, "_data=? ", new String[]{mediaItem.data}, null);
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            return null;
        }
        int i = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("_id"));
        return Uri.withAppendedPath(MediaStore.Files.getContentUri("external"), "" + i);
    }

    @Override
    public void onClick(View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        if (view.getId() == com.transsion.magicvideo.R.id.add_video_tv) {
            d5();
            hb0.markDirect("vd_more_hide_mp_add_cl");
        } else if (view.getId() == com.transsion.magicvideo.R.id.menu_more) {
            q5(view);
            hb0.markDirect("vd_more_hide_mp_set_cl");
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.s = 42;
        h27.c().b(this, 1140);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        e5();
    }

    @Override
    public void onItemClick(int i) {
        ArrayList arrayListD = this.t.D();
        this.E = arrayListD;
        this.v.setSelectItems(arrayListD);
        this.v.setOperateFinishListener(new AppFootActionBar.c() {
            @Override
            public final void finish() {
                this.a.j5();
            }
        });
        int iCheckItemIndex = this.v.checkItemIndex(i);
        if (iCheckItemIndex == 0) {
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.E, this.s, true);
            this.mFileOperateUtils = fileOperateUtils;
            fileOperateUtils.i0();
            this.mFileOperateUtils.f0(new b());
            return;
        }
        if (iCheckItemIndex != 1) {
            return;
        }
        this.mFileOperateUtils = new FileOperateUtils(this.mContext, this.E, this.s, true);
        dp3.e().b.clear();
        this.mFileOperateUtils.d0(this.E.size() > 1);
        this.mFileOperateUtils.f0(new c());
        editMode(false);
        hb0.markTrackSingle("vd_more_hide_file_rec", hb0.KEY_NAME_NUM, Integer.valueOf(this.E.size()));
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        MMKV.p().y("mmkv_key_user_open_delayed_access_by_hidden_space", false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        hb0.markDirect("vd_more_hide_mp_show");
        if (jf.o(this.mContext)) {
            f5(view);
        }
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        videoMainRecyclerView.setPadding(videoMainRecyclerView.getPaddingStart(), this.M.getPaddingTop(), this.M.getPaddingEnd(), 0);
        RecyclerViewFastScroller recyclerViewFastScroller = this.N;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.setPadding(recyclerViewFastScroller.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), 0);
        }
    }

    public final void p5(MediaItem mediaItem, boolean z, Uri uri) {
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.folderName = this.B;
            playVideoDataConvertToPlayVideoData.listFlag = this.s;
            playVideoDataConvertToPlayVideoData.fromPlayAll = z;
            playVideoDataConvertToPlayVideoData.bucketId = this.q0.bucketId;
            playVideoDataConvertToPlayVideoData.isPrivate = true;
            playVideoDataConvertToPlayVideoData.playUri = uri;
            if (VideoPlayManager.X().x0() && this.mActivity.isAlertWindowPermissionGranted()) {
                VideoPlayManager.X().o2(playVideoDataConvertToPlayVideoData);
                return;
            }
            Intent intent = new Intent(this.mActivity, (Class<?>) VideoPlayerActivity.class);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(false);
            playVideoDataConvertToPlayVideoData.setShowPicInPic(!playVideoDataConvertToPlayVideoData.isFromNet);
            playVideoDataConvertToPlayVideoData.toIntent(intent);
            VideoPlayerActivity.q1();
            PlayListData.getInstance().mCurrentPlayList.clear();
            PlayListData.getInstance().mShuffleList.clear();
            PlayListData.getInstance().setPlayMediaItem((MediaItem) null);
            this.mActivity.startActivityForResult(intent, 4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x012e  */
    /* JADX WARN: Code duplicated, block: B:35:0x014e  */
    public final void q5(View view) {
        int i;
        int measuredWidth;
        PopupWindow popupWindow = new PopupWindow();
        this.e1 = popupWindow;
        popupWindow.setAnimationStyle(R.style.popup_anim);
        this.e1.setElevation(getResources().getDimension(com.transsion.playercommon.R.dimen.os_popup_menu_shadow_size));
        this.e1.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.os_popup_background, getContext().getTheme()));
        View viewInflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.layout_privacy_more, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_add_video);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.ll_change_password);
        LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.ll_change_email);
        LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.ll_open_close_biometricdialog);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_open_close_biometricdialog);
        if (sv3.e(getContext())) {
            linearLayout4.setVisibility(0);
        } else {
            linearLayout4.setVisibility(8);
        }
        if (uv3.c(getContext())) {
            textView.setText(R.string.disable_biometric_unlock);
        } else {
            textView.setText(R.string.enable_biometric_unlock);
        }
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.k5(view2);
            }
        });
        linearLayout2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.l5(view2);
            }
        });
        linearLayout3.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.m5(view2);
            }
        });
        linearLayout4.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.n5(view2);
            }
        });
        this.e1.setFocusable(true);
        this.e1.setOutsideTouchable(true);
        this.e1.setWidth(-2);
        this.e1.setHeight(-2);
        this.e1.setContentView(viewInflate);
        viewInflate.measure(0, 0);
        boolean z = getResources().getConfiguration().orientation == 2;
        Context context = this.mContext;
        boolean zIsInMultiWindowMode = context instanceof BaseActivity ? ((BaseActivity) context).isInMultiWindowMode() : false;
        if (!av3.z()) {
            if (zIsInMultiWindowMode && z) {
                measuredWidth = viewInflate.getMeasuredWidth() - (view.getWidth() / 2);
            } else {
                i = 0;
            }
            int iD = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(this.mContext, 20.0f);
            if (com.transsion.utils.a.z(getResources().getConfiguration())) {
                if (getActivity() != null || getActivity().isFinishing() || getActivity().isDestroyed()) {
                    return;
                }
                this.e1.showAsDropDown(view, i, iD);
                return;
            }
            if (getActivity() != null || getActivity().isFinishing() || getActivity().isDestroyed()) {
                return;
            }
            this.e1.showAsDropDown(view, i, 0);
            return;
        }
        measuredWidth = view.getWidth();
        i = -measuredWidth;
        int iD2 = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(this.mContext, 20.0f);
        if (com.transsion.utils.a.z(getResources().getConfiguration())) {
            if (getActivity() != null) {
            }
        } else if (getActivity() != null) {
        }
    }

    public final void r5(int i, boolean z) {
        int i2;
        if (i == 22) {
            i2 = z ? R.string.biometric_unlock_success : R.string.biometric_unlock_failure;
        } else {
            i2 = z ? R.string.biometric_lock_success : R.string.biometric_lock_failure;
        }
        ToastUtils.s(i2);
    }

    public final void s5(Context context, int i) {
        uv3.h(context, "fingerprintEnabled", !uv3.c(context));
    }

    @Override
    public void showSortPopupWindow(View view, boolean z) {
        super.showSortPopupWindow(view, z);
        SortItem sortItem = (SortItem) this.mSortPopupWindow.getContentView().findViewById(R.id.item_by_count);
        if (sortItem != null) {
            sortItem.setVisibility(8);
        }
    }

    @Override
    public void t(boolean z) {
        super.t(z);
        hb0.markTrackSingle("vd_more_hide_mp_order_cl", "order_by", p06.g(true));
    }

    @Override
    public void updateShowUI() {
        v1(this.r);
        this.s0.setSpanSizeLookup(new a(O2()));
        this.mMenuMore.setVisibility(((this.I && this.r.size() == 0) || this.isInEditMode) ? 8 : 0);
        G0();
        x1();
        hb0.markTrackTwo("vd_more_hide_mp_show_p", "type", Integer.valueOf(this.r.size() == 0 ? 1 : 0), hb0.KEY_NAME_NUM, Integer.valueOf(this.r.size()));
        if (uv3.d(getContext()) && sv3.e(getContext()) && !uv3.c(getContext())) {
            fingerPrintMethod(22, R.string.enable_biometric_unlock, R.string.biometric_unlock_hint, 0, 0);
        }
    }
}
