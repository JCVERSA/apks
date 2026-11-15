package com.transsion.tools.filetrans.fragments;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.a;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.activities.AudioBucketListActivity;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.AudioBaseFragment;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.fragments.FileTransAudioFragment;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.ao;
import defpackage.du4;
import defpackage.e74;
import defpackage.h27;
import defpackage.i81;
import defpackage.if7;
import defpackage.k29;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.p06;
import defpackage.raa;
import defpackage.t74;
import defpackage.ts3;
import defpackage.vb;
import defpackage.y45;
import defpackage.yx2;
import defpackage.zf1;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@RequiresApi(29)
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 Y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001ZB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0005J'\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ-\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0014¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b*\u0010\nJ\u000f\u0010+\u001a\u00020\bH\u0016¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010,\u001a\u00020\bH\u0016¢\u0006\u0004\b,\u0010\u0005J\u001f\u0010/\u001a\u00020\b2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u0015H\u0015¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u00020\b2\u0006\u00101\u001a\u00020\u0015H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\bH\u0014¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\bH\u0014¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020%H\u0016¢\u0006\u0004\b6\u0010'J\u0017\u00108\u001a\u00020\b2\u0006\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010\nJ7\u0010=\u001a\u00020\b2\u000e\u0010:\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u0003092\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020\u0015H\u0014¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\bH\u0014¢\u0006\u0004\b?\u0010\u0005J\u0017\u0010A\u001a\u00020\b2\u0006\u0010@\u001a\u00020\u0015H\u0016¢\u0006\u0004\bA\u00103J\u000f\u0010B\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0005J+\u0010G\u001a\u00020\b2\u0006\u0010C\u001a\u00020%2\u0012\u0010F\u001a\n\u0012\u0006\b\u0001\u0012\u00020E0D\"\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\bH\u0016¢\u0006\u0004\bI\u0010\u0005J\u0017\u0010K\u001a\u00020\b2\u0006\u0010J\u001a\u00020%H\u0016¢\u0006\u0004\bK\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006["}, d2 = {"Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;", "Lcom/transsion/audio/fragments/AudioBaseFragment;", "Lh27$b;", "Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;", MethodDecl.initName, "()V", "Landroid/view/View;", "view", "Lzfb;", "X1", "(Landroid/view/View;)V", "Ljava/util/ArrayList;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "Lkotlin/collections/ArrayList;", "e2", "()Ljava/util/ArrayList;", "g2", "T1", "audioItem", "", "action", "", "needForcePlay", "f2", "(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "onLayoutId", "()I", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initTitleBar", "onDestroyView", "onDestroy", "preload", "mediaChange", "loadData", "(ZZ)V", "isVideo", "t", "(Z)V", "N0", "updateShowUI", "getActivityMenuSwitchFlag", "v", "onClick", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "position", "child", "y1", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V", "A1", "isVisibleToUser", "setUserVisibleHint", "initEvents", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "scrollToTop", "count", "q", "(I)V", "Lcom/transsion/dbdata/beans/media/MediaBucket;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/transsion/dbdata/beans/media/MediaBucket;", "mMediaBucket", "Lcom/transsion/utils/CustomGridLayoutManager;", ExifInterface.LONGITUDE_WEST, "Lcom/transsion/utils/CustomGridLayoutManager;", "mGridLayoutManager", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "X", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "mOnScrollListener", "Y", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransAudioFragment extends AudioBaseFragment implements h27.b, ConvertingTaskManager.b {

    public static final Companion INSTANCE = new Companion(null);

    public MediaBucket mMediaBucket;

    public CustomGridLayoutManager mGridLayoutManager;

    public final RecyclerView.OnScrollListener mOnScrollListener = new RecyclerView.OnScrollListener() {
        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            y45.j(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 1 || newState == 2) {
                Glide.with(this.c).pauseRequests();
            } else {
                Glide.with(this.c).resumeRequests();
            }
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileTransAudioFragment a(int i) {
            FileTransAudioFragment fileTransAudioFragment = new FileTransAudioFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
            fileTransAudioFragment.setArguments(bundle);
            return fileTransAudioFragment;
        }

        public Companion() {
        }
    }

    public static final class b extends if7 {
        public b() {
            super(1000, true);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            y45.j(baseQuickAdapter, "adapter");
            y45.j(view, "view");
            if (((PlayBaseFragment) FileTransAudioFragment.this).mIsDialogShowing) {
                return;
            }
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.AudioItem");
            AudioItem audioItem = (AudioItem) obj;
            audioItem.setSelectedPos(i);
            FileTransAudioFragment.this.u.T(audioItem);
            boolean z = false;
            if (FileTransAudioFragment.this.baseActivity() instanceof AudioBucketListActivity) {
                List listD = a.d();
                if (listD.size() > 1) {
                    Activity activity = (Activity) listD.get(1);
                    if (y45.e(AudioPlayerActivity.class, activity.getClass())) {
                        z = listD.size() == 2;
                        activity.finish();
                        LogUtils.O("FileTransAudioFragment", "finish AudioPlayerActivity");
                    }
                }
                LogUtils.v("FileTransAudioFragment", "finish");
            }
            FileTransAudioFragment fileTransAudioFragment = FileTransAudioFragment.this;
            String strY = p06.y(fileTransAudioFragment.s, ao.d.a().f0(audioItem));
            y45.i(strY, "markPointClickItem(...)");
            fileTransAudioFragment.f2(audioItem, strY, z);
        }
    }

    private final void T1() {
        if (this.s == 98) {
            b bVar = new b();
            this.v = bVar;
            this.u.setOnItemClickListener(bVar);
        } else {
            this.u.setOnSelectListener(this);
            this.u.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    FileTransAudioFragment.U1(this.b, baseQuickAdapter, view, i);
                }
            });
            this.u.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
                @Override
                public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    return FileTransAudioFragment.V1(this.a, baseQuickAdapter, view, i);
                }
            });
            this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    FileTransAudioFragment.W1(this.a, baseQuickAdapter, view, i);
                }
            });
        }
    }

    public static final void U1(FileTransAudioFragment fileTransAudioFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y45.j(baseQuickAdapter, "adapter");
        y45.j(view, "view");
        fileTransAudioFragment.mFirstClickTime = System.currentTimeMillis();
        if (i < baseQuickAdapter.getData().size()) {
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            if (((MediaItem) obj).isTimeItem) {
                return;
            }
            fileTransAudioFragment.y1(baseQuickAdapter, view, i, false);
        }
    }

    public static final boolean V1(FileTransAudioFragment fileTransAudioFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y45.j(baseQuickAdapter, "adapter");
        y45.j(view, "view1");
        if (i < baseQuickAdapter.getData().size()) {
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            if (((MediaItem) obj).isTimeItem) {
                return true;
            }
            fileTransAudioFragment.y1(baseQuickAdapter, view, i, false);
        }
        return true;
    }

    public static final void W1(FileTransAudioFragment fileTransAudioFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y45.j(baseQuickAdapter, "adapter");
        y45.j(view, "view");
        fileTransAudioFragment.mFirstClickTime = System.currentTimeMillis();
        if (i < baseQuickAdapter.getData().size()) {
            fileTransAudioFragment.y1(baseQuickAdapter, view, i, true);
        }
    }

    private final void X1(View view) {
        AudioItemAdapter audioItemAdapter = new AudioItemAdapter(this.mContext);
        this.u = audioItemAdapter;
        audioItemAdapter.R(this.s);
        this.u.X(false);
        this.u.Q(this.s != 98);
        this.H = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.I = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        final Context context = getContext();
        this.mGridLayoutManager = new CustomGridLayoutManager(context) {
            @Override
            public boolean canScrollVertically() {
                if (this.e.q.size() == 0) {
                    return false;
                }
                return super.canScrollVertically();
            }
        };
        this.H.addOnScrollListener(this.mOnScrollListener);
        CustomGridLayoutManager customGridLayoutManager = this.mGridLayoutManager;
        if (customGridLayoutManager != null) {
            customGridLayoutManager.setSpanCount(1);
        }
        this.H.setLayoutManager(this.mGridLayoutManager);
        this.H.setAdapter(this.u);
        this.H.setType("audio");
    }

    public static final ld7 Y1(FileTransAudioFragment fileTransAudioFragment, FileTransAudioFragment fileTransAudioFragment2) {
        y45.j(fileTransAudioFragment2, "it");
        if (fileTransAudioFragment.s != 98) {
            mc7 mc7VarK = mc7.K(zfb.a);
            y45.g(mc7VarK);
            return mc7VarK;
        }
        ts3 ts3Var = ts3.a;
        Context context = fileTransAudioFragment.mContext;
        y45.i(context, "mContext");
        return ts3Var.e(context);
    }

    public static final ld7 Z1(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ld7) e74Var.invoke(obj);
    }

    public static final ArrayList a2(FileTransAudioFragment fileTransAudioFragment, zfb zfbVar) {
        y45.j(zfbVar, "it");
        ArrayList arrayListE2 = fileTransAudioFragment.e2();
        if (fileTransAudioFragment.s == 98) {
            ts3.a.d(arrayListE2);
        }
        fileTransAudioFragment.G0(arrayListE2);
        return arrayListE2;
    }

    public static final ArrayList b2(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ArrayList) e74Var.invoke(obj);
    }

    public static final zfb c2(FileTransAudioFragment fileTransAudioFragment, ArrayList arrayList) {
        fileTransAudioFragment.q.clear();
        if (arrayList != null && !arrayList.isEmpty()) {
            fileTransAudioFragment.q.addAll(arrayList);
        }
        fileTransAudioFragment.mDataUpdated = true;
        Fragment parentFragment = fileTransAudioFragment.getParentFragment();
        if (parentFragment instanceof FileTransMainFragment) {
            if (((FileTransMainFragment) parentFragment).j0()) {
                fileTransAudioFragment.g2();
            }
        } else if (fileTransAudioFragment.mbFragmentShowCompleted) {
            fileTransAudioFragment.g2();
        }
        return zfb.a;
    }

    public static final void d2(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    private final ArrayList e2() {
        int i = this.s;
        if (i != 21) {
            if (i != 98) {
                return new ArrayList();
            }
            ao aoVarA = ao.d.a();
            String str = yx2.l;
            y45.i(str, "FILE_TRANS_FILE_RELATIVE_PATH");
            return new ArrayList(aoVarA.M(str, false));
        }
        ao.a aVar = ao.d;
        Pair pairX = aVar.a().x(this.z);
        this.N = Long.valueOf(((Number) pairX.getFirst()).intValue());
        List list = (List) pairX.getSecond();
        if (list.isEmpty()) {
            return new ArrayList();
        }
        List listB = du4.a.b(aVar.a(), null, 1, null);
        if (listB.isEmpty()) {
            return new ArrayList(list);
        }
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(listB);
        List listF0 = i81.F0(list, listB);
        if (!listF0.isEmpty()) {
            arrayList.addAll(SortUtil.u(new ArrayList(listF0)));
        }
        return arrayList;
    }

    public final void f2(AudioItem audioItem, String action, boolean needForcePlay) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData == null) {
            LogUtils.m("FileTransAudioFragment", "startOpenVideo: playAudioData is null");
            return;
        }
        playAudioDataConvertToPlayAudioData.listFlag = this.s;
        playAudioDataConvertToPlayAudioData.autoPlay = true;
        playAudioDataConvertToPlayAudioData.folderName = this.z;
        playAudioDataConvertToPlayAudioData.sourceAction = action;
        LogUtils.N("FileTransAudioFragment", "sourceAction:" + action, "needForcePlay:" + needForcePlay, "mListFlag:" + this.s, "mTitle:" + this.z, "audioItem:" + audioItem);
        if (this.s == 36 || needForcePlay) {
            AudioPlayerActivity.D1(this.mActivity, playAudioDataConvertToPlayAudioData);
        } else {
            LiveEventBus.b().c("launch_audio_player_activity_from_audio_list", playAudioDataConvertToPlayAudioData);
        }
    }

    private final void g2() {
        LogUtils.j("FileTransAudioFragment", "updateUI");
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            ArrayList arrayList = this.q;
            y45.h(arrayList, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem>");
            audioItemAdapter.setNewData(arrayList);
        }
        A1();
        if (this.q.isEmpty() && this.isInEditMode) {
            this.u.O(false);
        }
        H0();
        this.mDataUpdated = false;
    }

    @Override
    public void A1() {
        super.A1();
        BaseFragment.d dVar = this.mMenuShowListener;
        if (dVar != null) {
            ArrayList arrayList = this.q;
            y45.i(arrayList, "mDataList");
            dVar.a(!arrayList.isEmpty());
        }
        View view = this.l;
        if (view != null) {
            view.findViewById(R.id.add_video_tv).setVisibility(8);
            ((ImageView) this.l.findViewById(R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_audio_empty_illustration);
            ((TextView) this.l.findViewById(R.id.text_no_videos)).setText(this.s == 98 ? getString(R.string.no_have_history) : getString(R.string.no_audio));
        }
    }

    @Override
    public void N0() {
        View view;
        if (this.l != null || (view = this.o) == null) {
            return;
        }
        View viewFindViewById = view.findViewById(R.id.main_empty_view);
        y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
        this.l = ((ViewStub) viewFindViewById).inflate();
        if (raa.i(this.mContext)) {
            this.l.setContentDescription(getString(R.string.file_empty));
        }
        D1();
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        y45.j(args, "args");
        super.didReceivedNotification(eventId, Arrays.copyOf(args, args.length));
        if (eventId == 1118 && this.mDataUpdated) {
            g2();
        }
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1118);
    }

    @Override
    public void initTitleBar(View view) {
        y45.j(view, "view");
        View viewFindViewById = view.findViewById(R.id.title_bar);
        y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
        ((ViewStub) viewFindViewById).inflate().setVisibility(8);
    }

    @Override
    public void loadData(boolean preload, boolean mediaChange) {
        LogUtils.v("FileTransAudioFragment", "onChangeFileTransAudioFragment");
        mc7 mc7VarG = mc7.K(this).i(this.mIsVisibleToUser ? 0 : 800, TimeUnit.MILLISECONDS).g(bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransAudioFragment.Y1(this.b, (FileTransAudioFragment) obj);
            }
        };
        mc7 mc7VarW = mc7VarG.w(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FileTransAudioFragment.Z1(e74Var, obj);
            }
        });
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransAudioFragment.a2(this.b, (zfb) obj);
            }
        };
        mc7 mc7VarM = mc7VarW.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FileTransAudioFragment.b2(e74Var2, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return FileTransAudioFragment.c2(this.b, (ArrayList) obj);
            }
        };
        mc7VarM.Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                FileTransAudioFragment.d2(e74Var3, obj);
            }
        });
    }

    @Override
    public void onClick(View v) {
        y45.j(v, "v");
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.s = arguments != null ? arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG) : 21;
        MediaBucket mediaBucket = new MediaBucket();
        this.mMediaBucket = mediaBucket;
        if (arguments != null) {
            y45.g(mediaBucket);
            mediaBucket.setBucketId(arguments.getLong("bucket_fragment_buicket_id"));
            MediaBucket mediaBucket2 = this.mMediaBucket;
            y45.g(mediaBucket2);
            mediaBucket2.fromInternal = arguments.getBoolean("bucket_fragment_is_internet");
            this.z = arguments.getString("bucket_fragment_buicket_name");
            MediaBucket mediaBucket3 = this.mMediaBucket;
            y45.g(mediaBucket3);
            mediaBucket3.setVirtualFolder(arguments.getBoolean("bucket_fragment_buicket_isVirtual"));
            MediaBucket mediaBucket4 = this.mMediaBucket;
            y45.g(mediaBucket4);
            mediaBucket4.setVirtualFolderMatchName(arguments.getString("bucket_fragment_buicket_virtual_match_name"));
            MediaBucket mediaBucket5 = this.mMediaBucket;
            y45.g(mediaBucket5);
            mediaBucket5.setParentPath(arguments.getString("bucket_fragment_buicket_path"));
        }
        h27.c().b(this, 1118);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.o = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        h27.c().f(this, 1118);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.removeOnScrollListener(this.mOnScrollListener);
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.medias_select_fragment;
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        y45.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mEmptyPaddingBottom = getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.convert_main_empty_imgView_marginBottom);
        X1(view);
        T1();
        OverScrollDecorHelper.setUpOverScroll(this.H, 0);
        initTitleBar(view);
        loadData(false);
        super.onViewCreatedEnd(view, savedInstanceState);
    }

    @Override
    public void q(int count) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public void scrollToTop() {
        super.scrollToTop();
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.scrollToPosition(0);
        }
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        AudioItemAdapter audioItemAdapter;
        if (isVisibleToUser && !this.mIsVisibleToUser && (audioItemAdapter = this.u) != null) {
            audioItemAdapter.notifyDataSetChanged();
        }
        super.setUserVisibleHint(isVisibleToUser);
    }

    @Override
    public void t(boolean isVideo) {
        ArrayList arrayList = this.q;
        y45.h(arrayList, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem>");
        ArrayList arrayList2 = new ArrayList(SortUtil.u(arrayList));
        this.q.clear();
        this.q.addAll(arrayList2);
        this.u.setNewData(arrayList2);
        this.u.notifyDataSetChanged();
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        g2();
    }

    @Override
    public void y1(BaseQuickAdapter adapter, View view, int position, boolean child) {
        y45.j(adapter, "adapter");
        y45.j(view, "view");
        if (adapter.getData().isEmpty()) {
            return;
        }
        Object obj = adapter.getData().get(position);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.AudioItem");
        AudioItem audioItem = (AudioItem) obj;
        boolean z = child == ((CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox)).isChecked();
        ((AudioItemAdapter) adapter).P(audioItem, z, position);
        h27.c().e(1172, audioItem, Boolean.valueOf(z));
    }
}
