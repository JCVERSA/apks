package com.transsion.magicvideo.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.markpoint.MarkFileTransferInfo;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.widgets.VideoPlayListAddBucketView;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.FileOperateMenuAdapter;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.a;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import defpackage.az5;
import defpackage.cd;
import defpackage.da7;
import defpackage.h27;
import defpackage.iia;
import defpackage.jf;
import defpackage.ox8;
import defpackage.p06;
import defpackage.pp3;
import defpackage.tpb;
import defpackage.vg9;
import defpackage.w6c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class VideoSheetDialogActivity extends RxPermissionOSBottomSheetDialog implements BaseQuickAdapter.OnItemClickListener, SheetDialogParamsConstant {
    public MediaItem N;
    public ArrayList P;
    public List Q;
    public int R;
    public FileOperateMenuAdapter T;
    public View U;
    public boolean V;
    public boolean W;
    public boolean X;
    public int O = 0;
    public List S = new ArrayList();

    /* JADX WARN: Code duplicated, block: B:11:0x0012  */
    private void A0(FileOperateItem fileOperateItem) {
        int i = this.R;
        if (i == 1) {
            fileOperateItem.setIconText(R.string.os_delete);
        } else if (i != 30) {
            if (i == 32) {
                fileOperateItem.setIconText(R.string.os_delete);
            } else if (i != 33) {
                return;
            }
        }
        fileOperateItem.setIconText(R.string.os_Remove);
    }

    private void m0() {
        OSPageView oSPageViewAddPage = addPage(s0(this.N));
        oSPageViewAddPage.setTitle(this.N.displayName).setCloseIconVisibility(false);
        da7.a(oSPageViewAddPage);
    }

    private List r0(MediaItem mediaItem) {
        String str;
        String stringExtra = getIntent().getStringExtra(SheetDialogParamsConstant.MEDIA_TYPE);
        boolean zA = true;
        boolean z = (TextUtils.isEmpty(stringExtra) || MediaItem.MediaType.VIDEO.toString().equals(stringExtra)) ? false : true;
        ArrayList arrayList = new ArrayList();
        boolean z2 = (mediaItem == null || TextUtils.isEmpty(mediaItem.data) || !new File(mediaItem.data).exists()) ? false : true;
        boolean z3 = (mediaItem == null || TextUtils.isEmpty(mediaItem.data) || !tpb.j0().T(mediaItem.data)) ? false : true;
        if (this.W) {
            if (!pp3.j && Build.VERSION.SDK_INT >= 30 && mediaItem != null && (str = mediaItem.data) != null) {
                zA = true ^ ox8.a(str);
            }
            if (z2) {
                FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_rename, R.string.rename, 2, zA);
                fileOperateItem.setIconText(R.string.os_edit);
                arrayList.add(fileOperateItem);
            }
            FileOperateItem fileOperateItem2 = new FileOperateItem(R.drawable.ic_delete, R.string.delete, 13, zA);
            fileOperateItem2.setIconText(R.string.os_delete);
            arrayList.add(fileOperateItem2);
            FileOperateItem fileOperateItem3 = new FileOperateItem(R.drawable.ic_info, R.string.info, 6);
            fileOperateItem3.setIconText(R.string.os_info);
            arrayList.add(fileOperateItem3);
        } else if (this.X) {
            FileOperateItem fileOperateItem4 = new FileOperateItem(R.drawable.ic_rename, R.string.rename, 2, true);
            fileOperateItem4.setIconText(R.string.os_edit);
            arrayList.add(fileOperateItem4);
            FileOperateItem fileOperateItem5 = new FileOperateItem(R.drawable.ic_share, R.string.share, 4);
            fileOperateItem5.setIconText(R.string.os_share);
            arrayList.add(fileOperateItem5);
            FileOperateItem fileOperateItem6 = new FileOperateItem(R.drawable.icon_download_file, R.string.download, 14, true);
            fileOperateItem6.setIconText(R.string.os_download);
            arrayList.add(fileOperateItem6);
            FileOperateItem fileOperateItem7 = new FileOperateItem(R.drawable.ic_delete, R.string.delete, 12, true);
            fileOperateItem7.setIconText(R.string.os_delete);
            arrayList.add(fileOperateItem7);
        } else if (this.R != 42) {
            if (mediaItem.type.equals(MediaItem.MediaType.VIDEO) && z2 && !z) {
                FileOperateItem fileOperateItem8 = new FileOperateItem(com.transsion.magicvideo.R.drawable.ic_menu_trans, com.transsion.magicvideo.R.string.convert_to_audio, 10);
                fileOperateItem8.setIconText(R.string.os_load);
                arrayList.add(fileOperateItem8);
            }
            if (!z) {
                arrayList.add(new FileOperateItem(z3 ? com.transsion.magicvideo.R.drawable.ic_farvorited_on : com.transsion.magicvideo.R.drawable.ic_farvorite, z3 ? R.string.unfavorite : com.transsion.magicvideo.R.string.favorites, 7));
            }
            int i = Build.VERSION.SDK_INT;
            FileOperateItem fileOperateItem9 = new FileOperateItem(R.drawable.ic_file_trans, R.string.visha_file_trans, !w6c.c(this, "file_trans_menu_click", false), 17);
            fileOperateItem9.setIconText(R.string.os_move);
            arrayList.add(fileOperateItem9);
            FileOperateItem fileOperateItem10 = new FileOperateItem(R.drawable.ic_share, R.string.share, 4);
            fileOperateItem10.setIconText(R.string.os_share);
            arrayList.add(fileOperateItem10);
            if (!z && !mediaItem.isYoutubeUrl) {
                int i2 = R.drawable.ic_add_song;
                int i3 = R.string.add_to;
                FileOperateItem fileOperateItem11 = new FileOperateItem(i2, i3, 3);
                fileOperateItem11.setHasSubPage(true);
                fileOperateItem11.setSubTitle(getString(i3));
                fileOperateItem11.setIconText(R.string.os_add);
                arrayList.add(fileOperateItem11);
            }
            boolean z4 = (pp3.j || i < 30) ? true : !ox8.a(mediaItem.data);
            if (z2) {
                FileOperateItem fileOperateItem12 = new FileOperateItem(R.drawable.ic_rename, R.string.rename, 2, z4);
                fileOperateItem12.setIconText(R.string.os_edit);
                arrayList.add(fileOperateItem12);
            }
            if (!z && ((pp3.p || jf.o(this)) && z2)) {
                arrayList.add(new FileOperateItem(R.drawable.ic_hide, R.string.hide, 1));
            }
            FileOperateItem fileOperateItem13 = new FileOperateItem(R.drawable.ic_info, R.string.info, 6);
            fileOperateItem13.setIconText(R.string.os_info);
            arrayList.add(fileOperateItem13);
            int i4 = this.R;
            if (i4 != 13 && i4 != 33) {
                FileOperateItem fileOperateItem14 = new FileOperateItem(p0(), q0(), 5, z4);
                A0(fileOperateItem14);
                arrayList.add(fileOperateItem14);
            }
            int i5 = this.R;
            if (i5 == 13 || i5 == 33 || i5 == 30) {
                FileOperateItem fileOperateItem15 = new FileOperateItem(R.drawable.ic_delete, R.string.delete, 12, z4);
                fileOperateItem15.setIconText(R.string.os_delete);
                arrayList.add(fileOperateItem15);
            }
        } else {
            arrayList.add(new FileOperateItem(R.drawable.ic_no_privacy, R.string.privacy_cancel_hide, 1));
            FileOperateItem fileOperateItem16 = new FileOperateItem(com.transsion.magicvideo.R.drawable.ic_info, com.transsion.magicvideo.R.string.info, 6);
            fileOperateItem16.setIconText(R.string.os_info);
            arrayList.add(fileOperateItem16);
            FileOperateItem fileOperateItem17 = new FileOperateItem(R.drawable.ic_delete, R.string.delete, 5, true);
            fileOperateItem17.setIconText(R.string.os_delete);
            arrayList.add(fileOperateItem17);
        }
        return arrayList;
    }

    public static boolean y0(Integer num) {
        return num.intValue() == -3;
    }

    @Override
    public boolean addSoftKeyboardAnim() {
        return false;
    }

    @Override
    public void initView() {
        Intent intent = getIntent();
        this.N = (MediaItem) intent.getParcelableExtra("data");
        this.O = intent.getIntExtra(SheetDialogParamsConstant.IN_PARAM_DATA_SELECT_MINETYPE_LIST_STATE, 0);
        this.P = intent.getIntegerArrayListExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS);
        this.R = getIntent().getIntExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 0);
        this.W = intent.getBooleanExtra(SheetDialogParamsConstant.IS_KT_TRANSFORM_DATA, false);
        boolean booleanExtra = intent.getBooleanExtra(SheetDialogParamsConstant.IS_KT_CLOUD_MAIN_PAGE, false);
        this.X = booleanExtra;
        if (booleanExtra) {
            az5.c(this.N.displayName);
        }
        ArrayList arrayList = new ArrayList();
        this.Q = arrayList;
        arrayList.addAll(vg9.c());
        if (intent.getBooleanExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false)) {
            m0();
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(vg9.d());
        ArrayList arrayList3 = this.P;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            this.P.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return VideoSheetDialogActivity.y0((Integer) obj);
                }
            }).findFirst().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    this.b.z0((Integer) obj);
                }
            });
        }
        n0(getString(R.string.add_to), false, false, (MediaItem[]) arrayList2.toArray(new MediaItem[arrayList2.size()]));
    }

    public final void n0(String str, boolean z, boolean z2, MediaItem... mediaItemArr) {
        VideoPlayListAddBucketView videoPlayListAddBucketView = new VideoPlayListAddBucketView(this, this.Q, this.O, this.V, mediaItemArr);
        if (this.U != null) {
            videoPlayListAddBucketView.setLayoutParams(new ViewGroup.LayoutParams(-1, this.U.getHeight()));
        }
        videoPlayListAddBucketView.changeStyle(false);
        OSPageView oSPageViewAddPage = addPage(videoPlayListAddBucketView);
        oSPageViewAddPage.setTitle(str);
        if (z) {
            oSPageViewAddPage.setBackIconVisibility(true);
            oSPageViewAddPage.setOnTitleBackIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.t0(view);
                }
            });
        }
        if (z2) {
            oSPageViewAddPage.setOnTitleCloseIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.u0(view);
                }
            });
        }
        oSPageViewAddPage.setCloseIconVisibility(z2);
    }

    public final void o0(final Activity activity, final MediaItem mediaItem, final int i, final List list, final FileOperateMenuAdapter fileOperateMenuAdapter, boolean z) {
        final boolean zT = tpb.j0().T(mediaItem.data);
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.x0(zT, mediaItem, activity, list, i, fileOperateMenuAdapter);
            }
        });
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        LiveEventBus.b().c("video_sheet_dialog_destroy", Boolean.TRUE);
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        FileOperateItem fileOperateItem = (FileOperateItem) view.getTag();
        if (fileOperateItem.getFlag() == 3) {
            if (fileOperateItem.hasSubPage()) {
                n0(fileOperateItem.getSubTitle(), true, false, this.N);
            }
            p06.c0("video", "vd_vmore_addlist_cl", 9324L);
            return;
        }
        if (fileOperateItem.getFlag() == 7) {
            o0(this, this.N, i, this.S, this.T, false);
            return;
        }
        if (fileOperateItem.getFlag() == 17) {
            h27.c().e(1173, this.N);
            w6c.r(this, "file_trans_menu_click", true);
            animateDismiss();
            MarkFileTransferInfo.a.m("vd_video");
            return;
        }
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.N);
        MediaItem mediaItem = this.N;
        if (mediaItem != null) {
            intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, mediaItem.type.toString());
        }
        setResult(-1, intent);
        animateDismiss();
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (a.A()) {
            recreate();
        }
    }

    public int p0() {
        int i = this.R;
        if (i != 1) {
            if (i != 30) {
                if (i != 32) {
                    if (i != 33) {
                        return R.drawable.ic_delete;
                    }
                }
            }
            return R.drawable.ic_remove;
        }
        return R.drawable.ic_delete_all;
    }

    public int q0() {
        int i = this.R;
        if (i != 1) {
            if (i != 30) {
                if (i != 32) {
                    if (i != 33) {
                        return R.string.delete;
                    }
                }
            }
            return R.string.remove;
        }
        return R.string.clear;
    }

    public final View s0(MediaItem mediaItem) {
        View viewInflate = View.inflate(this, R.layout.layout_bottom_dialog_menu_recyclerview, null);
        this.U = viewInflate;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_content);
        FileOperateMenuAdapter fileOperateMenuAdapter = new FileOperateMenuAdapter(this);
        this.T = fileOperateMenuAdapter;
        recyclerView.setAdapter(fileOperateMenuAdapter);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this));
        int i = 0;
        OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        this.S.clear();
        this.S.addAll(r0(mediaItem));
        this.T.setNewData(this.S);
        this.T.setOnItemClickListener(this);
        View viewFindViewById = this.U.findViewById(R.id.bottomEmpty);
        boolean zW = a.w(getResources().getConfiguration());
        boolean z = Settings.Secure.getInt(getContentResolver(), "navigation_mode", 0) == 2;
        if (zW && z) {
            i = 8;
        }
        viewFindViewById.setVisibility(i);
        return this.U;
    }

    public final void t0(View view) {
        popPage();
    }

    public final void u0(View view) {
        animateDismiss();
    }

    public final void v0(FileOperateMenuAdapter fileOperateMenuAdapter, boolean z) {
        if (fileOperateMenuAdapter.g() != null) {
            if (z) {
                cd.i(fileOperateMenuAdapter.g());
            } else {
                cd.g(this, fileOperateMenuAdapter.g());
            }
        }
        if (this.R == 33) {
            animateDismiss();
        }
    }

    public final void w0(List list, int i, final boolean z, final FileOperateMenuAdapter fileOperateMenuAdapter) {
        ((FileOperateItem) list.get(i)).setImageResId(!z ? com.transsion.magicvideo.R.drawable.ic_farvorited_on : com.transsion.magicvideo.R.drawable.ic_farvorite);
        ((FileOperateItem) list.get(i)).setTextResId(!z ? R.string.unfavorite : com.transsion.magicvideo.R.string.favorites);
        fileOperateMenuAdapter.notifyItemChanged(i);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.v0(fileOperateMenuAdapter, z);
            }
        }, 300L);
    }

    public final void x0(final boolean z, MediaItem mediaItem, Activity activity, final List list, final int i, final FileOperateMenuAdapter fileOperateMenuAdapter) {
        tpb.j0().j(!z, mediaItem);
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.w0(list, i, z, fileOperateMenuAdapter);
                }
            });
        }
        h27.c().e(1052, Integer.valueOf(i), Boolean.valueOf(z));
        h27.c().e(1053, Integer.valueOf(i), Boolean.valueOf(z));
    }

    public final void z0(Integer num) {
        this.V = true;
    }
}
