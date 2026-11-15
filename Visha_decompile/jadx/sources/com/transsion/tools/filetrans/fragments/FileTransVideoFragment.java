package com.transsion.tools.filetrans.fragments;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.tools.R;
import com.transsion.tools.covert.fragments.VideosSelectFragment;
import com.transsion.tools.filetrans.fragments.FileTransVideoFragment;
import defpackage.e74;
import defpackage.h27;
import defpackage.i81;
import defpackage.k29;
import defpackage.ld7;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.t74;
import defpackage.tpb;
import defpackage.ts3;
import defpackage.vb;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye6;
import defpackage.yx2;
import defpackage.zf1;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ'\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00040\fj\b\u0012\u0004\u0012\u00020\u0004`\r2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\u001d\u0010\u001eJ7\u0010#\u001a\u00020\u00132\u000e\u0010 \u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0006H\u0014¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0013H\u0014¢\u0006\u0004\b%\u0010\u0003J\u0017\u0010'\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u001e¨\u0006*"}, d2 = {"Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;", "Lcom/transsion/tools/covert/fragments/VideosSelectFragment;", MethodDecl.initName, "()V", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItem", "", "playAll", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "c2", "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;", "preload", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "T1", "(Z)Ljava/util/ArrayList;", "", "onLayoutId", "()I", "Lzfb;", "K1", "Landroid/view/View;", "view", "initTitleBar", "(Landroid/view/View;)V", "mediaChange", "loadData", "(ZZ)V", "isVideo", "t", "(Z)V", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "position", "child", "u1", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V", "x1", "isVisibleToUser", "setUserVisibleHint", "e0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransVideoFragment extends VideosSelectFragment {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileTransVideoFragment a(int i) {
            FileTransVideoFragment fileTransVideoFragment = new FileTransVideoFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
            fileTransVideoFragment.setArguments(bundle);
            return fileTransVideoFragment;
        }

        public Companion() {
        }
    }

    private final ArrayList T1(boolean preload) {
        int i = this.s;
        if (i != 4) {
            if (i != 99) {
                return new ArrayList();
            }
            tpb tpbVarA = tpb.b.a();
            String str = yx2.l;
            y45.i(str, "FILE_TRANS_FILE_RELATIVE_PATH");
            return new ArrayList(tpbVarA.f0(str));
        }
        tpb.a aVar = tpb.b;
        List listU = aVar.a().U(preload ? 30 : Integer.MAX_VALUE);
        LiveEventBus.b().d("have_video").postValue(Boolean.valueOf(!listU.isEmpty()));
        if (listU.isEmpty()) {
            return new ArrayList();
        }
        List listO = aVar.a().O(false, Integer.MAX_VALUE, false);
        if (listO.isEmpty()) {
            return new ArrayList(listU);
        }
        ArrayList arrayList = new ArrayList(listU.size());
        arrayList.addAll(listO);
        List listF0 = i81.F0(listU, listO);
        if (!listF0.isEmpty()) {
            arrayList.addAll(SortUtil.z(listF0));
        }
        return arrayList;
    }

    private final PlayVideoData c2(MediaItem mediaItem, boolean playAll) {
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.folderName = this.B;
            playVideoDataConvertToPlayVideoData.listFlag = this.s;
            playVideoDataConvertToPlayVideoData.fromPlayAll = playAll;
            if (playAll) {
                playVideoDataConvertToPlayVideoData.playPosition = 0L;
            }
            playVideoDataConvertToPlayVideoData.bucketId = this.a0.bucketId;
        }
        y45.g(playVideoDataConvertToPlayVideoData);
        return playVideoDataConvertToPlayVideoData;
    }

    public static PlayVideoData d2(FileTransVideoFragment fileTransVideoFragment, MediaItem mediaItem, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return fileTransVideoFragment.c2(mediaItem, z);
    }

    public static final void e2(FileTransVideoFragment fileTransVideoFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y45.j(baseQuickAdapter, "adapter");
        if (fileTransVideoFragment.ingoreClickEvent()) {
            return;
        }
        fileTransVideoFragment.mFirstClickTime = System.currentTimeMillis();
        if (!fileTransVideoFragment.mIsDialogShowing && i < baseQuickAdapter.getData().size()) {
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            MediaItem mediaItem = (MediaItem) obj;
            if (mediaItem.isTimeItem) {
                return;
            }
            mediaItem.setSelectedPos(i);
            boolean z = y45.e(mediaItem, VideoPlayManager.X().c0()) && VideoPlayManager.X().G;
            VideoPlayManager.X().b0().setPlayMediaItem(mediaItem);
            if (z) {
                LiveEventBus.b().c("launch_intent_video_player_activity", VideoPlayManager.X().m0(fileTransVideoFragment.getContext(), true, true, false));
                return;
            }
            if (VideoPlayManager.X().G) {
                VideoPlayManager.X().y1();
            }
            PlayVideoData playVideoDataD2 = d2(fileTransVideoFragment, mediaItem, false, 2, null);
            VideoPlayManager.X().M = false;
            Log.d("VideosSelectFragment", "startOpenVideo " + playVideoDataD2);
            if (VideoPlayManager.X().x0() && fileTransVideoFragment.mActivity.isAlertWindowPermissionGranted()) {
                VideoPlayManager.X().o2(playVideoDataD2);
            } else {
                VideoPlayerActivityInner.G2(playVideoDataD2);
            }
        }
    }

    public static final ld7 f2(FileTransVideoFragment fileTransVideoFragment, FileTransVideoFragment fileTransVideoFragment2) {
        y45.j(fileTransVideoFragment2, "it");
        if (fileTransVideoFragment.s != 99) {
            mc7 mc7VarK = mc7.K(zfb.a);
            y45.g(mc7VarK);
            return mc7VarK;
        }
        ts3 ts3Var = ts3.a;
        Context context = fileTransVideoFragment.mContext;
        y45.i(context, "mContext");
        return ts3Var.e(context);
    }

    public static final ld7 g2(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ld7) e74Var.invoke(obj);
    }

    public static final ArrayList h2(FileTransVideoFragment fileTransVideoFragment, boolean z, zfb zfbVar) {
        y45.j(zfbVar, "it");
        ArrayList arrayListT1 = fileTransVideoFragment.T1(z);
        if (fileTransVideoFragment.s == 99) {
            ts3.a.d(arrayListT1);
        }
        ye6.b(arrayListT1);
        ls1.a(arrayListT1);
        fileTransVideoFragment.F0(arrayListT1);
        return arrayListT1;
    }

    public static final ArrayList i2(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ArrayList) e74Var.invoke(obj);
    }

    public static final zfb j2(FileTransVideoFragment fileTransVideoFragment, ArrayList arrayList) {
        fileTransVideoFragment.r.clear();
        if (arrayList != null && !arrayList.isEmpty()) {
            fileTransVideoFragment.r.addAll(arrayList);
        }
        fileTransVideoFragment.mDataUpdated = true;
        Fragment parentFragment = fileTransVideoFragment.getParentFragment();
        if (parentFragment instanceof FileTransMainFragment) {
            if (((FileTransMainFragment) parentFragment).j0()) {
                fileTransVideoFragment.U1();
            }
        } else if (fileTransVideoFragment.mbFragmentShowCompleted) {
            fileTransVideoFragment.U1();
        }
        return zfb.a;
    }

    public static final void k2(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    @Override
    public void K1() {
        if (this.s != 99) {
            super.K1();
            return;
        }
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    FileTransVideoFragment.e2(this.b, baseQuickAdapter, view, i);
                }
            });
        }
    }

    @Override
    public void initTitleBar(View view) {
        y45.j(view, "view");
        View viewFindViewById = view.findViewById(R.id.title_bar);
        y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
        ((ViewStub) viewFindViewById).inflate().setVisibility(8);
    }

    @Override
    public void loadData(final boolean preload, boolean mediaChange) {
        mc7 mc7VarG = mc7.K(this).i(this.mIsVisibleToUser ? 0 : 800, TimeUnit.MILLISECONDS).g(bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransVideoFragment.f2(this.b, (FileTransVideoFragment) obj);
            }
        };
        mc7 mc7VarW = mc7VarG.w(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FileTransVideoFragment.g2(e74Var, obj);
            }
        });
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransVideoFragment.h2(this.b, preload, (zfb) obj);
            }
        };
        mc7 mc7VarM = mc7VarW.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FileTransVideoFragment.i2(e74Var2, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransVideoFragment.j2(this.b, (ArrayList) obj);
            }
        };
        mc7VarM.Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                FileTransVideoFragment.k2(e74Var3, obj);
            }
        });
    }

    @Override
    public int onLayoutId() {
        return R.layout.medias_select_fragment;
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        BucketDateAdapter bucketDateAdapter;
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser || this.mIsVisibleToUser || (bucketDateAdapter = this.t) == null || bucketDateAdapter == null) {
            return;
        }
        bucketDateAdapter.notifyDataSetChanged();
    }

    @Override
    public void t(boolean isVideo) {
        super.t(isVideo);
        ArrayList arrayList = this.r;
        y45.h(arrayList, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.MediaItem>");
        List listT = SortUtil.t(new ArrayList(arrayList));
        if (listT == null) {
            listT = y71.k();
        }
        this.r.clear();
        this.r.addAll(listT);
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.setNewData(listT);
        }
        BucketDateAdapter bucketDateAdapter2 = this.t;
        if (bucketDateAdapter2 != null) {
            bucketDateAdapter2.notifyDataSetChanged();
        }
        Log.i("VideosSelectFragment", "[TEST] onSortByChanged: " + listT.size() + ", mAdapter: " + this.t);
    }

    @Override
    public void u1(BaseQuickAdapter adapter, View view, int position, boolean child) {
        y45.j(adapter, "adapter");
        y45.j(view, "view");
        if (adapter.getData().isEmpty()) {
            return;
        }
        Object obj = adapter.getData().get(position);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
        MediaItem mediaItem = (MediaItem) obj;
        boolean z = child == ((CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox)).isChecked();
        ((BucketDateAdapter) adapter).T(mediaItem, z, position);
        h27.c().e(1172, mediaItem, Boolean.valueOf(z));
    }

    @Override
    public void x1() {
        TextView textView;
        ImageView imageView;
        View viewFindViewById;
        super.x1();
        View view = this.q;
        if (view != null) {
            if (view != null && (viewFindViewById = view.findViewById(R.id.add_video_tv)) != null) {
                viewFindViewById.setVisibility(8);
            }
            View view2 = this.q;
            if (view2 != null && (imageView = (ImageView) view2.findViewById(R.id.lottie_no_videos_view)) != null) {
                imageView.setImageResource(com.transsion.common.R.drawable.ic_video_empty_illustration);
            }
            View view3 = this.q;
            if (view3 == null || (textView = (TextView) view3.findViewById(R.id.text_no_videos)) == null) {
                return;
            }
            textView.setText(this.s == 99 ? getString(R.string.no_have_history) : getString(R.string.no_video));
        }
    }
}
