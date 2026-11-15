package com.transsion.magicvideo.fragments;

import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.activities.FarvoritesActivity;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideoPlayListFragment;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.c;
import com.transsion.widgetslib.dialog.d;
import defpackage.a64;
import defpackage.af9;
import defpackage.h27;
import defpackage.jwb;
import defpackage.k29;
import defpackage.kz5;
import defpackage.mc7;
import defpackage.p06;
import defpackage.r44;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class VideoPlayListFragment extends VideosFragment {
    public VideoPlayList a1;
    public boolean b1;
    public d c1;
    public volatile long d1;

    public class a extends GridLayoutManager.SpanSizeLookup {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        @Override
        public int getSpanSize(int i) {
            if (i >= 0 && i < VideoPlayListFragment.this.r.size()) {
                try {
                    if (((MediaItem) VideoPlayListFragment.this.r.get(i)).isTimeItem) {
                        return this.a;
                    }
                } catch (Exception e) {
                    Log.e("VideoPlayListFragment", "getSpanSize error: " + e.getMessage());
                }
            }
            return 1;
        }
    }

    public class b implements jwb.d {
        public b() {
        }

        @Override
        public void a(VideoPlayList videoPlayList) {
            VideoPlayListFragment videoPlayListFragment = VideoPlayListFragment.this;
            videoPlayListFragment.B = videoPlayList.name;
            ((PlayBaseFragment) videoPlayListFragment).mTitleTv.setText(VideoPlayListFragment.this.B);
        }
    }

    public static Integer D4(Long l) {
        return Integer.valueOf(tpb.j0().g(l.longValue()));
    }

    public final ArrayList A4(VideoPlayListFragment videoPlayListFragment) {
        ArrayList arrayList;
        if (this.I) {
            arrayList = new ArrayList(tpb.j0().S());
            Log.d("VideoPlayListFragment", "loadData favorite video list ,total size:" + this.r.size());
        } else if (this.a1.playlistFlag == 13) {
            arrayList = new ArrayList(tpb.j0().W());
            kz5.e(true, arrayList.size());
            Log.d("VideoPlayListFragment", "loadData recent add video list ,total size:" + this.r.size());
        } else {
            arrayList = new ArrayList(tpb.j0().E(this.q0.bucketId));
            Log.d("VideoPlayListFragment", "loadData playlist video list ,total size:" + this.r.size());
        }
        F0(arrayList);
        return arrayList;
    }

    public final void B4(ArrayList arrayList) {
        this.r.clear();
        this.r.addAll(arrayList);
        Log.d("VideoPlayListFragment", "loadData end ,get data size:" + this.r.size());
        if (S0()) {
            this.mbFragmentShowCompleted = true;
        }
        updateUiForDataChanged();
    }

    public final void C4(Boolean bool) {
        postDelayLoadData();
    }

    public final void E4(Integer num) {
        a64.a(this.mActivity);
    }

    public final void F4(MediaItem mediaItem, DialogInterface dialogInterface, int i) {
        u4(mediaItem);
    }

    @Override
    public void G3() {
        mc7.K(Long.valueOf(this.q0.bucketId)).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayListFragment.D4((Long) obj);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.E4((Integer) obj);
            }
        });
    }

    public final void G4(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        c cVar = new c(this.mContext);
        cVar.j(this.mContext.getResources().getString(R.string.delete_progress));
        this.c1 = cVar.l();
        kz5.b("vd_vmore_remove_cl_check", true, this.t.D().size());
        v4(arrayList);
    }

    public final boolean H4(MenuItem menuItem) {
        if (menuItem.getItemId() == com.transsion.magicvideo.R.id.remove_song) {
            t4(false);
            p06.f0(null, "vd_remove_song", 932460000083L);
        } else if (menuItem.getItemId() == com.transsion.magicvideo.R.id.rename) {
            jwb jwbVar = new jwb(this.mContext);
            jwbVar.L(new b());
            jwbVar.K(this.a1);
            jwbVar.N();
        } else if (menuItem.getItemId() == com.transsion.magicvideo.R.id.remove_playlsit) {
            if (this.r.size() <= 0) {
                A1(com.transsion.magicvideo.R.string.delete_the_playlist, com.transsion.magicvideo.R.string.delete, 0);
            } else {
                A1(com.transsion.magicvideo.R.string.delete_playlist_dialog_message, com.transsion.magicvideo.R.string.delete, com.transsion.magicvideo.R.string.delete_the_playlist);
            }
            p06.f0(null, "vd_nplaylist_list_del_cl", 9324L);
        } else if (menuItem.getItemId() == com.transsion.magicvideo.R.id.add_for_list) {
            t4(true);
            p06.f0(null, "vd_nplaylist_list_moreadd_cl", 9324L);
        }
        return false;
    }

    public final void I4() {
        PopupMenu popupMenu = new PopupMenu(this.mContext, this.mMenuMore);
        popupMenu.inflate(this.I ? com.transsion.magicvideo.R.menu.playlist_more_menu_add : com.transsion.magicvideo.R.menu.playlist_more_menu);
        if (this.r.size() > 0 || this.I) {
            MenuItem menuItemFindItem = popupMenu.getMenu().findItem(com.transsion.magicvideo.R.id.add_for_list);
            if (menuItemFindItem != null) {
                menuItemFindItem.setTitle(com.transsion.magicvideo.R.string.add_new_video);
            }
        } else {
            popupMenu.getMenu().removeItem(com.transsion.magicvideo.R.id.add_for_list);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.a.H4(menuItem);
            }
        });
        popupMenu.show();
    }

    @Override
    public void J0(MediaItem mediaItem, FileOperateItem fileOperateItem) {
        J4(mediaItem);
    }

    public void J4(final MediaItem mediaItem) {
        int i = com.transsion.magicvideo.R.string.remove_video_new;
        kz5.g("vd_vmore_remove_cl", true);
        new d.a(this.mContext).j(i).u(com.transsion.magicvideo.R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.F4(mediaItem, dialogInterface, i2);
            }
        }).m(R.string.cancel, null).a().show();
    }

    @Override
    public void P0() {
        super.P0();
        View view = this.q;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(com.transsion.magicvideo.R.id.add_video_tv);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.onClick(view2);
                }
            });
            textView.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void editMode(boolean z) {
        super.editMode(z);
        View view = this.mMenuMore;
        if (view != null) {
            view.setVisibility((z || this.b1) ? 8 : 0);
        }
        if (this.b1) {
            this.mSortIv.setVisibility(8);
            this.mMenuMore.setVisibility(8);
        }
        notifyVideoBarShowStateChange(((Boolean) this.P.g.getValue()).booleanValue());
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDeleteIconResId() {
        return com.transsion.magicvideo.R.drawable.ic_remove;
    }

    @Override
    public int getDeleteTextResId() {
        return com.transsion.magicvideo.R.string.remove;
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        if (this.b1) {
            return;
        }
        this.mMenuMore.setVisibility(0);
        this.mMenuMore.setOnClickListener(this);
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        Log.d("VideoPlayListFragment", "VideoPlayListFragment loadData start,mIsFavoriteList=" + this.I + " mMediaBucket.bucketId:" + this.q0.bucketId);
        mc7.K(this).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.A4((VideoPlayListFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.B4((ArrayList) obj);
            }
        });
    }

    @Override
    public void onClick(View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        if (view.getId() != com.transsion.magicvideo.R.id.add_video_tv) {
            if (view.getId() == com.transsion.magicvideo.R.id.menu_more) {
                I4();
                p06.f0(null, "vd_nplaylist_list_more_cl", 9324L);
                return;
            }
            return;
        }
        if (this.b1) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(0).withParam(new RouterBean.RouterData(3, 1)).build(), this.mContext, true);
        } else {
            t4(true);
            p06.f0(null, "vd_nplaylist_list_add_cl", 9324L);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        this.s = 30;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.a1 = new VideoPlayList();
        if (arguments != null) {
            this.q0.setParentName(this.B);
            this.a1.playlistFlag = arguments.getInt("bucket_fragment_buicket_playlist_flag");
            this.s = this.a1.playlistFlag;
        }
        int i = this.s;
        this.s = i != 0 ? i : 30;
        VideoPlayList videoPlayList = this.a1;
        videoPlayList.name = this.B;
        videoPlayList.id = (int) this.q0.bucketId;
        this.G.f().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.C4((Boolean) obj);
            }
        });
        this.I = this.a1.playlistFlag == 2;
        this.mIsToSanFar = af9.g;
        af9.g = false;
        this.b1 = this.a1.playlistFlag == 13;
        boolean z = this.I;
        if (z) {
            this.s = 33;
        }
        if (!z || getActivity() == null || (getActivity() instanceof FarvoritesActivity)) {
            return;
        }
        MMKV.p().y("playListFarvoriteRedSpot", false);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.I) {
            p06.d0("vd_nplaylist_favorite_show");
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mSortIv.setVisibility(8);
        this.mMenuMore.setVisibility(8);
    }

    @Override
    public void showRemoveDialog() {
        String string;
        if (System.currentTimeMillis() - this.d1 < 2000) {
            return;
        }
        this.d1 = System.currentTimeMillis();
        BucketDateAdapter bucketDateAdapter = this.t;
        final ArrayList arrayListD = bucketDateAdapter != null ? bucketDateAdapter.D() : new ArrayList();
        if (this.I) {
            string = arrayListD.size() > 1 ? getString(com.transsion.magicvideo.R.string.remove_videos_new_multi, Integer.valueOf(arrayListD.size())) : getString(com.transsion.magicvideo.R.string.remove_video_new_single);
        } else {
            string = arrayListD.size() > 1 ? getString(com.transsion.magicvideo.R.string.remove_videos_new, Integer.valueOf(arrayListD.size())) : getString(com.transsion.magicvideo.R.string.remove_video_new);
            kz5.b("vd_mul_remove_cl", true, this.t.D().size());
        }
        new d.a(this.mContext).k(string).u(com.transsion.magicvideo.R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.G4(arrayListD, dialogInterface, i);
            }
        }).m(R.string.cancel, null).a().show();
    }

    public final void t4(boolean z) {
        VideoPlayListOperateFragment videoPlayListOperateFragment = (VideoPlayListOperateFragment) new VideoPlayListOperateFragment().d2(z).setBaseActivity(this.mActivity);
        Bundle bundle = new Bundle();
        ((VideoDataListModel) getViewModelByActivity(VideoDataListModel.class)).o((ArrayList) this.r.clone());
        bundle.putInt("fragment_playlist_id", (int) this.q0.bucketId);
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        bundle.putString("fragment_playlist_name", this.q0.parentName);
        videoPlayListOperateFragment.setArguments(bundle);
        a64.n(videoPlayListOperateFragment, true, true);
    }

    public final void u4(final MediaItem mediaItem) {
        mc7.K(mediaItem).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.x4(mediaItem, (MediaItem) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.y4((Boolean) obj);
            }
        });
    }

    @Override
    public void updateShowUI() {
        LogUtils.N("VideoPlayListFragment", "updateShowUI,dataList size:" + this.r.size());
        v1(this.r);
        this.s0.setSpanSizeLookup(new a(O2()));
        H0(this.r);
        ArrayList arrayList = this.r;
        this.u0.setVisibility(((this.z0 || this.I || this.b1) && (arrayList != null && arrayList.size() > 0)) ? 0 : 8);
        this.mMenuMore.setVisibility(((this.I && this.r.size() == 0) || this.isInEditMode || this.b1) ? 8 : 0);
        TextView textView = this.v0;
        ArrayList arrayList2 = this.r;
        textView.setText(r44.a(arrayList2 != null ? arrayList2.size() - this.A : 0));
        G0();
        x1();
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            C3();
        }
        if (this.b1) {
            this.mSortIv.setVisibility(8);
        }
    }

    public final void v4(final ArrayList arrayList) {
        mc7.K(arrayList).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.z4(arrayList, (ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.w4((Boolean) obj);
            }
        });
    }

    public final void w4(Boolean bool) {
        this.c1.dismiss();
        if (this.I) {
            h27.c().e(1053, new Object[0]);
        }
        VideoPlayListModel videoPlayListModel = this.G;
        if (videoPlayListModel != null) {
            videoPlayListModel.o(true);
        }
        if (!this.I) {
            ToastUtils.s(com.transsion.magicvideo.R.string.remove_from_the_playlist);
        }
        editMode(false);
    }

    public final Boolean x4(MediaItem mediaItem, MediaItem mediaItem2) {
        if (this.I) {
            tpb.j0().K(-1, mediaItem, true);
        } else {
            tpb.j0().K(this.a1.id, mediaItem, false);
            kz5.g("vd_vmore_remove_cl_check", true);
        }
        return Boolean.TRUE;
    }

    public final void y4(Boolean bool) {
        this.G.o(true);
        if (this.I) {
            return;
        }
        ToastUtils.s(com.transsion.magicvideo.R.string.remove_from_the_playlist);
    }

    @Override
    public void z1(int i) {
        super.z1(i);
    }

    public final Boolean z4(ArrayList arrayList, ArrayList arrayList2) {
        if (this.I) {
            tpb.j0().N(-1, arrayList, true);
        } else {
            tpb.j0().N(this.a1.id, arrayList, false);
        }
        return Boolean.TRUE;
    }
}
