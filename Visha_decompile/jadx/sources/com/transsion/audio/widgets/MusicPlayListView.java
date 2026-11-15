package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayListSheetDialogActivity;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.adapter.AudioSettingLoopAdapter;
import com.transsion.audio.data.AudioSettingItem;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.MusicPlayListView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.adapter.PlayListAdapter;
import com.transsion.playercommon.adapter.RtlViewPageAdapter;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.RtlViewPager;
import com.yanzhenjie.recyclerview.SwipeRecyclerView;
import defpackage.av3;
import defpackage.b39;
import defpackage.bf7;
import defpackage.h27;
import defpackage.ha1;
import defpackage.hb0;
import defpackage.if7;
import defpackage.iz;
import defpackage.k78;
import defpackage.o7a;
import defpackage.p06;
import defpackage.p10;
import defpackage.py5;
import defpackage.q7a;
import defpackage.r44;
import defpackage.r7a;
import defpackage.rf;
import defpackage.t7a;
import defpackage.w6c;
import defpackage.ye7;
import defpackage.ze7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MusicPlayListView extends LinearLayout implements MusicPlayManager.c {
    private static final String TAG = "MusicPlayListView";
    private static final int TOUCH_X_THRESHOLD = 400;
    boolean haveLast;
    boolean isNightType;
    private RecyclerView loopListView;
    ImageView mAdd;
    PlayListModel mAudioViewModel;
    private AppCompatActivity mContext;
    PlayListAdapter<AudioItem> mCurrentAdapter;
    View mCurrentPage;
    SwipeRecyclerView mCurrentRv;
    private RecyclerView.SimpleOnItemTouchListener mCurrentRvSimpleOnItemTouchListener;
    private int mDefaultTitleColor;
    private boolean mIsDragging;
    PlayListAdapter<AudioItem> mLastAdapter;
    ImageView mLastAdd;
    TextView mLastNumTv;
    View mLastPage;
    RecyclerView mLastRv;
    private RecyclerView.SimpleOnItemTouchListener mLastRvSimpleOnItemTouchListener;
    TextView mLastTitleTv;
    private boolean mNestedScrollTemporarilyDisabled;
    TextView mNumTv;
    private final bf7 mOnItemStateChangedListener;
    RtlViewPageAdapter mPageAdapter;
    private ViewPager.OnPageChangeListener mPageChangeListener;
    RtlViewPager mPager;
    PlayAudioListData mPlayListData;
    private k78 mPlayListOperateUtils;
    MusicPlayManager mPlayManager;
    private boolean mPreDragTriggered;
    View mRootView;
    View mSpotA;
    View mSpotB;
    View mSpotContainer;
    TextView mTitleTv;
    private long mTouchDownTime;
    private final ze7 onItemMoveListener;

    public class AnonymousClass6 extends if7 {
        final Context val$context;

        public AnonymousClass6(Context context) {
            this.val$context = context;
        }

        public void lambda$OnNoDoubleItemClickListener$0(Context context) {
            MusicPlayListView.this.mLastAdapter.setNewData(new ArrayList(MusicPlayListView.this.mPlayListData.getLastPlayList()));
            MusicPlayListView.this.mCurrentAdapter.setNewData(new ArrayList(MusicPlayListView.this.mPlayListData.getPlayList()));
            MusicPlayListView.this.mPager.setCurrentItem(1);
            MusicPlayListView.this.updateUI(context, true);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            hb0.markDirect("vd_audio_playqueue_lastplay_cl");
            MusicPlayListView.this.mPlayListData.switchData();
            MusicPlayListView.this.mPlayListData.playIndex();
            MusicPlayListView.this.mPlayListData.setPlayMediaItem(MusicPlayListView.this.mLastAdapter.getItem(i));
            MusicPlayListView musicPlayListView = MusicPlayListView.this;
            musicPlayListView.mPlayManager.P0(musicPlayListView.mPlayListData.playMediaItem(), false);
            Handler handler = new Handler();
            final Context context = this.val$context;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$OnNoDoubleItemClickListener$0(context);
                }
            }, 100L);
        }
    }

    public MusicPlayListView(Context context) {
        this(context, null);
    }

    public void lambda$initView$6(View view) {
        SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
        boolean z = false;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.setNestedScrollingEnabled(false);
        }
        if (this.haveLast && this.mPager.getCurrentItem() == 0) {
            z = true;
        }
        k78 k78Var = this.mPlayListOperateUtils;
        if (k78Var != null) {
            k78Var.p0();
        }
        AppCompatActivity appCompatActivity = this.mContext;
        PlayAudioListData playAudioListData = PlayAudioListData.getInstance();
        this.mPlayListOperateUtils = new k78(appCompatActivity, z ? playAudioListData.getLastPlayList() : playAudioListData.getPlayList(), true);
        this.mPlayListOperateUtils.o0(new ArrayList(), z);
        hb0.markDirect(z ? "vd_audio_playqueue_lastplay_addtoplaylist" : "vd_audio_playqueue_addtoplaylist");
    }

    private void init(Context context) {
        this.mContext = (AppCompatActivity) context;
        this.mPlayManager = MusicPlayManager.S();
        this.mPlayListData = PlayAudioListData.getInstance();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_audio_play_filelist, this);
        this.mRootView = viewInflate;
        observeRepeatChange(viewInflate);
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        this.mPlayListData.setRepeatMode(iD);
        this.mPager = (RtlViewPager) findViewById(R.id.pager);
        this.mSpotA = findViewById(R.id.spot_1);
        this.mSpotContainer = findViewById(R.id.spot);
        this.mSpotB = findViewById(R.id.spot_2);
        initView(getContext());
        setPlaylistRepeatImg(iD);
        setRepeatTv(iD, this.mRootView, false);
    }

    private void initColor() {
        getContext().getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, new TypedValue(), true);
        this.mDefaultTitleColor = this.mContext.getResources().getColor(this.isNightType ? R.color.white : R.color.os_text_primary_color, null);
        setTitleStyle();
    }

    private void initCurrentRv(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_audio_play_list_current, (ViewGroup) null);
        this.mCurrentPage = viewInflate;
        SwipeRecyclerView swipeRecyclerView = (SwipeRecyclerView) viewInflate.findViewById(R.id.list);
        this.mCurrentRv = swipeRecyclerView;
        swipeRecyclerView.setSwipeMenuCreator(new r7a() {
            @Override
            public final void a(o7a o7aVar, o7a o7aVar2, int i) {
                this.a.lambda$initCurrentRv$2(o7aVar, o7aVar2, i);
            }
        });
        this.mCurrentRv.setOnItemMenuClickListener(new ye7() {
            @Override
            public final void a(q7a q7aVar, int i) {
                this.a.lambda$initCurrentRv$3(q7aVar, i);
            }
        });
        View view = this.mCurrentPage;
        int i = R.id.add_all;
        this.mAdd = (ImageView) view.findViewById(i);
        this.mTitleTv = (TextView) this.mCurrentPage.findViewById(R.id.title);
        this.mNumTv = (TextView) this.mCurrentPage.findViewById(R.id.num);
        this.mCurrentRv.setLongPressDragEnabled(true);
        PlayListAdapter<AudioItem> playListAdapter = new PlayListAdapter<>(R.layout.item_play_filelist, context, true);
        this.mCurrentAdapter = playListAdapter;
        playListAdapter.x = true;
        this.mCurrentRv.setHasFixedSize(true);
        this.mCurrentRv.setLayoutManager(new CustomLinearLayoutManager(context));
        this.mCurrentRv.setAdapter(this.mCurrentAdapter);
        this.mCurrentAdapter.bindToRecyclerView(this.mCurrentRv);
        this.mCurrentRv.setOnItemMoveListener(this.onItemMoveListener);
        this.mCurrentRv.setOnItemStateChangedListener(this.mOnItemStateChangedListener);
        this.mCurrentAdapter.setOnTouchListener(new PlayListAdapter.a() {
            @Override
            public final boolean a(RecyclerView.ViewHolder viewHolder) {
                return this.a.lambda$initCurrentRv$4(viewHolder);
            }
        });
        RecyclerView.SimpleOnItemTouchListener simpleOnItemTouchListener = new RecyclerView.SimpleOnItemTouchListener() {
            private float startX;
            private float startY;

            /* JADX WARN: Code duplicated, block: B:77:0x0185  */
            /* JADX WARN: Code duplicated, block: B:79:0x018b  */
            /* JADX WARN: Code duplicated, block: B:82:0x01a6  */
            @Override
            public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
                SwipeRecyclerView swipeRecyclerView2;
                SwipeRecyclerView swipeRecyclerView3;
                View viewFindChildViewUnder;
                RecyclerView.ViewHolder childViewHolder;
                int action = motionEvent.getAction();
                boolean z = true;
                if (action == 0) {
                    this.startX = motionEvent.getX();
                    this.startY = motionEvent.getY();
                    MusicPlayListView.this.mTouchDownTime = System.currentTimeMillis();
                    MusicPlayListView.this.mPreDragTriggered = false;
                    MusicPlayListView musicPlayListView = MusicPlayListView.this;
                    if (musicPlayListView.mCurrentRv != null) {
                        musicPlayListView.mNestedScrollTemporarilyDisabled = true;
                        MusicPlayListView.this.mCurrentRv.setNestedScrollingEnabled(false);
                    }
                    MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(true);
                    if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                        ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(false);
                    }
                } else if (action == 1) {
                    swipeRecyclerView2 = MusicPlayListView.this.mCurrentRv;
                    if (swipeRecyclerView2 != null) {
                        swipeRecyclerView2.setNestedScrollingEnabled(true);
                        MusicPlayListView.this.mNestedScrollTemporarilyDisabled = false;
                    }
                    MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                    if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                        ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(true);
                    }
                } else if (action != 2) {
                    if (action == 3) {
                        swipeRecyclerView2 = MusicPlayListView.this.mCurrentRv;
                        if (swipeRecyclerView2 != null) {
                            swipeRecyclerView2.setNestedScrollingEnabled(true);
                            MusicPlayListView.this.mNestedScrollTemporarilyDisabled = false;
                        }
                        MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                        if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                            ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(true);
                        }
                    }
                } else if (MusicPlayListView.this.mIsDragging) {
                    MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(true);
                    if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                        ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(false);
                    }
                } else {
                    float x = motionEvent.getX() - this.startX;
                    float y = motionEvent.getY() - this.startY;
                    long jCurrentTimeMillis = System.currentTimeMillis() - MusicPlayListView.this.mTouchDownTime;
                    int scaledTouchSlop = ViewConfiguration.get(recyclerView.getContext()).getScaledTouchSlop();
                    if (!MusicPlayListView.this.mIsDragging && !MusicPlayListView.this.mPreDragTriggered && jCurrentTimeMillis >= 380 && jCurrentTimeMillis < ViewConfiguration.getLongPressTimeout() && Math.abs(y) > scaledTouchSlop * 3 && Math.abs(y) > Math.abs(x) && (viewFindChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) != null && (childViewHolder = recyclerView.getChildViewHolder(viewFindChildViewUnder)) != null) {
                        MusicPlayListView musicPlayListView2 = MusicPlayListView.this;
                        if (musicPlayListView2.mCurrentRv != null) {
                            musicPlayListView2.mPreDragTriggered = true;
                            ViewParent parent = MusicPlayListView.this.mCurrentRv.getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                                ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(false);
                            }
                            MusicPlayListView.this.mCurrentRv.startDrag(childViewHolder);
                        }
                    }
                    boolean z2 = jCurrentTimeMillis <= ((long) ViewConfiguration.getLongPressTimeout()) + 150;
                    if (!z2 && MusicPlayListView.this.mNestedScrollTemporarilyDisabled && !MusicPlayListView.this.mIsDragging && !recyclerView.canScrollVertically(-1) && y > 0.0f && (swipeRecyclerView3 = MusicPlayListView.this.mCurrentRv) != null) {
                        swipeRecyclerView3.setNestedScrollingEnabled(true);
                        MusicPlayListView.this.mNestedScrollTemporarilyDisabled = false;
                    }
                    if (Math.abs(x) > Math.abs(y)) {
                        ViewParent parent2 = MusicPlayListView.this.getParent();
                        if (!av3.z() ? x >= 400.0f : x <= -400.0f) {
                            z = false;
                        }
                        parent2.requestDisallowInterceptTouchEvent(z);
                    } else if (!recyclerView.canScrollVertically(-1) && Math.abs(y) > ViewConfiguration.get(recyclerView.getContext()).getScaledTouchSlop() && !z2 && !MusicPlayListView.this.mNestedScrollTemporarilyDisabled) {
                        MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                        if (MusicPlayListView.this.getContext() instanceof AudioPlayerActivity) {
                            ((AudioPlayerActivity) MusicPlayListView.this.getContext()).M1(true);
                        }
                    }
                }
                return false;
            }
        };
        this.mCurrentRvSimpleOnItemTouchListener = simpleOnItemTouchListener;
        this.mCurrentRv.addOnItemTouchListener(simpleOnItemTouchListener);
        RecyclerView recyclerView = (RecyclerView) this.mCurrentPage.findViewById(R.id.loop_recycler_view);
        this.loopListView = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(this.mContext, 3));
        this.mCurrentPage.findViewById(R.id.loop_container).setBackgroundResource(this.isNightType ? R.drawable.audio_loop_select_bg_light : R.drawable.audio_loop_select_bg);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AudioSettingItem(1, com.transsion.widgetslib.R.string.os_single_loop));
        arrayList.add(new AudioSettingItem(2, com.transsion.widgetslib.R.string.os_List_loop));
        arrayList.add(new AudioSettingItem(3, com.transsion.widgetslib.R.string.os_shuffle));
        this.loopListView.setAdapter(new AudioSettingLoopAdapter(arrayList, w6c.d(getContext(), "audio_play_repeat_mode", 1), this.isNightType) {
            @Override
            public void selectItem(int i2, AudioSettingItem audioSettingItem) {
                MusicPlayListView musicPlayListView = MusicPlayListView.this;
                musicPlayListView.triggerRepeatMode(musicPlayListView.mRootView, audioSettingItem.getValue());
            }
        });
        this.mCurrentPage.findViewById(i).setOnClickListener(new ha1(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.lambda$initView$6(view2);
            }
        }));
    }

    public void lambda$initCurrentRv$2(o7a o7aVar, o7a o7aVar2, int i) {
        t7a t7aVarL = new t7a(this.mContext).k(this.mContext.getColor(R.color.playlist_delete_red)).m(R.drawable.ic_delete_swiper).o(this.mContext.getResources().getDimensionPixelSize(R.dimen.swipe_delete_dp)).l(-1);
        if (av3.z()) {
            o7aVar.a(t7aVarL);
        } else {
            o7aVar2.a(t7aVarL);
        }
    }

    public void lambda$initCurrentRv$3(q7a q7aVar, int i) {
        q7aVar.a();
        removeClick(i);
    }

    public boolean lambda$initCurrentRv$4(RecyclerView.ViewHolder viewHolder) {
        SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
        if (swipeRecyclerView != null) {
            ViewParent parent = swipeRecyclerView.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            this.mCurrentRv.startDrag(viewHolder);
        }
        if (getContext() instanceof AudioPlayerActivity) {
            ((AudioPlayerActivity) getContext()).M1(false);
        }
        return false;
    }

    public void lambda$initView$7(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.remove) {
            removeClick(i);
        }
    }

    public void lambda$initView$8(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.remove) {
            this.mLastAdapter.getData().remove(i);
            this.mLastAdapter.notifyItemRemoved(i);
            this.mNumTv.setText(r44.a(this.mLastAdapter.getData().size()));
        }
    }

    public void lambda$initView$9(Integer num) {
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        setRepeatTv(iD, this.mRootView, false);
        setPlaylistRepeatImg(iD);
    }

    public void lambda$new$5(RecyclerView.ViewHolder viewHolder, int i) {
        if (i == 2) {
            if (!this.mIsDragging) {
                this.mIsDragging = true;
                hb0.markDirect("vd_audio_playqueue_subdrag");
            }
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
            if (swipeRecyclerView != null) {
                swipeRecyclerView.setNestedScrollingEnabled(false);
                this.mNestedScrollTemporarilyDisabled = true;
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
            SwipeRecyclerView swipeRecyclerView2 = this.mCurrentRv;
            if (swipeRecyclerView2 != null) {
                swipeRecyclerView2.setNestedScrollingEnabled(true);
                this.mNestedScrollTemporarilyDisabled = false;
            }
            if (this.mIsDragging) {
                this.mIsDragging = false;
            }
        }
    }

    public void lambda$observeRepeatChange$11(View view, Integer num) {
        LogUtils.j(TAG, "repeatMode:" + num);
        setRepeatTv(num.intValue(), view, false);
        setPlaylistRepeatImg(num.intValue());
    }

    public void lambda$onAttachedToWindow$0(Integer num) {
        if (this.mCurrentAdapter != null) {
            setCurrentAdapterData(new ArrayList<>(PlayAudioListData.getInstance().getPlayList()));
            SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
            if (swipeRecyclerView != null) {
                swipeRecyclerView.scrollToPosition(this.mPlayListData.playIndexReal());
            }
        }
    }

    public void lambda$onAttachedToWindow$1(AudioItem audioItem) {
        List listC = rf.h.a().c();
        PlayListAdapter<AudioItem> playListAdapter = this.mCurrentAdapter;
        if (playListAdapter != null) {
            if (listC != null) {
                playListAdapter.q = listC;
            }
            this.mCurrentAdapter.notifyDataSetChanged();
        }
        PlayListAdapter<AudioItem> playListAdapter2 = this.mLastAdapter;
        if (playListAdapter2 != null) {
            if (listC != null) {
                playListAdapter2.q = listC;
            }
            this.mLastAdapter.notifyDataSetChanged();
        }
    }

    public static void lambda$removeClick$10(AudioItem audioItem) {
        MusicPlayManager.S().P0(audioItem, false);
    }

    private void observeRepeatChange(final View view) {
        PlayListModel playListModel = this.mAudioViewModel;
        if (playListModel != null) {
            playListModel.e().observe((LifecycleOwner) view.getContext(), new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$observeRepeatChange$11(view, (Integer) obj);
                }
            });
        }
    }

    private void removeClick(int i) {
        AudioItem audioItem = this.mCurrentAdapter.getData().get(i);
        if (this.mCurrentAdapter.getData().size() == 1) {
            this.mCurrentAdapter.getData().remove(i);
            PlayAudioListData.getInstance().clearPlayList();
            PlayAudioListData.getInstance().setPlayMediaItem((AudioItem) null);
            MusicPlayManager.S().M0(false);
            SearchResultAdapter.t = "";
            AppCompatActivity appCompatActivity = this.mContext;
            if (appCompatActivity instanceof AudioPlayListSheetDialogActivity) {
                ((AudioPlayListSheetDialogActivity) appCompatActivity).animateDismiss();
            } else {
                appCompatActivity.finish();
            }
            h27.c().e(1070, new Object[0]);
        } else {
            PlayAudioListData.getInstance().removeAndReFreshPlayList(audioItem, new PlayAudioListData.RemoveListener() {
                @Override
                public final void onRemoveAndPlayNew(AudioItem audioItem2) {
                    MusicPlayListView.lambda$removeClick$10(audioItem2);
                }
            });
            h27.c().e(1089, new Object[0]);
        }
        this.mNumTv.setText(r44.a(this.mCurrentAdapter.getData().size()));
        hb0.markDirect("vd_audio_playqueue_delete");
    }

    private void setCurrentAdapterData(ArrayList<AudioItem> arrayList) {
        PlayListAdapter<AudioItem> playListAdapter = this.mCurrentAdapter;
        if (playListAdapter != null) {
            playListAdapter.setNewData(arrayList);
            TextView textView = this.mNumTv;
            if (textView != null) {
                textView.setText(r44.a(this.mCurrentAdapter.getData().size()));
            }
        }
    }

    private void setPlaylistRepeatImg(int i) {
        RecyclerView recyclerView = this.loopListView;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            Log.e("PlayListDialog", "loop is null");
            return;
        }
        AudioSettingLoopAdapter audioSettingLoopAdapter = (AudioSettingLoopAdapter) this.loopListView.getAdapter();
        audioSettingLoopAdapter.updateRepeatMode(i);
        audioSettingLoopAdapter.notifyDataSetChanged();
    }

    private void setRepeatTv(int i, View view, boolean z) {
        if (view.getContext() != null && z) {
            p10.b(i);
        }
    }

    private void setTitleStyle() {
        this.mTitleTv.setTextColor(this.mDefaultTitleColor);
        this.mNumTv.setTextColor(this.mDefaultTitleColor);
        this.mAdd.setImageResource(this.isNightType ? R.drawable.ic_playlist_addall_fold : R.drawable.ic_playlist_addall);
        this.mLastTitleTv.setTextColor(this.mDefaultTitleColor);
        this.mLastNumTv.setTextColor(this.mDefaultTitleColor);
        this.mLastAdd.setImageResource(this.isNightType ? R.drawable.ic_playlist_addall_fold : R.drawable.ic_playlist_addall);
    }

    public void triggerRepeatMode(View view, int i) {
        int iD = getContext() != null ? w6c.d(getContext(), "audio_play_repeat_mode", 1) : 1;
        if (i == -1) {
            i = iz.d(iD);
        }
        setPlaylistRepeatImg(i);
        setRepeatTv(i, view, false);
        w6c.t(getContext(), "audio_play_repeat_mode", i);
        MusicPlayManager.S().k1(new iz(i));
        LiveEventBus.b().d("audio_switch_repeat_mode").postValue(Integer.valueOf(i));
        PlayListModel playListModel = this.mAudioViewModel;
        if (playListModel != null) {
            playListModel.r(i);
        } else if (b39.b(getContext())) {
            h27.c().e(1057, new Object[0]);
        }
        if (this.mCurrentAdapter != null) {
            if (i == 3) {
                setCurrentAdapterData(new ArrayList<>(MusicPlayManager.S().V()));
            } else if (iD == 3) {
                setCurrentAdapterData(new ArrayList<>(MusicPlayManager.S().X()));
            }
        }
        py5.f(i);
    }

    public MusicPlayListView adaptFoldState(boolean z) {
        View viewFindViewById = this.mRootView.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        if (z) {
            layoutParams.topMargin = com.transsion.utils.a.d(getContext(), 0.0f);
        } else {
            layoutParams.topMargin = getContext().getResources().getDimensionPixelOffset(R.dimen.playlist_top);
        }
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public MusicPlayListView fixedPagerHeight(int i) {
        RtlViewPager rtlViewPager = this.mPager;
        if (rtlViewPager != null) {
            ViewGroup.LayoutParams layoutParams = rtlViewPager.getLayoutParams();
            layoutParams.height = i;
            this.mPager.setLayoutParams(layoutParams);
        }
        return this;
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
    public void initView(final Context context) {
        initCurrentRv(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_audio_play_list_current, (ViewGroup) null);
        this.mLastPage = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.title);
        this.mLastTitleTv = textView;
        textView.setText(R.string.last_playlist);
        this.mLastNumTv = (TextView) this.mLastPage.findViewById(R.id.num);
        View view = this.mLastPage;
        int i = R.id.add_all;
        this.mLastAdd = (ImageView) view.findViewById(i);
        this.mLastRv = (RecyclerView) this.mLastPage.findViewById(R.id.list);
        this.mLastPage.findViewById(R.id.loop_container).setVisibility(8);
        boolean z = false;
        PlayListAdapter<AudioItem> playListAdapter = new PlayListAdapter<>(R.layout.item_play_filelist, context, false);
        this.mLastAdapter = playListAdapter;
        boolean z2 = true;
        playListAdapter.x = true;
        this.mLastRv.setHasFixedSize(true);
        this.mLastRv.setLayoutManager(new CustomLinearLayoutManager(context));
        this.mLastRv.setAdapter(this.mLastAdapter);
        this.mLastAdapter.bindToRecyclerView(this.mLastRv);
        RecyclerView.SimpleOnItemTouchListener simpleOnItemTouchListener = new RecyclerView.SimpleOnItemTouchListener() {
            @Override
            public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(recyclerView.canScrollVertically(-1));
                } else if (motionEvent.getAction() == 1) {
                    MusicPlayListView.this.getParent().requestDisallowInterceptTouchEvent(false);
                }
                return false;
            }
        };
        this.mLastRvSimpleOnItemTouchListener = simpleOnItemTouchListener;
        this.mLastRv.addOnItemTouchListener(simpleOnItemTouchListener);
        this.mLastPage.findViewById(i).setOnClickListener(new ha1(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.lambda$initView$6(view2);
            }
        }));
        PlayAudioListData playAudioListData = this.mPlayListData;
        if (playAudioListData != null) {
            if (playAudioListData.selectedPlayMediaItem().haveLastPlayList() && showLast()) {
                z = true;
            }
            this.haveLast = z;
            this.mCurrentAdapter.setOnItemClickListener(new if7(1200, z2) {
                @Override
                public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                    String str;
                    AudioItem item = MusicPlayListView.this.mCurrentAdapter.getItem(i2);
                    AudioItem audioItemPlayMediaItem = MusicPlayListView.this.mPlayListData.playMediaItem();
                    Log.d(MusicPlayListView.TAG, "OnNoDoubleItemClickListener: select = " + item + " , cur = " + audioItemPlayMediaItem);
                    if (item == null || (str = item.data) == null || audioItemPlayMediaItem == null || !str.equals(audioItemPlayMediaItem.data)) {
                        MusicPlayListView musicPlayListView = MusicPlayListView.this;
                        if (musicPlayListView.mPlayListData != null) {
                            musicPlayListView.mPlayManager.P0(item, false);
                            MusicPlayListView.this.mCurrentAdapter.notifyDataSetChanged();
                            p06.f0(null, "vd_audio_playlist_audio_cl", 9324L);
                        }
                    }
                }
            });
            this.mCurrentAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                    this.a.lambda$initView$7(baseQuickAdapter, view2, i2);
                }
            });
            ArrayList arrayList = new ArrayList();
            if (this.haveLast) {
                this.mLastAdapter.setNewData(new ArrayList(this.mPlayListData.selectedPlayMediaItem().getLastPlayList()));
                this.mLastAdapter.setOnItemClickListener(new AnonymousClass6(context));
                this.mLastAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                    @Override
                    public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i2) {
                        this.a.lambda$initView$8(baseQuickAdapter, view2, i2);
                    }
                });
                arrayList.add(this.mLastPage);
                arrayList.add(this.mCurrentPage);
            } else {
                arrayList.add(this.mCurrentPage);
            }
            this.mPageAdapter = new RtlViewPageAdapter(arrayList);
            this.mPager.setOffscreenPageLimit(arrayList.size());
            this.mPager.setAdapter(this.mPageAdapter);
            ViewPager.OnPageChangeListener onPageChangeListener = new ViewPager.OnPageChangeListener() {
                @Override
                public void onPageScrollStateChanged(int i2) {
                }

                @Override
                public void onPageScrolled(int i2, float f, int i3) {
                }

                @Override
                public void onPageSelected(int i2) {
                    MusicPlayListView musicPlayListView = MusicPlayListView.this;
                    boolean z3 = musicPlayListView.haveLast;
                    boolean z4 = true;
                    if ((!z3 || i2 != 1) && (z3 || i2 != 0)) {
                        z4 = false;
                    }
                    musicPlayListView.updateUI(context, z4);
                    if (z4) {
                        return;
                    }
                    MusicPlayListView.this.mLastAdapter.notifyDataSetChanged();
                }
            };
            this.mPageChangeListener = onPageChangeListener;
            this.mPager.addOnPageChangeListener(onPageChangeListener);
            OverScrollDecorHelper.setUpOverScroll(this.mPager);
            this.mPager.setCurrentItem(this.haveLast ? 1 : 0);
            updateUI(context, true);
            LiveEventBus.b().d("audio_switch_repeat_mode").observe(this.mContext, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$initView$9((Integer) obj);
                }
            });
        }
    }

    @Override
    @SuppressLint({"DefaultLocale"})
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LiveEventBus.b().d("audio_play_list_change").observe(this.mContext, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$onAttachedToWindow$0((Integer) obj);
            }
        });
        LiveEventBus.b().d("change_audio_cover").observe(this.mContext, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$onAttachedToWindow$1((AudioItem) obj);
            }
        });
        this.mPlayManager.e1(this);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PlayListModel playListModel = this.mAudioViewModel;
        if (playListModel != null) {
            playListModel.e().removeObservers((LifecycleOwner) getContext());
        }
        this.mPlayManager.E1(this);
        LiveEventBus.b().d("audio_play_list_change").c();
        LiveEventBus.b().d("audio_switch_repeat_mode").c();
        LiveEventBus.b().d("change_audio_cover").c();
        RtlViewPager rtlViewPager = this.mPager;
        if (rtlViewPager != null) {
            rtlViewPager.removeOnPageChangeListener(this.mPageChangeListener);
        }
        SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.removeOnItemTouchListener(this.mCurrentRvSimpleOnItemTouchListener);
        }
        RecyclerView recyclerView = this.mLastRv;
        if (recyclerView != null) {
            recyclerView.removeOnItemTouchListener(this.mLastRvSimpleOnItemTouchListener);
        }
        k78 k78Var = this.mPlayListOperateUtils;
        if (k78Var != null) {
            k78Var.p0();
        }
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        setCurrentAdapterData(new ArrayList<>(this.mPlayManager.Y().selectedPlayMediaItem().getPlayList()));
    }

    public void refresh(boolean z, boolean z2) {
        if (z && this.mRootView != null) {
            int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
            setPlaylistRepeatImg(iD);
            setRepeatTv(iD, this.mRootView, false);
            View view = this.mCurrentPage;
            if (view != null) {
                view.findViewById(R.id.loop_container).setBackgroundResource(this.isNightType ? R.drawable.audio_loop_select_bg_light : R.drawable.audio_loop_select_bg);
            }
        }
        if (z2) {
            PlayListAdapter<AudioItem> playListAdapter = this.mCurrentAdapter;
            if (playListAdapter != null) {
                playListAdapter.B(getContext(), this.isNightType);
            }
            PlayListAdapter<AudioItem> playListAdapter2 = this.mLastAdapter;
            if (playListAdapter2 != null) {
                playListAdapter2.B(getContext(), this.isNightType);
            }
            RecyclerView recyclerView = this.loopListView;
            if (recyclerView == null || recyclerView.getAdapter() == null) {
                return;
            }
            ((AudioSettingLoopAdapter) this.loopListView.getAdapter()).notifyByNightType(this.isNightType);
        }
    }

    public void scrollToPlayIndex() {
        SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.scrollToPosition(this.mPlayListData.playIndex());
        }
    }

    public MusicPlayListView setBottomMargin(int i) {
        View viewFindViewById = this.mRootView.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.bottomMargin = i;
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public void setForceNight() {
        this.mCurrentAdapter.z = true;
    }

    public void setListColorFit(boolean z) {
        PlayListAdapter<AudioItem> playListAdapter = this.mCurrentAdapter;
        if (playListAdapter != null) {
            playListAdapter.y = z;
        }
    }

    public MusicPlayListView setNightType(boolean z) {
        this.isNightType = z;
        initColor();
        refresh(true, true);
        Log.i(TAG, "setNightType: " + z);
        return this;
    }

    public MusicPlayListView setTopMargin(int i) {
        View viewFindViewById = this.mRootView.findViewById(R.id.pager);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.topMargin = i;
        viewFindViewById.setLayoutParams(layoutParams);
        return this;
    }

    public boolean showLast() {
        return true;
    }

    @SuppressLint({"ResourceAsColor", "ClickableViewAccessibility", "DefaultLocale"})
    public void updateUI(Context context, boolean z) {
        if (z) {
            this.mNumTv.setText(r44.a(this.mCurrentAdapter.getData().size()));
        } else {
            this.mLastNumTv.setText(r44.a(this.mLastAdapter.getData().size()));
        }
        this.mSpotContainer.setVisibility(this.haveLast ? 0 : 8);
        this.mSpotA.setBackgroundResource(z ? R.drawable.ic_page_dot_unselected : R.drawable.ic_page_dot_selected);
        this.mSpotB.setBackgroundResource(z ? R.drawable.ic_page_dot_selected : R.drawable.ic_page_dot_unselected);
        RecyclerView recyclerView = this.mLastRv;
        if (recyclerView != null) {
            recyclerView.setNestedScrollingEnabled(!z);
        }
        SwipeRecyclerView swipeRecyclerView = this.mCurrentRv;
        if (swipeRecyclerView != null) {
            swipeRecyclerView.setNestedScrollingEnabled(z);
            if (this.mNestedScrollTemporarilyDisabled || this.mIsDragging) {
                this.mCurrentRv.setNestedScrollingEnabled(false);
            }
        }
        if (z) {
            return;
        }
        hb0.markDirect("vd_audio_playqueue_lastplay_show");
    }

    public MusicPlayListView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MusicPlayListView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPlayListData = PlayAudioListData.getInstance();
        this.haveLast = false;
        this.mIsDragging = false;
        this.mTouchDownTime = 0L;
        this.mNestedScrollTemporarilyDisabled = false;
        this.mPreDragTriggered = false;
        this.onItemMoveListener = new ze7() {
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
                    Collections.swap(MusicPlayListView.this.mCurrentAdapter.getData(), adapterPosition, adapterPosition2);
                    Collections.swap(PlayAudioListData.getInstance().getPlayList(), adapterPosition, adapterPosition2);
                    MusicPlayListView.this.mCurrentAdapter.notifyItemMoved(adapterPosition, adapterPosition2);
                    h27.c().e(1089, new Object[0]);
                    hb0.markDirect("vd_audio_playqueue_subdrag");
                    return true;
                } catch (Exception e) {
                    Log.e(MusicPlayListView.TAG, "onItemMove: " + e.getMessage());
                    return false;
                }
            }
        };
        this.mOnItemStateChangedListener = new bf7() {
            @Override
            public final void a(RecyclerView.ViewHolder viewHolder, int i2) {
                this.a.lambda$new$5(viewHolder, i2);
            }
        };
        init(context);
    }

    public void refresh() {
        PlayListAdapter<AudioItem> playListAdapter = this.mCurrentAdapter;
        if (playListAdapter != null) {
            playListAdapter.B(getContext(), this.isNightType);
        }
        PlayListAdapter<AudioItem> playListAdapter2 = this.mLastAdapter;
        if (playListAdapter2 != null) {
            playListAdapter2.B(getContext(), this.isNightType);
        }
    }
}
