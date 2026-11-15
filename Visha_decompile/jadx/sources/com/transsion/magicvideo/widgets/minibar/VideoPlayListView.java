package com.transsion.magicvideo.widgets.minibar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayListSheetDialogActivity;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.model.PlayListDataNew;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.minibar.VideoPlayListView;
import com.transsion.playercommon.adapter.PlayListAdapter;
import com.transsion.playercommon.adapter.RtlViewPageAdapter;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.RtlViewPager;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.yanzhenjie.recyclerview.SwipeRecyclerView;
import defpackage.av3;
import defpackage.bf7;
import defpackage.h27;
import defpackage.ha1;
import defpackage.hb0;
import defpackage.hsb;
import defpackage.if7;
import defpackage.j06;
import defpackage.o7a;
import defpackage.p06;
import defpackage.q7a;
import defpackage.r7a;
import defpackage.t7a;
import defpackage.vg9;
import defpackage.w6c;
import defpackage.ye7;
import defpackage.ze7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Function;
import java.util.stream.Collectors;

public class VideoPlayListView extends LinearLayout implements View.OnClickListener, VideoPlayManager.d {
    public int A;
    public VideoPlayListModel B;
    public String C;
    public ViewPager.OnPageChangeListener D;
    public RecyclerView.SimpleOnItemTouchListener E;
    public RecyclerView.SimpleOnItemTouchListener F;
    public boolean G;
    public boolean H;
    public long I;
    public final VideoPlayManager.d J;
    public final ze7 K;
    public final bf7 L;
    public VideoPlayManager b;
    public PlayListData c;
    public boolean d;
    public View e;
    public PlayListAdapter f;
    public PlayListAdapter g;
    public RtlViewPager h;
    public RtlViewPageAdapter i;
    public SwipeRecyclerView j;
    public View k;
    public View l;
    public RecyclerView m;
    public boolean n;
    public View o;
    public View p;
    public View q;
    public TextView r;
    public TextView s;
    public OSIconTextView t;
    public OSIconTextView u;
    public TextView v;
    public TextView w;
    public OSIconTextView x;
    public OSIconTextView y;
    public AppCompatActivity z;

    public class a implements VideoPlayManager.d {
        public a() {
        }

        @Override
        public void onPlayItemChanged(MediaItem mediaItem) {
            PlayListAdapter playListAdapter = VideoPlayListView.this.f;
            if (playListAdapter != null) {
                playListAdapter.notifyDataSetChanged();
            }
        }

        @Override
        public void onPlayListLoadFinished(ArrayList arrayList) {
        }

        @Override
        public void onStartChangedPlayItem(MediaItem mediaItem, boolean z) {
        }
    }

    public class b extends RecyclerView.SimpleOnItemTouchListener {
        public float b;
        public float c;

        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x009d  */
        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            boolean z = true;
            if (action == 0) {
                this.b = motionEvent.getX();
                this.c = motionEvent.getY();
                VideoPlayListView.this.I = System.currentTimeMillis();
                VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(true);
            } else if (action == 1) {
                VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
            } else if (action != 2) {
                if (action == 3) {
                    VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                }
            } else if (VideoPlayListView.this.G) {
                VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(true);
            } else {
                float x = motionEvent.getX() - this.b;
                float y = motionEvent.getY() - this.c;
                boolean z2 = System.currentTimeMillis() - VideoPlayListView.this.I <= ((long) ViewConfiguration.getLongPressTimeout());
                if (Math.abs(x) > Math.abs(y)) {
                    ViewParent parent = VideoPlayListView.this.getParent();
                    if (!av3.z() ? x >= 200.0f : x <= -200.0f) {
                        z = false;
                    }
                    parent.requestDisallowInterceptTouchEvent(z);
                } else if (!recyclerView.canScrollVertically(-1) && Math.abs(y) > ViewConfiguration.get(recyclerView.getContext()).getScaledTouchSlop() && !z2) {
                    VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
            return false;
        }
    }

    public class c implements ze7 {
        public c() {
        }

        @Override
        public void onItemDismiss(RecyclerView.ViewHolder viewHolder) {
        }

