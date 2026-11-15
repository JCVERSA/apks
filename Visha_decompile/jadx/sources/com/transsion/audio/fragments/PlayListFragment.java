package com.transsion.audio.fragments;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.PlayListFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioAppFootActionBar;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.AudioDataListModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ao;
import defpackage.b39;
import defpackage.h27;
import defpackage.hf7;
import defpackage.if7;
import defpackage.k29;
import defpackage.k78;
import defpackage.kz5;
import defpackage.mc7;
import defpackage.n06;
import defpackage.p06;
import defpackage.r06;
import defpackage.r44;
import defpackage.sq3;
import defpackage.t06;
import defpackage.t55;
import defpackage.t74;
import defpackage.vb;
import defpackage.vg9;
import defpackage.vmb;
import defpackage.w6c;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.stream.Collectors;

public class PlayListFragment extends AudioDragBaseFragment {
    public boolean A0;
    public boolean B0;
    public boolean C0;
    public int D0;
    public com.transsion.widgetslib.dialog.d E0;
    public View F0;
    public boolean G0;
    public boolean H0;
    public boolean I0;
    public ConstraintLayout J0;
    public boolean K0 = true;
    public ImageView L0;
    public MediaBucket w0;
    public PlayListModel x0;
    public PlayList y0;
    public boolean z0;

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 2 || i == 1) {
                PlayListFragment playListFragment = PlayListFragment.this;
                if (playListFragment.B0 || playListFragment.A0) {
                    h27.c().e(1156, Integer.valueOf(BaseFragment.SCROLL_START));
                    return;
                } else {
                    PlayListFragment.this.hideShuffleBtn();
                    return;
                }
            }
            PlayListFragment playListFragment2 = PlayListFragment.this;
            if (playListFragment2.B0 || playListFragment2.A0) {
                h27.c().e(1156, Integer.valueOf(BaseFragment.SCROLL_END));
            } else {
                if (((PlayBaseFragment) PlayListFragment.this).isInEditMode) {
                    return;
                }
                PlayListFragment playListFragment3 = PlayListFragment.this;
                if (playListFragment3.G) {
                    return;
                }
                playListFragment3.showShuffleBtn();
            }
        }
    }

    public class b extends if7 {
        public b(int i, boolean z) {
            super(i, z);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (baseQuickAdapter.getData().isEmpty()) {
                return;
            }
            this.mFirstClickTime = System.currentTimeMillis();
            AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
            if (((PlayBaseFragment) PlayListFragment.this).isInEditMode) {
                PlayListFragment.this.y1(baseQuickAdapter, view, i, false);
                PlayListFragment.this.V1(audioItem, view);
                return;
            }
            if (PlayListFragment.this.B0) {
                n06.a();
            }
            audioItem.setSelectedPos(i);
            PlayListFragment.this.u.T(audioItem);
            PlayListFragment playListFragment = PlayListFragment.this;
            playListFragment.i4(audioItem, p06.z(playListFragment.s, false, ao.U().f0(audioItem)));
            PlayListFragment.this.Y3();
        }
    }

    public class c implements FileOperateUtils.k {
        public final AudioItem a;
        public final int b;

        public c(AudioItem audioItem, int i) {
            this.a = audioItem;
            this.b = i;
        }

        @Override
        public void d() {
            try {
                PlayListFragment.this.v1(this.b);
                PlayListFragment.this.A1();
                LogUtils.i("PlayListFragment", "deleteSuccess");
                if (((PlayBaseFragment) PlayListFragment.this).isInEditMode) {
                    PlayListFragment.this.editMode(false);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void g(String str, String str2) {
            PlayListFragment.this.F0(this.a, str, str2);
            PlayListFragment.this.t1(this.a, str2, true);
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public final AudioItem b;

        public d(AudioItem audioItem) {
            this.b = audioItem;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (PlayListFragment.this.A0) {
                PlayListFragment.this.p3(this.b);
                return;
            }
            if (PlayListFragment.this.z0) {
                PlayListFragment.this.i3(this.b);
                return;
            }
            PlayListFragment playListFragment = PlayListFragment.this;
            if (playListFragment.B0) {
                playListFragment.l3(this.b);
            } else {
                kz5.g("vd_vmore_remove_cl_check", false);
                PlayListFragment.this.n3(this.b);
            }
        }
    }

    public class e implements k78.d {
        public e() {
        }

        @Override
        public void a(PlayList playList) {
            PlayListFragment playListFragment = PlayListFragment.this;
            playListFragment.z = playList.name;
            ((PlayBaseFragment) playListFragment).mTitleTv.setText(PlayListFragment.this.z);
        }
    }

    public class f extends hf7 {
        public f(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            b(i == 0 ? 1000 : 500);
            PlayListFragment.this.onItemClick(i);
        }
    }

    public class g implements DialogInterface.OnClickListener {
        public g() {
        }

        public final Integer c(Long l) {
            return Integer.valueOf(ao.U().o((int) PlayListFragment.this.w0.bucketId));
        }

        public final void d(Integer num) {
            PlayListFragment playListFragment = PlayListFragment.this;
            playListFragment.M = false;
            a64.a(((BaseFragment) playListFragment).mActivity);
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            mc7.K(Long.valueOf(PlayListFragment.this.w0.bucketId)).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.c((Long) obj);
                }
            }).g(((BaseFragment) PlayListFragment.this).mActivity.bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.d((Integer) obj);
                }
            });
        }
    }

    public class h implements DialogInterface.OnClickListener {
        public h() {
        }

        public static Object c(PlayListFragment playListFragment) {
            return Boolean.valueOf(ao.U().j());
        }

        public static void d(DialogInterface dialogInterface, Object obj) {
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
        }

        @Override
        public void onClick(final DialogInterface dialogInterface, int i) {
            mc7.K(PlayListFragment.this).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return PlayListFragment.h.c((PlayListFragment) obj);
                }
            }).g(((BaseFragment) PlayListFragment.this).mActivity.bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    PlayListFragment.h.d(dialogInterface, obj);
                }
            });
        }
    }

    public class i implements DialogInterface.OnClickListener {
        public i() {
        }

        public static void d(DialogInterface dialogInterface, Boolean bool) {
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
        }

        public final Boolean c(Integer num) {
            return Boolean.valueOf(ao.U().l(PlayListFragment.this.u.G()));
        }

        @Override
        public void onClick(final DialogInterface dialogInterface, int i) {
            mc7.K(1).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.c((Integer) obj);
                }
            }).g(PlayListFragment.this.bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    PlayListFragment.i.d(dialogInterface, (Boolean) obj);
                }
            });
        }
    }

    public static void E3(Throwable th) {
        LogUtils.v("PlayListFragment", "throwable:" + th.getMessage());
    }

    public static Boolean G3(AudioItem audioItem) {
        return Boolean.valueOf(ao.U().n(audioItem));
    }

    public static Boolean I3(ArrayList arrayList, ArrayList arrayList2) {
        ao.U().l(arrayList);
        return Boolean.TRUE;
    }

    public static void N3(Throwable th) {
        LogUtils.l("PlayListFragment", "loadData error:" + th.getMessage());
    }

    public void Q3(List list) {
        vmb.a("PlayListFragment", "PlayListRecentlyLiveData NEW  change");
        postDelayLoadData();
    }

    public void V3(View view) {
        b4();
    }

    public static PlayListFragment a4(int i2) {
        PlayListFragment playListFragment = new PlayListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i2);
        playListFragment.setArguments(bundle);
        return playListFragment;
    }

    private void b4() {
        k4();
        LiveEventBus.b().c("change_minibar_state", Boolean.TRUE);
    }

    private ArrayList c4() {
        LogUtils.i("PlayListFragment", "queryAudioData " + this.s);
        if (this.A0) {
            return new ArrayList(ao.U().a(this.z));
        }
        if (this.z0) {
            return new ArrayList((List) ao.U().y(true).getSecond());
        }
        if (this.G0) {
            return new ArrayList(SortUtil.w(ao.U().b0(true, this.z)));
        }
        return this.B0 ? new ArrayList(SortUtil.x(ao.U().X(true, this.z), true)) : new ArrayList(ao.U().Y((int) this.w0.bucketId, this.z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f4(String str, AudioItem audioItem, int i2) {
        Intent intent = new Intent();
        intent.putExtra("data", audioItem);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        vg9.e((ArrayList) this.D.d().getValue());
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        this.S.launch(intent);
        FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), audioItem, this.s);
        this.mFileOperateUtils = fileOperateUtils;
        fileOperateUtils.e0(true);
        this.mFileOperateUtils.f0(new c(audioItem, i2));
    }

    private void g4() {
        PopupMenu popupMenu = new PopupMenu(this.mContext, this.mMenuMore);
        popupMenu.inflate(R.menu.playlist_more_menu);
        MenuItem menuItemFindItem = popupMenu.getMenu().findItem(R.id.add_for_list);
        if (this.q.size() == 0) {
            menuItemFindItem.setVisible(false);
        }
        if (this.z0) {
            MenuItem menuItemFindItem2 = popupMenu.getMenu().findItem(R.id.rename);
            if (menuItemFindItem2 != null) {
                menuItemFindItem2.setVisible(false);
            }
            MenuItem menuItemFindItem3 = popupMenu.getMenu().findItem(R.id.remove_playlsit);
            if (menuItemFindItem3 != null) {
                menuItemFindItem3.setVisible(false);
            }
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.a.W3(menuItem);
            }
        });
        popupMenu.show();
    }

    private void j4(AudioItem audioItem, String str, boolean z) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = this.s;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = this.z;
            playAudioDataConvertToPlayAudioData.isShuffle = z;
            playAudioDataConvertToPlayAudioData.sourceAction = str;
            if (!this.C0) {
                playAudioDataConvertToPlayAudioData.playListId = this.w0.bucketId;
            }
        }
        LogUtils.i("PlayListFragment", "startOpenVideo " + playAudioDataConvertToPlayAudioData);
        LiveEventBus.b().c("launch_audio_player_activity", playAudioDataConvertToPlayAudioData);
    }

    private void o3(ArrayList arrayList) {
        mc7.K(arrayList).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.D3((ArrayList) obj);
            }
        }).d0(k29.c()).o(new zf1() {
            @Override
            public final void accept(Object obj) {
                PlayListFragment.E3((Throwable) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.F3((Boolean) obj);
            }
        });
    }

    private void r3() {
        this.u.setOnSelectListener(this);
        b bVar = new b(2000, true);
        this.v = bVar;
        this.u.setOnItemClickListener(bVar);
        this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                this.a.K3(baseQuickAdapter, view, i2);
            }
        });
        O1();
    }

    public static Integer s3(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public static Boolean t3(AudioItem audioItem, AudioItem audioItem2) {
        ao.U().l0(false, audioItem);
        return Boolean.TRUE;
    }

    public static Boolean v3(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = ((AudioItem) arrayList.get(i2)).id;
            ao.U().c0(true, (AudioItem) arrayList.get(i2));
            ao.U().l0(false, (AudioItem) arrayList.get(i2));
        }
        return Boolean.TRUE;
    }

    public static Boolean x3(ArrayList arrayList, ArrayList arrayList2) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AudioItem audioItem = (AudioItem) it.next();
            ao.U().m(audioItem.id, audioItem.data);
        }
        return Boolean.TRUE;
    }

    public static Boolean z3(AudioItem audioItem, AudioItem audioItem2) {
        return Boolean.valueOf(ao.U().m(audioItem.id, audioItem.data));
    }

    @Override
    public void A1() {
        int i2;
        super.A1();
        boolean zIsEmpty = this.q.isEmpty();
        if (this.B0) {
            i2 = 6;
        } else {
            if (!this.A0) {
                setShuffleBtnVisible(!zIsEmpty, "audio");
                return;
            }
            i2 = 7;
        }
        if (zIsEmpty) {
            h27.c().e(1162, Boolean.FALSE, Integer.valueOf(i2));
        } else {
            h27.c().e(1162, Boolean.TRUE, Integer.valueOf(i2));
        }
    }

    public final void A3(Boolean bool) {
        PlayListModel playListModel = this.x0;
        if (playListModel != null) {
            playListModel.q(true);
        }
        editMode(false);
    }

    public final Boolean B3(AudioItem audioItem, AudioItem audioItem2) {
        List<PlayList> listN = this.x0.n();
        if (listN != null) {
            for (PlayList playList : listN) {
                if (playList.id == this.w0.bucketId && TextUtils.equals(audioItem.data, playList.uri.toString())) {
                    playList.uri = null;
                    break;
                }
            }
        }
        ao.U().p((int) this.w0.bucketId, audioItem, false);
        return Boolean.TRUE;
    }

    public final void C3(Boolean bool) {
        this.x0.s(true);
        ToastUtils.s(R.string.remove_from_the_playlist);
    }

    public final Boolean D3(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(Integer.valueOf(((AudioItem) arrayList.get(i2)).id));
        }
        ao.U().q(this.y0.id, arrayList2, false);
        return Boolean.TRUE;
    }

    public final void F3(Boolean bool) {
        this.E0.dismiss();
        PlayListModel playListModel = this.x0;
        if (playListModel != null) {
            playListModel.s(true);
        }
        ToastUtils.s(R.string.remove_from_the_playlist);
        editMode(false);
    }

    public final void H3(Boolean bool) {
        this.x0.t(true);
    }

    @Override
    public void J0(AudioItem audioItem, FileOperateItem fileOperateItem) {
        h4(audioItem);
    }

    public final void J3(Boolean bool) {
        this.E0.dismiss();
        PlayListModel playListModel = this.x0;
        if (playListModel != null) {
            playListModel.t(true);
        }
        editMode(false);
    }

    @Override
    public void K0(boolean z) {
        LogUtils.j("PlayListFragment", "dragMode enter = " + z);
        super.K0(z);
        View view = this.F0;
        if (view != null) {
            view.setEnabled(!z);
            this.F0.setAlpha(z ? 0.4f : 1.0f);
        }
        if (this.B0 || this.A0) {
            return;
        }
        setShuffleBtnVisible(!z, "audio");
    }

    public final void K3(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        if ((!ingoreClickEvent() || this.isInEditMode) && !baseQuickAdapter.getData().isEmpty()) {
            this.mFirstClickTime = System.currentTimeMillis();
            AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i2);
            if (this.isInEditMode) {
                y1(baseQuickAdapter, view, i2, true);
                V1(audioItem, this.H.getLayoutManager().findViewByPosition(i2));
                return;
            }
            if (view.getId() == R.id.iv_item_more) {
                f4(this.mFragmentTag, audioItem, i2);
                Bundle bundle = new Bundle();
                TrackData trackData = new TrackData();
                String strA = p06.A(this.s);
                bundle.putString("from", strA);
                bundle.putString("TYPE", "audio");
                trackData.add("from", strA);
                trackData.add("TYPE", "audio");
                p06.q0(trackData, bundle, "vd_vmore_show", 9324L);
            }
        }
    }

    public final void L3(View view) {
        this.mActivity.onBackPressed();
        h3();
    }

    public final void M3(View view) {
        d4(R.string.talkback_clear_history, R.string.clear_empty, R.string.cancel, new h(), 0);
        p06.f0(null, "vd_recent_playlist_del_cl", 9324L);
    }

    public final List O3(PlayListFragment playListFragment) {
        ArrayList arrayListC4 = c4();
        G0(arrayListC4);
        return arrayListC4;
    }

    public final void P3(List list) {
        this.q.clear();
        this.q.addAll(list);
        if (this.B0) {
            n06.b(list.size());
        }
        if (this.B0 || this.A0 || Q0()) {
            this.mbFragmentShowCompleted = true;
        }
        updateUiForDataChanged();
    }

    public final void R3(List list) {
        vmb.a("PlayListFragment", "PlayListFavoriteLiveData change");
        postDelayLoadData();
    }

    public final void S3(Boolean bool) {
        vmb.a("PlayListFragment", "PlayListFrequentlyLiveData change");
        postDelayLoadData();
    }

    public final void T3(List list) {
        vmb.a("PlayListFragment", "PlayListRecentlyLiveData NEW  change");
        postDelayLoadData();
    }

    public final void U3(Boolean bool) {
        vmb.a("PlayListFragment", "AudioItemChangeLiveData change");
        postDelayLoadData();
    }

    public final boolean W3(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.remove_song) {
            f3(false, null);
            p06.f0(null, "vd_remove_song", 932460000083L);
        } else if (menuItem.getItemId() == R.id.rename) {
            k78 k78Var = new k78(this.mContext);
            k78Var.w0(new e());
            k78Var.v0(this.y0);
            k78Var.A0();
        } else if (menuItem.getItemId() == R.id.remove_playlsit) {
            if (this.q.size() == 0) {
                d4(R.string.delete_the_playlist, R.string.delete, R.string.cancel, new g(), 0);
            } else {
                d4(R.string.delete_music_playlist_dialog_message, R.string.delete, R.string.cancel, new g(), R.string.delete_the_playlist);
            }
            p06.f0(null, "vd_delete_list", 932460000084L);
        } else if (menuItem.getItemId() == R.id.add_for_list) {
            f3(true, "vd_add_song_Icon");
            p06.f0(null, "vd_add_song_Icon", 932460000081L);
        }
        return false;
    }

    public final void X3(ArrayList arrayList, DialogInterface dialogInterface, int i2) {
        com.transsion.widgetslib.dialog.c cVar = new com.transsion.widgetslib.dialog.c(this.mContext);
        cVar.j(this.mContext.getResources().getString(com.transsion.playercommon.R.string.delete_progress));
        this.E0 = cVar.l();
        if (this.A0) {
            q3(arrayList);
            return;
        }
        if (this.z0) {
            j3(arrayList);
        } else if (this.B0) {
            m3(arrayList);
        } else {
            kz5.b("vd_vmore_remove_cl_check", false, this.u.G().size());
            o3(arrayList);
        }
    }

    public final void Y3() {
        if (this.A0) {
            p06.f0("", "recent_playlist_songs_cl", 932460000129L);
        } else if (this.z0) {
            p06.f0("", "favorite_list_songs_cl", 932460000130L);
        }
    }

    public void Z3() {
        Bundle bundle = new Bundle();
        bundle.putInt("audio_amount", this.q.size());
        TrackData trackData = new TrackData();
        trackData.add("audio_amount", this.q.size());
        if (this.z0) {
            p06.q0(trackData, bundle, "favorite_list_show_p", 9324L);
        } else if (this.A0) {
            p06.q0(trackData, bundle, "vd_recent_playlist_show_p", 9324L);
        } else if (this.G0) {
            kz5.e(false, this.q.size());
        }
    }

    public final void d4(int i2, int i3, int i4, DialogInterface.OnClickListener onClickListener, int i5) {
        e4(this.mContext.getString(i2), i3, i4, onClickListener, i5);
    }

    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        ArrayList arrayListG;
        super.didReceivedNotification(i2, objArr);
        if (i2 == 1065) {
            if (this.B0 && this.K0) {
                ThreadUtils.o().post(new Runnable() {
                    @Override
                    public void run() {
                        PlayListFragment.this.loadData(false);
                    }
                });
                return;
            }
            return;
        }
        if (i2 == 1070) {
            postDelayLoadData();
            return;
        }
        if (i2 == 1072) {
            if (this.isInEditMode) {
                editMode(false);
                return;
            }
            return;
        }
        if (i2 == 1109) {
            if (this.P) {
                return;
            }
            postDelayLoadData();
        } else if (i2 == 1120) {
            if (this.G0) {
                postDelayLoadData();
            }
        } else {
            if (i2 != 1183 || (arrayListG = this.u.G()) == null || arrayListG.isEmpty()) {
                return;
            }
            e4(arrayListG.size() == 1 ? getString(R.string.clear_history) : getString(R.string.clear_histories_recorded, Integer.valueOf(arrayListG.size())), R.string.clear_empty, R.string.cancel, new i(), 0);
        }
    }

    public final void e4(String str, int i2, int i3, DialogInterface.OnClickListener onClickListener, int i4) {
        new com.transsion.widgetslib.dialog.d.a(this.mContext).B(i4 == 0 ? "" : this.mContext.getString(i4)).k(str).u(i2, onClickListener).m(i3, null).a().show();
    }

    @Override
    public void editMode(boolean z) {
        ImageView imageView;
        super.editMode(z);
        if7 if7Var = this.v;
        if (if7Var != null) {
            if (z) {
                if7Var.setIntervalTime(150);
            } else {
                if7Var.setIntervalTime(2000);
                this.v.resetClickTime();
            }
        }
        View view = this.mMenuMore;
        if (view != null && this.s == 30) {
            view.setVisibility(!z ? 0 : 8);
        }
        ImageView imageView2 = this.mAddSongIv;
        if (imageView2 != null && this.C0) {
            imageView2.setVisibility((this.q.isEmpty() || z) ? 8 : 0);
        }
        if (this.A0 && (imageView = this.L0) != null) {
            imageView.setVisibility((this.q.isEmpty() || z) ? 8 : 0);
        }
        if (this.G0 || this.B0) {
            this.mSortIv.setVisibility(8);
            ImageView imageView3 = this.mAudioSortPoint;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
            this.mMenuMore.setVisibility(8);
            this.mAddSongIv.setVisibility(8);
        }
        if (z) {
            setDragAnimationView(this.J0);
            T1(this.o);
        } else {
            Z1();
        }
        View view2 = this.F0;
        if (view2 != null) {
            view2.setEnabled(!z);
            this.F0.setAlpha(z ? 0.4f : 1.0f);
        }
        if (this.B0 || this.A0) {
            return;
        }
        setShuffleBtnVisible(!z, "audio");
    }

    public final void f3(boolean z, String str) {
        if (!isAdded() || isDetached() || getActivity() == null) {
            return;
        }
        PlayListAddRemoveFragment playListAddRemoveFragment = (PlayListAddRemoveFragment) new PlayListAddRemoveFragment().g2(z).setBaseActivity(this.mActivity);
        Bundle bundle = new Bundle();
        ((AudioDataListModel) getViewModelByActivity(AudioDataListModel.class)).b((ArrayList) this.q.clone());
        bundle.putInt("fragment_playlist_id", (int) this.w0.bucketId);
        bundle.putString("fragment_playlist_name", this.w0.parentName);
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        bundle.putString("action", str);
        playListAddRemoveFragment.setArguments(bundle);
        a64.n(playListAddRemoveFragment, true, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g3() {
        ArrayList arrayListG = this.u.G();
        if (arrayListG == null || arrayListG.isEmpty()) {
            return;
        }
        ArrayList arrayList = (ArrayList) arrayListG.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.s3((MediaItem) obj);
            }
        }).collect(Collectors.toList());
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        vg9.e((ArrayList) this.D.d().getValue());
        vg9.f(arrayListG);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        startActivity(intent);
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDeleteIconResId() {
        return this.A0 ? R.drawable.ic_delete_all : R.drawable.ic_remove;
    }

    @Override
    public int getDeleteTextResId() {
        return this.A0 ? R.string.clear : R.string.remove;
    }

    public final void h3() {
        if (this.G0 && this.H0) {
            h27.c().e(1097, new Object[0]);
        }
    }

    public void h4(AudioItem audioItem) {
        int i2;
        if (!this.z0 && !this.A0) {
            kz5.g("vd_vmore_remove_cl", false);
        }
        if (this.z0) {
            i2 = R.string.remove_from_favorites;
        } else {
            i2 = this.A0 ? R.string.clear_history : R.string.remove_song_new;
        }
        new com.transsion.widgetslib.dialog.d.a(this.mContext).j(i2).u(this.A0 ? R.string.clear : R.string.remove, new d(audioItem)).m(com.transsion.playercommon.R.string.cancel, null).a().show();
    }

    @Override
    public void handleManual(boolean z) {
        super.handleManual(z);
        if (z) {
            p06.B(this.s, Boolean.FALSE);
        }
    }

    public final void i3(final AudioItem audioItem) {
        mc7.K(audioItem).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.t3(audioItem, (AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.u3((Boolean) obj);
            }
        });
    }

    public final void i4(AudioItem audioItem, String str) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = this.s;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = this.z;
            playAudioDataConvertToPlayAudioData.sourceAction = str;
            if (!this.C0) {
                playAudioDataConvertToPlayAudioData.playListId = this.w0.bucketId;
            }
        }
        LogUtils.i("PlayListFragment", "startOpenVideo " + playAudioDataConvertToPlayAudioData);
        LiveEventBus.b().c("launch_audio_player_activity_from_audio_list", playAudioDataConvertToPlayAudioData);
    }

    @Override
    public void inflateOperationBar() {
        if (this.y != null) {
            return;
        }
        View view = this.o;
        if (view == null) {
            LogUtils.O("PlayListFragment", "inflateOperationBar mFragmentView == null");
            return;
        }
        ViewStub viewStub = (ViewStub) view.findViewById(R.id.bottom_audio_action_bar);
        if (viewStub == null) {
            LogUtils.O("PlayListFragment", "inflateOperationBar bottom_audio_action_bar stub == null");
            return;
        }
        AudioAppFootActionBar audioAppFootActionBar = (AudioAppFootActionBar) viewStub.inflate();
        this.y = audioAppFootActionBar;
        audioAppFootActionBar.setOnFootOptBarClickListener(new f("PlayListFragment"));
        this.y.setListFlag(this.s);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1120);
        this.mEvents.add(1072);
        this.mEvents.add(1065);
        this.mEvents.add(1155);
        this.mEvents.add(1183);
        this.mEvents.add(1109);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.mBackIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.L3(view2);
            }
        });
        this.mTitleBarLayout.setVisibility((this.B0 || this.A0) ? 8 : 0);
        this.mTitleTv.setText(this.z);
        if (this.z0) {
            initSortView(view, false);
            this.mAddSongIv.setVisibility(0);
            this.mAddSongIv.setOnClickListener(this);
        } else if (this.A0) {
            this.L0.setVisibility(0);
            this.L0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.M3(view2);
                }
            });
        } else if (this.G0) {
            initSortView(view, false);
            this.mMenuMore.setVisibility(8);
        } else {
            initSortView(view, false);
            this.mMenuMore.setVisibility(0);
            this.mMenuMore.setOnClickListener(this);
        }
        this.mMenuMore.setVisibility(8);
        View view2 = this.mSortIv;
        if (view2 != null) {
            view2.setVisibility(8);
            ImageView imageView = this.mAudioSortPoint;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        }
        this.mAddSongIv.setVisibility(8);
    }

    public final void j3(final ArrayList arrayList) {
        mc7.K(arrayList).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.v3(arrayList, (ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.w3((Boolean) obj);
            }
        });
    }

    public final void k3() {
        FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.u.G(), this.s, true);
        this.mFileOperateUtils = fileOperateUtils;
        this.y.setFileOperateUtils(fileOperateUtils);
        this.y.preDelete(0, this.u.G(), false);
    }

    public void k4() {
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        AudioItem item = this.u.getItem((iD != 3 || this.u.getData().size() <= 0) ? 0 : new Random().nextInt(this.u.getData().size()));
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(item);
        PlayAudioListData.getInstance().setPlayList((ArrayList) this.u.getData(), null);
        p06.d0("vd_miniplayer_none");
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = this.s;
            PlayAudioListData.getInstance().setSource(playAudioDataConvertToPlayAudioData, this.z);
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = this.z;
            playAudioDataConvertToPlayAudioData.playListId = this.w0.bucketId;
            playAudioDataConvertToPlayAudioData.sourceAction = p06.y(this.s, ao.U().f0(item));
            MusicPlayManager.S().C(getApplicationContext());
            PlayAudioListData.getInstance().setRepeatMode(iD);
            MusicPlayManager.S().u1(item);
            MusicPlayManager.S().N0(playAudioDataConvertToPlayAudioData);
        }
    }

    public final void l3(final AudioItem audioItem) {
        mc7.K(audioItem).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.z3(audioItem, (AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.A3((Boolean) obj);
            }
        });
    }

    public final void l4() {
        if (this.A0) {
            this.L0.setVisibility((this.isInEditMode || this.q.isEmpty()) ? 8 : 0);
            return;
        }
        if (this.z0) {
            this.mAddSongIv.setVisibility((this.isInEditMode || this.q.isEmpty()) ? 8 : 0);
        } else if (this.G0 || this.B0) {
            this.mMenuMore.setVisibility(8);
        } else {
            this.mMenuMore.setVisibility(this.isInEditMode ? 8 : 0);
        }
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        t55.u(this.z);
        super.loadData(z, z2);
        LogUtils.i("PlayListFragment", "PlayListFragment loadData ");
        mc7.K(this).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.O3((PlayListFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.P3((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                PlayListFragment.N3((Throwable) obj);
            }
        });
    }

    public final void m3(final ArrayList arrayList) {
        mc7.K(arrayList).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.x3(arrayList, (ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.y3((Boolean) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            if (this.z0) {
                r06.c(screen_type, "favorite_list_show");
            } else if (this.A0) {
                r06.c(screen_type, "vd_recent_playlist_show");
            }
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            if (this.z0) {
                r06.e(this.f0, null, "favorite_list_show", 9324L);
            } else if (this.A0) {
                r06.e(this.f0, null, "vd_recent_playlist_show", 9324L);
            }
        }
    }

    public final void n3(final AudioItem audioItem) {
        mc7.K(audioItem).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.B3(audioItem, (AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.C3((Boolean) obj);
            }
        });
    }

    @Override
    public boolean onBackPressed() {
        h3();
        return super.onBackPressed();
    }

    @Override
    public void onClick(View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        if (view.getId() == R.id.iv_add_song) {
            f3(true, "vd_favorite_moreadd_cl");
            if (this.z0) {
                p06.f0(null, "vd_favorite_moreadd_cl", 9324L);
                return;
            }
            return;
        }
        if (view.getId() != R.id.add_play_list_tv) {
            if (view.getId() == R.id.menu_more) {
                g4();
                p06.f0(null, "vd_nsonglist_list_more_cl", 9324L);
                return;
            } else {
                if (view.getId() == R.id.iv_play_shuffle) {
                    startShufflePlay();
                    return;
                }
                return;
            }
        }
        if (this.z0) {
            f3(true, "vd_favorite_add_cl");
            p06.f0(null, "vd_favorite_add_cl", 9324L);
        } else if (this.s != 21 && !this.G0) {
            f3(true, "vd_add_song_text");
            p06.f0(null, "vd_add_song_text", 932460000082L);
        } else {
            if (this.G0) {
                this.H0 = true;
            }
            h27.c().e(1059, new Object[0]);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f0 = b39.a(this.mContext);
        this.I0 = b39.b(this.mContext);
        boolean z = true;
        this.J = true;
        Bundle arguments = getArguments();
        this.w0 = new MediaBucket();
        this.s = 30;
        LogUtils.v("PlayListFragment", "PlayListFragment,bundle:" + arguments);
        if (arguments != null) {
            this.w0.setBucketId(arguments.getLong("bucket_fragment_buicket_id"));
            this.w0.setParentPath(arguments.getString("bucket_fragment_buicket_path"));
            String string = arguments.getString("bucket_fragment_buicket_name");
            this.z = string;
            this.w0.setParentName(string);
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        }
        int i2 = this.s;
        boolean z2 = i2 == 32;
        this.A0 = z2;
        this.G0 = i2 == 41;
        boolean z3 = i2 == 33;
        this.z0 = z3;
        this.B0 = i2 == 53;
        if (!z2 && !z3) {
            z = false;
        }
        this.C0 = z;
        if (!z) {
            PlayList playList = new PlayList(this.z);
            this.y0 = playList;
            playList.id = (int) this.w0.bucketId;
        }
        LogUtils.i("PlayListFragment", "mListFlag:" + this.s + StringUtils.COMMA + this);
        PlayListModel playListModel = (PlayListModel) new ViewModelProvider((ViewModelStoreOwner) getContext(), new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(PlayListModel.class);
        this.x0 = playListModel;
        if (this.A0) {
            LogUtils.v("PlayListFragment", "PlayListFragment,mPlayListModel.getPlayListRecentlyLiveData()");
            this.x0.k().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.Q3((List) obj);
                }
            });
        } else if (this.z0) {
            playListModel.l().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.R3((List) obj);
                }
            });
        } else if (this.G0) {
            postDelayLoadData();
        } else if (this.B0) {
            postDelayLoadData();
            this.x0.j().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.S3((Boolean) obj);
                }
            });
            this.x0.k().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.T3((List) obj);
                }
            });
        } else {
            playListModel.f().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.U3((Boolean) obj);
                }
            });
        }
        registerBottomBarVisibleChanged();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.o = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        a2();
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            this.K0 = false;
        } else {
            loadData(false);
            this.K0 = true;
        }
        markPointVisiable(!z);
    }

    @Override
    public int onLayoutId() {
        return R.layout.audios_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        LogUtils.i("PlayListFragment", "onPause:" + this.s);
        this.m = false;
        if (!this.A0) {
            sq3.a().c(this);
        }
        MusicPlayManager.S().E1(this);
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        this.u.T(audioItem);
    }

    @Override
    public void onResume() {
        super.onResume();
        LogUtils.i("PlayListFragment", "onResume:" + this.s);
        if (this.s == 30) {
            if (!this.P) {
                loadData(false);
            }
            this.P = false;
        }
        if (Q0()) {
            if (this.mDataUpdated) {
                updateShowUI();
            }
            h27.c().e(1156, Integer.valueOf(BaseFragment.SCROLL_END));
        }
        if (!this.A0) {
            sq3.a().b(this);
        }
        MusicPlayManager.S().e1(this);
        markPointVisiable(true);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AudioItemAdapter audioItemAdapter = new AudioItemAdapter(this.mContext);
        this.u = audioItemAdapter;
        audioItemAdapter.R(this.s);
        this.D0 = getResources().getDimensionPixelOffset(R.dimen.audio_file_operate_views_height);
        this.L0 = (ImageView) view.findViewById(R.id.iv_audio_history_clear);
        initTitleBar(view);
        VideoMainRecyclerView videoMainRecyclerView = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.H = videoMainRecyclerView;
        if (this.B0 || this.A0) {
            videoMainRecyclerView.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        }
        this.H.addOnScrollListener(new a());
        this.I = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        this.H.setAdapter(this.u);
        this.u.bindToRecyclerView(this.H);
        this.H.setType("audio");
        r3();
        if (this.z0) {
            O0(view, this.H);
        } else {
            OverScrollDecorHelper.setUpOverScroll(this.H, 0);
        }
        if (this.B0 || this.A0) {
            setRvOverScrollDecorListener(this.H);
        }
        View viewFindViewById = view.findViewById(R.id.tab_menu_layout);
        this.F0 = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.V3(view2);
                }
            });
            TextView textView = (TextView) this.F0.findViewById(R.id.media_num);
            this.w = textView;
            textView.setText(r44.a(this.q.size()));
        }
        this.J0 = (ConstraintLayout) view.findViewById(R.id.cl_drag_animation_view);
        RoundImageView roundImageView = (RoundImageView) view.findViewById(R.id.iv_play_shuffle);
        this.mIvShufflePlayBtn = roundImageView;
        if (roundImageView != null) {
            roundImageView.setVisibility(8);
            this.mIvShufflePlayBtn.setOnClickListener(this);
        }
        super.onViewCreatedEnd(view, bundle);
        N1();
    }

    @Override
    public void onVisibleChanged(boolean z) {
        super.onVisibleChanged(z);
    }

    public final void p3(AudioItem audioItem) {
        mc7.K(audioItem).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.G3((AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.H3((Boolean) obj);
            }
        });
    }

    public final void q3(final ArrayList arrayList) {
        mc7.K(arrayList).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFragment.I3(arrayList, (ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.J3((Boolean) obj);
            }
        });
    }

    @Override
    public void refresh() {
        LogUtils.i("PlayListFragment", "refresh " + this.s);
        loadData(false);
    }

    @Override
    public void s1(int i2) {
        if (i2 == 0) {
            this.y.preShare(false);
            p06.f0(null, "vd_mul_share_cl", 932460000041L);
            return;
        }
        if (i2 == 1) {
            M0(false);
            postDelayLoadData();
            return;
        }
        if (i2 == 2) {
            g3();
            return;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                return;
            }
            kz5.b("vd_mul_del_cl", false, this.u.G().size());
            k3();
            return;
        }
        if (!this.G0) {
            showRemoveDialog();
        } else {
            kz5.b("vd_mul_del_cl", false, this.u.G().size());
            k3();
        }
    }

    @Override
    public void showRemoveDialog() {
        String string;
        final ArrayList arrayListG = this.u.G();
        boolean z = arrayListG.size() > 1;
        if (!this.z0 && !this.G0) {
            kz5.b("vd_mul_remove_cl", false, this.u.G().size());
        }
        if (this.z0) {
            string = getString(R.string.remove_from_favorites);
        } else if (this.A0) {
            string = z ? getString(R.string.clear_histories_recorded, Integer.valueOf(arrayListG.size())) : getString(R.string.clear_history);
        } else {
            string = z ? getString(R.string.remove_songs_new, Integer.valueOf(arrayListG.size())) : getString(R.string.remove_song_new);
        }
        if (this.z0) {
            string = z ? getString(R.string.remove_songs_new_multi, Integer.valueOf(arrayListG.size())) : getString(R.string.remove_song_new_single);
        }
        new com.transsion.widgetslib.dialog.d.a(this.mContext).k(string).u(this.A0 ? R.string.clear : R.string.remove, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.X3(arrayListG, dialogInterface, i2);
            }
        }).m(com.transsion.playercommon.R.string.cancel, null).a().show();
    }

    @Override
    public void startShufflePlay() {
        AudioItemAdapter audioItemAdapter;
        if (!this.m || (audioItemAdapter = this.u) == null || audioItemAdapter.getData().size() <= 0) {
            return;
        }
        int iNextInt = new Random().nextInt(this.u.getData().size());
        AudioItem audioItem = this.u.getData().get(iNextInt);
        audioItem.setSelectedPos(iNextInt);
        this.u.T(audioItem);
        t06.a("audio");
        j4(audioItem, "", true);
    }

    @Override
    public void t(boolean z) {
        if (z) {
            return;
        }
        loadData(false);
        p06.B(this.s, Boolean.FALSE);
    }

    public final void u3(Boolean bool) {
        editMode(false);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        this.u.setNewData(this.q);
        LogUtils.i("PlayListFragment", "updateShowUI " + this.q.size() + ", " + this.s);
        this.F0.setVisibility(this.q.isEmpty() ? 8 : 0);
        this.w.setText(r44.a(this.q.size()));
        H0();
        A1();
        l4();
        Z3();
        if (this.G0 || this.B0) {
            this.mSortIv.setVisibility(8);
            ImageView imageView = this.mAudioSortPoint;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        }
    }

    public final void w3(Boolean bool) {
        this.E0.dismiss();
        PlayListModel playListModel = this.x0;
        if (playListModel != null) {
            playListModel.p(true);
        }
        editMode(false);
        h27.c().e(1055, new Object[0]);
    }

    public final void y3(Boolean bool) {
        this.E0.dismiss();
        PlayListModel playListModel = this.x0;
        if (playListModel != null) {
            playListModel.q(true);
        }
        editMode(false);
        h27.c().e(1055, new Object[0]);
    }
}