        @Override
        public boolean onItemMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            int adapterPosition2 = viewHolder2.getAdapterPosition();
            try {
                Collections.swap(VideoPlayListView.this.f.getData(), adapterPosition, adapterPosition2);
                VideoPlayListView.this.f.notifyItemMoved(adapterPosition, adapterPosition2);
                PlayListData.getInstance().setManualSort(true);
                VideoPlayListView.this.H = true;
                return true;
            } catch (Exception e) {
                Log.e("VideoPlayListView", "onItemMove failed,e= " + e.getMessage());
                return false;
            }
        }
    }

    public class d extends RecyclerView.SimpleOnItemTouchListener {
        public d() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(recyclerView.canScrollVertically(-1));
            } else if (motionEvent.getAction() == 1) {
                VideoPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
            }
            return false;
        }
    }

    public class e extends if7 {
        public e(int i, boolean z) {
            super(i, z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            VideoPlayManager videoPlayManager;
            VideoPlayListView videoPlayListView = VideoPlayListView.this;
            if (videoPlayListView.c == null) {
                return;
            }
            MediaItem mediaItem = (MediaItem) videoPlayListView.f.getItem(i);
            Log.d("VideoPlayListView", "OnNoDoubleItemClickListener: select = " + mediaItem + " , cur = " + VideoPlayListView.this.c.playMediaItem());
            if (mediaItem == null || mediaItem.data == null || VideoPlayListView.this.c.playMediaItem() == null || !mediaItem.data.equals(VideoPlayListView.this.c.playMediaItem().data)) {
                VideoPlayListView videoPlayListView2 = VideoPlayListView.this;
                if (videoPlayListView2.c == null || (videoPlayManager = videoPlayListView2.b) == null) {
                    return;
                }
                videoPlayManager.W1(true);
                VideoPlayListView.this.b.z1(false);
                VideoPlayListView.this.b.v1(i, true, true);
                VideoPlayListView.this.c.setPlayMediaItem(i);
                j06.b(VideoPlayListView.this.C);
            }
        }
    }

    public class f extends if7 {
        public final Context b;

        public f(Context context) {
            this.b = context;
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            PlayListData.getInstance().switchList();
            VideoPlayListView.this.c.setPlayMediaItem(i);
            VideoPlayListView.this.b.z1(false);
            VideoPlayListView.this.b.v1(i, true, true);
            Handler handler = new Handler();
            final Context context = this.b;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$OnNoDoubleItemClickListener$0(context);
                }
            }, 100L);
        }

        public final void lambda$OnNoDoubleItemClickListener$0(Context context) {
            ArrayList arrayList = new ArrayList(new ArrayList(VideoPlayListView.this.c.getLastPlayList()));
            VideoPlayListView.this.g.setNewData(arrayList);
            VideoPlayListView.this.t(true, arrayList);
            VideoPlayListView.this.f.setNewData(new ArrayList(VideoPlayListView.this.c.getPlayList()));
            VideoPlayListView.this.t(false, arrayList);
            VideoPlayListView.this.h.setCurrentItem(1);
            VideoPlayListView.this.updateUI(context, true);
        }
    }

    public class g implements ViewPager.OnPageChangeListener {
        public final Context b;

        public g(Context context) {
            this.b = context;
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            VideoPlayListView videoPlayListView = VideoPlayListView.this;
            boolean z = videoPlayListView.n;
            boolean z2 = true;
            if ((!z || i != 1) && (z || i != 0)) {
                z2 = false;
            }
            videoPlayListView.updateUI(this.b, z2);
            if (z2) {
                return;
            }
            VideoPlayListView.this.g.notifyDataSetChanged();
        }
    }

    public VideoPlayListView(Context context) {
        this(context, null);
    }

    private void setPlaylistRepeatImg(int i) {
        OSIconTextView oSIconTextView = this.t;
        if (oSIconTextView == null) {
            Log.e("PlayListDialog", "ivLoop is null");
            return;
        }
        if (i == 0) {
            oSIconTextView.setText(R.string.os_play);
            return;
        }
        if (i == 1) {
            oSIconTextView.setText(R.string.os_single_loop);
        } else if (i == 2) {
            oSIconTextView.setText(R.string.os_List_loop);
        } else if (i == 4) {
            oSIconTextView.setText(R.string.os_shuffle);
        }
    }

    public static Integer x(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public final void A(q7a q7aVar, int i) {
        q7aVar.a();
        I(i);
    }

    public final boolean B(RecyclerView.ViewHolder viewHolder) {
        SwipeRecyclerView swipeRecyclerView = this.j;
        if (swipeRecyclerView == null) {
            return false;
        }
        ViewParent parent = swipeRecyclerView.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        this.j.startDrag(viewHolder);
        return false;
    }

    public final void C(View view) {
        K();
    }

    public final void E(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.remove) {
            I(i);
        }
    }

    public final void F(RecyclerView.ViewHolder viewHolder, int i) {
        if (i == 2) {
            if (!this.G) {
                this.G = true;
                j06.e(this.C);
            }
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            viewHolder.itemView.setBackgroundColor(Color.parseColor("#1D000000"));
            return;
        }
        if (i == 0) {
            viewHolder.itemView.setBackgroundColor(Color.parseColor("#00ffffff"));
            ViewParent parent2 = getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(false);
            }
            if (this.G) {
                this.G = false;
                if (!this.H || this.f == null) {
                    return;
                }
                this.H = false;
                PlayListData playListData = PlayListData.getInstance();
                playListData.updatePlayListOrder(new ArrayList<>(this.f.getData()));
                ArrayList<MediaItem> playList = playListData.getPlayList();
                if (playList != null) {
                    PlayListDataNew.getInstance().updatePlayList(playList);
                }
            }
        }
    }

    public final void G(Integer num) {
        if (this.f != null) {
            ArrayList arrayList = new ArrayList(PlayListData.getInstance().getPlayList());
            this.f.setNewData(arrayList);
            t(false, arrayList);
            this.s.setText(String.format("（%d）", Integer.valueOf(this.f.getData().size())));
        }
    }

    public final void H(MediaItem mediaItem) {
        this.b.v1(PlayListData.getInstance().queryIndex(mediaItem), true, true);
    }

    public final void I(int i) {
        MediaItem mediaItem = (MediaItem) this.f.getData().get(i);
        if (this.f.getData().size() == 1) {
            this.f.getData().remove(i);
            PlayListData.getInstance().clearCurrentPlayList();
            VideoPlayManager.X().i1(false);
            AppCompatActivity appCompatActivity = this.z;
            if (appCompatActivity instanceof VideoPlayListSheetDialogActivity) {
                ((VideoPlayListSheetDialogActivity) appCompatActivity).animateDismiss();
            } else {
                appCompatActivity.finish();
            }
            h27.c().e(1149, new Object[0]);
        } else {
            PlayListData.getInstance().removeMediaItem(mediaItem, new PlayListData.RemoveListener() {
                @Override
                public final void onRemoveResult(MediaItem mediaItem2) {
                    this.a.H(mediaItem2);
                }
            });
        }
        j06.c(this.C);
    }

    public final void J() {
        this.r.setTextColor(this.A);
        this.s.setTextColor(this.A);
        this.v.setTextColor(this.A);
        this.w.setTextColor(this.A);
        if (this.d) {
            OSIconTextView oSIconTextView = this.t;
            if (oSIconTextView != null) {
                oSIconTextView.setTextColor(this.A);
            }
            OSIconTextView oSIconTextView2 = this.u;
            if (oSIconTextView2 != null) {
                oSIconTextView2.setTextColor(this.A);
            }
        }
    }

    public final void K() {
        int iC = hsb.c();
        setPlaylistRepeatImg(iC);
        w6c.t(this.z, "play_repeat_mode", iC);
        this.c.setRepeat(iC == 1);
        if (hsb.b() == 4) {
            this.c.updateShuffleList();
        }
        hsb.e(iC);
        ArrayList arrayList = new ArrayList(this.c.selectedPlayMediaItem().getPlayList());
        this.f.setNewData(arrayList);
        t(false, arrayList);
        this.b.J1();
        j06.f(iC, this.C);
        p06.H(iC);
    }

    public VideoPlayListView adaptFoldState(boolean z) {
        View viewFindViewById = this.e.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        if (z) {
            layoutParams.topMargin = com.transsion.utils.a.d(getContext(), 0.0f);
        } else {
            layoutParams.topMargin = getContext().getResources().getDimensionPixelOffset(R.dimen.playlist_top);
        }
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public VideoPlayListView fixedPagerHeight(int i) {
        RtlViewPager rtlViewPager = this.h;
        if (rtlViewPager != null) {
            ViewGroup.LayoutParams layoutParams = rtlViewPager.getLayoutParams();
            layoutParams.height = i;
            this.h.setLayoutParams(layoutParams);
        }
        return this;
    }

    public void forceExit() {
        super.forceExit();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void initView(Context context) {
        w(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_video_play_list_current, (ViewGroup) null);
        this.l = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        this.v = textView;
        textView.setText(R.string.last_playlist);
        this.w = (TextView) this.l.findViewById(R.id.num);
        View view = this.l;
        int i = R.id.add_all;
        this.y = (OSIconTextView) view.findViewById(i);
        OSIconTextView oSIconTextView = (OSIconTextView) this.l.findViewById(R.id.iv_repeat_mode);
        this.x = oSIconTextView;
        oSIconTextView.setVisibility(8);
        this.m = (RecyclerView) this.l.findViewById(R.id.list);
        this.g = new PlayListAdapter(R.layout.item_play_filelist, context, false);
        this.m.setHasFixedSize(true);
        this.m.setLayoutManager(new CustomLinearLayoutManager(context));
        this.m.setAdapter(this.g);
        this.g.bindToRecyclerView(this.m);
        d dVar = new d();
        this.F = dVar;
        this.m.addOnItemTouchListener(dVar);
        this.l.findViewById(i).setOnClickListener(new ha1(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.D(view2);
            }
        }));
        if (this.c != null) {
            ArrayList arrayList = new ArrayList(this.c.selectedPlayMediaItem().getPlayList());
            this.f.setNewData(arrayList);
            t(false, arrayList);
            SwipeRecyclerView swipeRecyclerView = this.j;
            if (swipeRecyclerView != null) {
                swipeRecyclerView.scrollToPosition(PlayListData.getInstance().queryIndex(PlayListData.getInstance().playMediaItem()));
            }
            this.n = !PlayListData.getInstance().getLastPlayList().isEmpty() && showLast();
            this.f.setOnItemClickListener(new e(200, true));
            this.f.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                    this.a.E(baseQuickAdapter, view2, i2);
                }
            });
            ArrayList arrayList2 = new ArrayList();
            if (this.n) {
                ArrayList arrayList3 = new ArrayList(PlayListData.getInstance().getLastPlayList());
                this.g.setNewData(arrayList3);
                t(true, arrayList3);
                this.g.setOnItemClickListener(new f(context));
                arrayList2.add(this.l);
                arrayList2.add(this.k);
            } else {
                arrayList2.add(this.k);
                this.h.setScrollEnable(false);
            }
            this.i = new RtlViewPageAdapter(arrayList2);
            this.h.setOffscreenPageLimit(arrayList2.size());
            this.h.setAdapter(this.i);
            g gVar = new g(context);
            this.D = gVar;
            this.h.addOnPageChangeListener(gVar);
            OverScrollDecorHelper.setUpOverScroll(this.h);
            this.h.setCurrentItem(this.n ? 1 : 0);
            updateUI(context, true);
        }
    }

    public void loadMiMediaVideData(MIMediaVideoPlayInfo mIMediaVideoPlayInfo, boolean z) {
        super.loadMiMediaVideData(mIMediaVideoPlayInfo, z);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LiveEventBus.b().d("video_play_list_change").observe(this.z, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.G((Integer) obj);
            }
        });
        this.B = (VideoPlayListModel) new ViewModelProvider(this.z).get(VideoPlayListModel.class);
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.play_list_title) {
            K();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.v2(this);
        LiveEventBus.b().d("video_play_list_change").c();
        RtlViewPager rtlViewPager = this.h;
        if (rtlViewPager != null) {
            rtlViewPager.removeOnPageChangeListener(this.D);
        }
        SwipeRecyclerView swipeRecyclerView = this.j;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.removeOnItemTouchListener(this.E);
        }
        RecyclerView recyclerView = this.m;
        if (recyclerView != null) {
            recyclerView.removeOnItemTouchListener(this.F);
        }
    }

    public boolean onInfo(int i, int i2) {
        return super.onInfo(i, i2);
    }

    public void onLoadingOnlineVideo(boolean z, boolean z2) {
        super.onLoadingOnlineVideo(z, z2);
    }

    public void onMusicPlayerProgressUpdate(int i, int i2) {
        super.onMusicPlayerProgressUpdate(i, i2);
    }

    public void onPlayItemChanged(MediaItem mediaItem) {
        super.onPlayItemChanged(mediaItem);
    }

    public void onPlayListLoadFinished(ArrayList arrayList) {
        super.onPlayListLoadFinished(arrayList);
    }

    public void onPlayerStateUpdate(int i) {
        super.onPlayerStateUpdate(i);
    }

    public void onShowError(int i, int i2) {
        super.onShowError(i, i2);
    }

    public void onStartChangedPlayItem(MediaItem mediaItem, boolean z) {
        super.onStartChangedPlayItem(mediaItem, z);
    }

    public void onUpdateAll(VideoPlayManager videoPlayManager) {
        super.onUpdateAll(videoPlayManager);
    }

    public void onUpdateNotification(int i) {
        super.onUpdateNotification(i);
    }

    public void onVideoSizeChanged(int i, int i2) {
        super.onVideoSizeChanged(i, i2);
    }

    public void onVolumeChange(int i) {
        super.onVolumeChange(i);
    }

    public void refresh(boolean z, boolean z2) {
        if (z && this.e != null) {
            setPlaylistRepeatImg(w6c.a(this.z));
        }
        if (z2) {
            PlayListAdapter playListAdapter = this.f;
            if (playListAdapter != null) {
                playListAdapter.B(getContext(), this.d);
            }
            PlayListAdapter playListAdapter2 = this.g;
            if (playListAdapter2 != null) {
                playListAdapter2.B(getContext(), this.d);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void D(View view) {
        boolean z = false;
        this.j.setNestedScrollingEnabled(false);
        if (this.n && this.h.getCurrentItem() == 0) {
            z = true;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.addAll(this.g.getData());
        } else {
            arrayList.addAll(this.f.getData());
        }
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, (ArrayList) arrayList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayListView.x((MediaItem) obj);
            }
        }).collect(Collectors.toList()));
        intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, MediaItem.MediaType.VIDEO);
        ArrayList arrayList2 = (ArrayList) this.B.h().getValue();
        if (arrayList2 != null) {
            vg9.g(arrayList2);
        }
        vg9.h(arrayList);
        intent.setClass(this.z, VideoSheetDialogActivity.class);
        this.z.startActivity(intent);
        hb0.markDirect(z ? "vd_audio_playqueue_lastplay_addtoplaylist" : "vd_audio_playqueue_addtoplaylist");
    }

    public void scrollToPlayIndex() {
        SwipeRecyclerView swipeRecyclerView = this.j;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.scrollToPosition(this.c.playIndex());
        }
    }

    public void seekTo(int i) {
        super.seekTo(i);
    }

    public VideoPlayListView setBottomMargin(int i) {
        View viewFindViewById = this.e.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.bottomMargin = i;
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public VideoPlayListView setCallFrom(String str) {
        this.C = str;
        return this;
    }

    public VideoPlayListView setDayNightType(boolean z) {
        this.d = z;
        v();
        refresh(true, true);
        return this;
    }

    public VideoPlayListView setTopMargin(int i) {
        View viewFindViewById = this.e.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.topMargin = i;
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public boolean showLast() {
        return true;
    }

    public final void t(boolean z, ArrayList arrayList) {
        MediaItem mediaItem;
        boolean z2 = arrayList == null || arrayList.isEmpty() || (mediaItem = (MediaItem) arrayList.get(0)) == null || !(mediaItem.isKtFile || MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem));
        Log.i("VideoPlayListView", "checkIsSupportAddToList isLast:" + z + ",showAdd:" + z2);
        if (z) {
            this.y.setVisibility(z2 ? 0 : 8);
        } else {
            this.u.setVisibility(z2 ? 0 : 8);
        }
    }

    public final void u(Context context) {
        this.z = (AppCompatActivity) context;
        this.b = VideoPlayManager.X();
        this.e = LayoutInflater.from(context).inflate(R.layout.dialog_video_play_filelist, this);
        if (context != null) {
            ((AppCompatActivity) context).getLifecycle().addObserver(new LifecycleEventObserver() {
                @Override
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    this.b.y(lifecycleOwner, event);
                }
            });
        }
        this.h = (RtlViewPager) findViewById(R.id.pager);
        this.p = findViewById(R.id.spot_1);
        this.o = findViewById(R.id.spot);
        this.q = findViewById(R.id.spot_2);
        initView(getContext());
        this.b.D1(this.J);
    }

    @SuppressLint({"ResourceAsColor", "ClickableViewAccessibility", "DefaultLocale"})
    public void updateUI(Context context, boolean z) {
        if (z) {
            this.s.setText(String.format("（%d）", Integer.valueOf(this.f.getData().size())));
        } else {
            this.w.setText(String.format("（%d）", Integer.valueOf(this.g.getData().size())));
        }
        this.o.setVisibility(this.n ? 0 : 8);
        this.p.setBackgroundResource(z ? R.drawable.ic_page_dot_unselected : R.drawable.ic_page_dot_selected);
        this.q.setBackgroundResource(z ? R.drawable.ic_page_dot_selected : R.drawable.ic_page_dot_unselected);
        this.m.setNestedScrollingEnabled(!z);
        SwipeRecyclerView swipeRecyclerView = this.j;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.setNestedScrollingEnabled(z);
        }
    }

    public final void v() {
        getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, new TypedValue(), true);
        this.A = this.z.getResources().getColor(this.d ? R.color.white : R.color.os_text_primary_color, null);
        J();
    }

    public void videoPlayOrPause() {
        super.videoPlayOrPause();
    }

    public final void w(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_video_play_list_current, (ViewGroup) null);
        this.k = viewInflate;
        this.j = (SwipeRecyclerView) viewInflate.findViewById(R.id.list);
        View view = this.k;
        int i = R.id.add_all;
        this.u = (OSIconTextView) view.findViewById(i);
        this.r = (TextView) this.k.findViewById(R.id.title);
        this.s = (TextView) this.k.findViewById(R.id.num);
        this.j.setSwipeMenuCreator(new r7a() {
            @Override
            public final void a(o7a o7aVar, o7a o7aVar2, int i2) {
                this.a.z(o7aVar, o7aVar2, i2);
            }
        });
        this.j.setOnItemMenuClickListener(new ye7() {
            @Override
            public final void a(q7a q7aVar, int i2) {
                this.a.A(q7aVar, i2);
            }
        });
        this.j.setLongPressDragEnabled(true);
        this.f = new PlayListAdapter(R.layout.item_play_filelist, context, true);
        this.j.setHasFixedSize(true);
        this.j.setLayoutManager(new CustomLinearLayoutManager(context));
        this.j.setAdapter(this.f);
        this.f.bindToRecyclerView(this.j);
        this.j.setOnItemMoveListener(this.K);
        this.j.setOnItemStateChangedListener(this.L);
        this.f.setOnTouchListener(new PlayListAdapter.a() {
            @Override
            public final boolean a(RecyclerView.ViewHolder viewHolder) {
                return this.a.B(viewHolder);
            }
        });
        b bVar = new b();
        this.E = bVar;
        this.j.addOnItemTouchListener(bVar);
        this.t = (OSIconTextView) this.k.findViewById(R.id.iv_repeat_mode);
        setPlaylistRepeatImg(w6c.a(this.z));
        this.t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.C(view2);
            }
        });
        this.k.findViewById(i).setOnClickListener(new ha1(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.D(view2);
            }
        }));
    }

    public final void y(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.b.v2(this.J);
        }
    }

    public final void z(o7a o7aVar, o7a o7aVar2, int i) {
        t7a t7aVarL = new t7a(this.z).k(this.z.getColor(R.color.playlist_delete_red)).m(R.drawable.ic_delete_swiper).o(this.z.getResources().getDimensionPixelSize(R.dimen.swipe_delete_dp)).l(-1);
        if (av3.z()) {
            o7aVar.a(t7aVarL);
        } else {
            o7aVar2.a(t7aVarL);
        }
    }

    public VideoPlayListView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoPlayListView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = PlayListData.getInstance();
        this.n = false;
        this.C = "unknown";
        this.G = false;
        this.H = false;
        this.J = new a();
        this.K = new c();
        this.L = new bf7() {
            @Override
            public final void a(RecyclerView.ViewHolder viewHolder, int i2) {
                this.a.F(viewHolder, i2);
            }
        };
        u(context);
    }
}
