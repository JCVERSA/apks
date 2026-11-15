package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.p004lifecycle.Observer;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.LongClickListener;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.activities.AudioWebViewActivity;
import com.transsion.audio.activities.LyricEditActivity;
import com.transsion.audio.activities.SearchLyricDialogActivity;
import com.transsion.audio.fragments.AudioPlayerFragmentNew;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioPlayerLrcLayout;
import com.transsion.audio.widgets.LrcViewNew;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.LongClickImageView;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.ao;
import defpackage.av3;
import defpackage.c07;
import defpackage.cd;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.nz5;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.ry5;
import defpackage.t74;
import defpackage.ul;
import defpackage.vb;
import defpackage.w6c;
import defpackage.woc;
import defpackage.zdc;
import defpackage.zf1;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public class AudioPlayerLrcLayout extends LinearLayout implements View.OnClickListener, AudioPlayerFragmentNew.m {
    private static final int MAX_UPDATE_INTERVAL_MS = 250;
    private static final String TAG = "AudioPlayerLrcLayout";
    private ImageView mAddLocalLyricIv;
    private int mArtistEtCount;
    private TextView mArtistName;
    private Context mContext;
    private AudioItem mCurrentMediaItem;
    private float mCurrentOffset;
    protected long mDuration;
    private ImageView mEditLyricIv;
    private View mEmptyView;
    private boolean mIsLoadingLyric;
    private boolean mLayoutIsShowing;
    private View mLoadingView;
    private FrameLayout.LayoutParams mLrcOperateOriginLayoutParams;
    private View mLrcOperateView;
    private LrcViewNew mLrcView;
    private boolean mMarkedLyricsStatue;
    private PlayListModel mMusicModel;
    private ImageView mOffsetIv;
    private TextView mOffsetTv;
    private MusicPlayManager mPlayManager;
    private ImageView mPlayPause;
    private final MusicPlayManager.d mPlayerListener;
    protected Runnable mProgressUpdateRunnable;
    private Button mRemoteSearchBtn;
    private CheckBox mSaveTitleArtistCb;
    private LinearLayout mSaveTitleArtistLl;
    private int mTitleEtCount;
    private boolean mToastShowing;
    private TextView mTvTitle;
    private View mView;
    private WindowInfoViewModel mWindowInfoViewModel;
    private boolean shouldShowLrcToast;
    private final Observer<Boolean> showHideLoadingLyricViewObserver;

    public static class GenericTextWatcher implements TextWatcher {
        private Consumer<Editable> afterTextChangedConsumer;

        public GenericTextWatcher(Consumer<Editable> consumer) {
            this.afterTextChangedConsumer = consumer;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            this.afterTextChangedConsumer.accept(editable);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public AudioPlayerLrcLayout(Context context) {
        super(context);
        this.mLayoutIsShowing = false;
        this.mTitleEtCount = 0;
        this.mArtistEtCount = 0;
        this.mMarkedLyricsStatue = false;
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
                super.onFftDataCapture(visualizer, bArr, i);
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                AudioPlayerLrcLayout.this.mCurrentMediaItem = audioItem;
                AudioPlayerLrcLayout.this.updateUI();
            }

            @Override
            public void onPlayListLoadFinished(ArrayList arrayList) {
                super.onPlayListLoadFinished(arrayList);
            }

            @Override
            public void onPlayerStateUpdate(int i) {
                AudioPlayerLrcLayout.this.updatePlayPauseButton(i);
            }

            @Override
            public void onShowError(int i, int i2) {
                super.onShowError(i, i2);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                super.onUpdateAll(musicPlayManager);
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                super.onVideoSizeChanged(i, i2);
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        this.shouldShowLrcToast = false;
        this.showHideLoadingLyricViewObserver = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$new$0((Boolean) obj);
            }
        };
        this.mToastShowing = false;
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$new$18();
            }
        };
        init(context);
    }

    private void adaptWindow() {
        if (this.mWindowInfoViewModel != null) {
            this.mMusicModel.h().observe((AudioPlayerActivity) getContext(), new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$adaptWindow$1((LyricData) obj);
                }
            });
            updatePlayPauseButton(this.mPlayManager.b0());
        }
    }

    @SuppressLint({"CutPasteId", "ClickableViewAccessibility"})
    private void init(Context context) {
        this.mContext = context;
        this.mView = LayoutInflater.from(context).inflate(R.layout.layout_audio_player_lrc, (ViewGroup) this, true);
        this.mLrcView = (LrcViewNew) findViewById(R.id.lyrics_view);
        this.mOffsetIv = (ImageView) findViewById(R.id.iv_offset);
        this.mAddLocalLyricIv = (ImageView) findViewById(R.id.iv_lyric_add_local);
        this.mEditLyricIv = (ImageView) findViewById(R.id.iv_lyric_edit);
        this.mOffsetIv.setOnClickListener(this);
        this.mAddLocalLyricIv.setOnClickListener(this);
        this.mEditLyricIv.setOnClickListener(this);
        this.mTvTitle = (TextView) findViewById(R.id.tv_audio_play_title);
        this.mArtistName = (TextView) findViewById(R.id.tv_audio_artist);
        ImageView imageView = (ImageView) findViewById(R.id.iv_audio_play_pause);
        this.mPlayPause = imageView;
        imageView.setOnClickListener(this);
        this.mPlayManager = MusicPlayManager.S();
        initAudioItem(null);
        this.mWindowInfoViewModel = (WindowInfoViewModel) ((AudioPlayerActivity) getContext()).getViewModel(WindowInfoViewModel.class);
        this.mMusicModel = (PlayListModel) ((AudioPlayerActivity) getContext()).getViewModel(PlayListModel.class);
        initLrcView();
        initLrcOperate();
        adaptWindow();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initLrcOperate() {
        View viewFindViewById = findViewById(R.id.lyrics_operate_view);
        this.mLrcOperateView = viewFindViewById;
        this.mOffsetTv = (TextView) viewFindViewById.findViewById(R.id.tv_offset);
        this.mLrcOperateView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AudioPlayerLrcLayout.lambda$initLrcOperate$3(view, motionEvent);
            }
        });
        this.mLrcOperateView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$initLrcOperate$4();
            }
        });
        LongClickImageView longClickImageView = (LongClickImageView) this.mLrcOperateView.findViewById(R.id.iv_plus_offset);
        longClickImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initLrcOperate$5(view);
            }
        });
        longClickImageView.setLongClickListener(new LongClickListener() {
            @Override
            public void cancelLongClickCallback() {
            }

            @Override
            public void longClickCallback() {
                AudioPlayerLrcLayout.this.updateLrcOffset(true);
            }
        });
        LongClickImageView longClickImageView2 = (LongClickImageView) this.mLrcOperateView.findViewById(R.id.iv_minus_offset);
        longClickImageView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initLrcOperate$6(view);
            }
        });
        longClickImageView2.setLongClickListener(new LongClickListener() {
            @Override
            public void cancelLongClickCallback() {
            }

            @Override
            public void longClickCallback() {
                AudioPlayerLrcLayout.this.updateLrcOffset(false);
            }
        });
        ((ImageView) this.mLrcOperateView.findViewById(R.id.iv_reset_offset)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initLrcOperate$7(view);
            }
        });
    }

    private void initLrcView() {
        LiveEventBus.b().d("show_hide_loading_lyric_view").observe((BaseActivity) this.mContext, this.showHideLoadingLyricViewObserver);
        this.mLrcView.setCurrentColor(this.mContext.getResources().getColor(R.color.white));
        this.mLrcView.setTimeTextColor(this.mContext.getResources().getColor(R.color.lyric_timeline_color));
        this.mLrcView.setTimelineTextColor(this.mContext.getResources().getColor(R.color.lyric_second_highlight_color));
        this.mLrcView.setNormalColor(this.mContext.getResources().getColor(R.color.lyric_normal_color));
        this.mLrcView.setLabel(this.mContext.getResources().getString(R.string.no_lyrics));
        this.mLrcView.setDraggable(true, new LrcViewNew.OnPlayClickListener() {
            @Override
            public final boolean onPlayClick(LrcViewNew lrcViewNew, long j) {
                return this.a.lambda$initLrcView$2(lrcViewNew, j);
            }
        });
        this.mLrcView.setOnLayoutChangeListener(new LrcViewNew.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange() {
                this.a.setupOffsetIv();
            }
        });
        searchLyrics();
    }

    public void initLyricGuide() {
        if (w6c.c(this.mContext, "need_lyric_guide", true)) {
            w6c.r(this.mContext, "need_lyric_guide", false);
            hb0.markDirect("vd_audio_lyrics_guide_show");
        }
    }

    private boolean isTouchInsideView(MotionEvent motionEvent, View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return motionEvent.getRawX() >= ((float) i) && motionEvent.getRawX() <= ((float) (i + view.getWidth())) && motionEvent.getRawY() >= ((float) i2) && motionEvent.getRawY() <= ((float) (i2 + view.getHeight()));
    }

    public void lambda$adaptWindow$1(LyricData lyricData) {
        setCurrentOffset(lyricData.offset);
    }

    public static boolean lambda$initLrcOperate$3(View view, MotionEvent motionEvent) {
        return true;
    }

    public void lambda$initLrcOperate$4() {
        if (this.mLrcOperateOriginLayoutParams == null && (this.mLrcOperateView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            this.mLrcOperateOriginLayoutParams = new FrameLayout.LayoutParams((FrameLayout.LayoutParams) this.mLrcOperateView.getLayoutParams());
        }
    }

    public void lambda$initLrcOperate$5(View view) {
        updateLrcOffset(true);
    }

    public void lambda$initLrcOperate$6(View view) {
        updateLrcOffset(false);
    }

    public void lambda$initLrcOperate$7(View view) {
        setCurrentOffset(0);
    }

    public boolean lambda$initLrcView$2(LrcViewNew lrcViewNew, long j) {
        if (this.mLrcView.isAllNoTimeLrc()) {
            return false;
        }
        MusicPlayManager.S().m1((int) j);
        if (MusicPlayManager.S().s0()) {
            return true;
        }
        MusicPlayManager.S().B1();
        return true;
    }

    public void lambda$new$0(Boolean bool) {
        if (this.mIsLoadingLyric != bool.booleanValue()) {
            this.mIsLoadingLyric = bool.booleanValue();
            updateLoadingView();
        }
    }

    public Boolean lambda$saveTitleAndArtist$12(String str, String str2, AudioPlayerLrcLayout audioPlayerLrcLayout) throws Exception {
        AudioFile audioFile = AudioFileIO.read(new File(this.mCurrentMediaItem.data));
        boolean zD = ul.d(audioFile, FieldKey.ARTIST, str, this.mCurrentMediaItem.artistName);
        boolean zD2 = ul.d(audioFile, FieldKey.TITLE, str2, this.mCurrentMediaItem.displayName);
        if (!zD && !zD2) {
            return Boolean.FALSE;
        }
        AudioFileIO.write(audioFile);
        return Boolean.TRUE;
    }

    public void lambda$saveTitleAndArtist$13(String str, String str2, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            MediaScannerConnection.scanFile(this.mContext.getApplicationContext(), new String[]{this.mCurrentMediaItem.data}, null, null);
            return;
        }
        Log.e("audio_edit", "Search Lrc,editAudioFile failed error,title:" + str + " artist:" + str2);
    }

    public static void lambda$saveTitleAndArtist$14(Throwable th) throws Exception {
        Log.e("audio_edit", "Search Lrc,editAudioFile failed error:" + th.getMessage());
    }

    public void lambda$setCurrentOffset$8() {
        if (this.mCurrentMediaItem != null) {
            ao aoVarU = ao.U();
            AudioItem audioItem = this.mCurrentMediaItem;
            aoVarU.q0(audioItem.id, audioItem.data, (int) this.mCurrentOffset);
        }
    }

    public void lambda$setupOffsetIv$15() {
        this.mOffsetIv.setVisibility((!this.mLrcView.hasLrc() || this.mLrcView.isAllNoTimeLrc()) ? 8 : 0);
        enableOffset(!this.mLrcView.isAllNoTimeLrc());
        invalidate();
    }

    public void lambda$showSearchRemoteLrcDialog$10(Editable editable) {
        this.mTitleEtCount = editable.length();
        setSearchButtonEnable();
    }

    public void lambda$showSearchRemoteLrcDialog$11(Editable editable) {
        this.mArtistEtCount = editable.length();
        setSearchButtonEnable();
    }

    public void lambda$showWhenNotShowingToast$16() {
        this.mToastShowing = false;
    }

    public void lambda$updateLyricsMenuPosition$9() {
        View view = this.mLrcOperateView;
        if (view == null || this.mOffsetIv == null) {
            return;
        }
        if (this.mLrcOperateOriginLayoutParams == null && (view.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            this.mLrcOperateOriginLayoutParams = new FrameLayout.LayoutParams((FrameLayout.LayoutParams) this.mLrcOperateView.getLayoutParams());
        }
        if (this.mLrcOperateView.getWidth() == 0) {
            this.mLrcOperateView.measure(0, 0);
        }
        int measuredWidth = this.mLrcOperateView.getMeasuredWidth();
        if (measuredWidth <= 0) {
            return;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr);
        this.mOffsetIv.getLocationOnScreen(iArr2);
        int width = ((iArr2[0] - iArr[0]) + (this.mOffsetIv.getWidth() / 2)) - (measuredWidth / 2);
        int width2 = getWidth() - measuredWidth;
        if (width2 < 0) {
            width2 = 0;
        }
        int iMax = Math.max(0, Math.min(width, width2));
        if (this.mLrcOperateView.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = this.mLrcOperateOriginLayoutParams;
            if (layoutParams == null) {
                layoutParams = (FrameLayout.LayoutParams) this.mLrcOperateView.getLayoutParams();
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = 83;
            layoutParams2.leftMargin = iMax;
            layoutParams2.rightMargin = 0;
            this.mLrcOperateView.setLayoutParams(layoutParams2);
        }
    }

    private void restoreLyricsMenuLayout() {
        View view = this.mLrcOperateView;
        if (view == null || this.mLrcOperateOriginLayoutParams == null) {
            return;
        }
        view.setLayoutParams(new FrameLayout.LayoutParams(this.mLrcOperateOriginLayoutParams));
    }

    @SuppressLint({"CheckResult"})
    public void saveTitleAndArtist(final String str, final String str2) {
        if (zdc.l()) {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return;
            }
            AudioItem audioItem = this.mCurrentMediaItem;
            if (audioItem != null && TextUtils.equals(audioItem.displayName, str) && TextUtils.equals(this.mCurrentMediaItem.artistName, str2)) {
                return;
            }
            Log.d(TAG, "saveTitleAndArtist: title:" + str + " artist:" + str2);
            mc7.K(this).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.lambda$saveTitleAndArtist$12(str2, str, (AudioPlayerLrcLayout) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) throws Exception {
                    this.b.lambda$saveTitleAndArtist$13(str, str2, (Boolean) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) throws Exception {
                    AudioPlayerLrcLayout.lambda$saveTitleAndArtist$14((Throwable) obj);
                }
            });
        }
    }

    private void setSearchButtonEnable() {
        Button button = this.mRemoteSearchBtn;
        if (button != null) {
            button.setEnabled(this.mTitleEtCount + this.mArtistEtCount > 0);
        }
        AudioItem audioItem = this.mCurrentMediaItem;
        if (audioItem == null || !ul.c(audioItem) || this.mTitleEtCount + this.mArtistEtCount <= 0) {
            LinearLayout linearLayout = this.mSaveTitleArtistLl;
            if (linearLayout == null || linearLayout.getVisibility() != 0) {
                return;
            }
            this.mSaveTitleArtistLl.setVisibility(8);
            return;
        }
        LinearLayout linearLayout2 = this.mSaveTitleArtistLl;
        if (linearLayout2 == null || linearLayout2.getVisibility() == 0 || this.mSaveTitleArtistCb == null) {
            return;
        }
        this.mSaveTitleArtistLl.setVisibility(0);
        this.mSaveTitleArtistCb.setChecked(zdc.l());
        this.mSaveTitleArtistCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                zdc.p(z);
            }
        });
    }

    public void setupOffsetIv() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setupOffsetIv$15();
            }
        });
    }

    private void showLyricSearchDialog(int i) {
        Intent intent = new Intent(this.mContext, (Class<?>) SearchLyricDialogActivity.class);
        intent.putExtra("audio_item", this.mCurrentMediaItem);
        intent.putExtra("from", i);
        f5.b(intent, 1248, (Activity) this.mContext);
    }

    private void showLyricsMenu(boolean z) {
        if (z) {
            hb0.markDirect("vd_audio_lyrics_time_adjust_cl");
            if (av3.z()) {
                updateLyricsMenuPosition();
            } else {
                restoreLyricsMenuLayout();
            }
        }
        this.mLrcOperateView.setVisibility(z ? 0 : 8);
        this.mLrcView.scrollToCurrentLine();
    }

    public void showWhenNotShowingToast(boolean z) {
        if (z) {
            if (!this.mToastShowing) {
                if (this.mLayoutIsShowing) {
                    ToastUtils.s(R.string.no_paired_online_lyric);
                    this.shouldShowLrcToast = false;
                } else {
                    this.shouldShowLrcToast = true;
                }
            }
            this.mToastShowing = true;
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$showWhenNotShowingToast$16();
                }
            }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
    }

    public void updateLrcOffset(boolean z) {
        int i = (int) this.mCurrentOffset;
        setCurrentOffset(z ? i + 500 : i - 500);
    }

    private void updateLyricsMenuPosition() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateLyricsMenuPosition$9();
            }
        });
    }

    private void updateProgress(long j, long j2, long j3) {
        if (this.mDuration != j2) {
            this.mDuration = j2;
        }
        long j4 = this.mDuration;
        if (j > j4) {
            j = j4;
        }
        if (this.mPlayManager.s0()) {
            this.mLrcView.updateTime(j);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.mLrcOperateView.getVisibility() == 0 && !isTouchInsideView(motionEvent, this.mLrcOperateView)) {
            this.mLrcOperateView.setVisibility(8);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void enableOffset(boolean z) {
        this.mOffsetIv.setEnabled(z);
    }

    public String getMediaItemString(AudioItem audioItem) {
        if (audioItem == null) {
            return "";
        }
        return this.mContext.getResources().getString(R.string.lyrics) + " " + audioItem.displayName;
    }

    public boolean hasLrc() {
        return this.mLrcView.hasLrc();
    }

    public void initAudioItem(AudioItem audioItem) {
        if (audioItem == null) {
            audioItem = this.mPlayManager.P();
        }
        this.mCurrentMediaItem = audioItem;
        if (audioItem != null) {
            updateTitleTop();
            adaptWindow();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onAttachedToWindow() throws Throwable {
        super.onAttachedToWindow();
        lambda$new$18();
        this.mPlayManager.f1(this.mPlayerListener);
        windowOptionsChange((woc) this.mWindowInfoViewModel.a.getValue());
        this.mIsLoadingLyric = false;
    }

    @Override
    public void onAudioLayoutSelected(View view) {
        boolean zEquals = equals(view);
        this.mLayoutIsShowing = zEquals;
        if (zEquals && this.shouldShowLrcToast) {
            ToastUtils.s(R.string.no_paired_online_lyric);
            this.shouldShowLrcToast = false;
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        int i = R.id.tv_local_lyric;
        if (id == i) {
            hb0.markTrackSingle("vd_audio_lyrics_add", "from", 2);
            showLyricSearchDialog(2);
            return;
        }
        if (view.getId() == R.id.tv_remote_lyric) {
            p06.d0("vd_audio_lyrics_google_cl");
            if (!c07.b(com.blankj.utilcode.util.a.e())) {
                ToastUtils.s(R.string.no_network);
                return;
            }
            Intent intent = new Intent(this.mContext, (Class<?>) AudioWebViewActivity.class);
            intent.putExtra(VkConstant.URL, String.format("https://www.google.com/search?q=%s", getMediaItemString(this.mCurrentMediaItem)));
            intent.putExtra("title", this.mContext.getResources().getString(R.string.visha_search_lyric));
            f5.b(intent, 1247, (Activity) this.mContext);
            Context context = this.mContext;
            if (context != null) {
                ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_offset) {
            showLyricsMenu(this.mLrcOperateView.getVisibility() == 8);
            return;
        }
        if (view.getId() == R.id.iv_lyric_add_local) {
            showLyricSearchDialog(1);
            return;
        }
        if (view.getId() == R.id.iv_lyric_edit) {
            hb0.markDirect("vd_audio_lyrics_edit");
            LyricEditActivity.A0(this.mContext);
            return;
        }
        if (view.getId() == i) {
            hb0.markTrackSingle("vd_audio_lyrics_add", "from", 2);
            showLyricSearchDialog(2);
        } else if (view.getId() == R.id.iv_audio_play_pause) {
            Log.d(TAG, "triggerPlayOrPause " + AudioPlayerLayout.shouldShowPauseButton());
            ry5.g("audioplaypage");
            p06.h0(AudioPlayerLayout.shouldShowPauseButton() ? "audio_pause" : "audio_play");
            this.mPlayManager.A1(true, !AudioPlayerLayout.shouldShowPauseButton());
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeProgressUpdate();
        if (getContext() instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) getContext();
            PlayListModel playListModel = this.mMusicModel;
            if (playListModel != null) {
                playListModel.e().removeObservers(baseActivity);
                this.mMusicModel.h().removeObservers(baseActivity);
            }
            baseActivity.removeScreenTypeListener(TAG);
        }
        this.mPlayManager.F1(this.mPlayerListener);
        LiveEventBus.b().d("show_hide_loading_lyric_view").c();
    }

    public void onStart() {
        if (getVisibility() == 0) {
            lambda$new$18();
        }
    }

    public void onStop() {
        removeProgressUpdate();
    }

    public void removeProgressUpdate() {
        ThreadUtils.o().removeCallbacks(this.mProgressUpdateRunnable);
    }

    public void lambda$new$18() throws Throwable {
        long jR;
        try {
            jR = this.mPlayManager.R();
            try {
                long jQ = this.mPlayManager.Q();
                Handler handlerO = ThreadUtils.o();
                handlerO.removeCallbacks(this.mProgressUpdateRunnable);
                handlerO.postDelayed(this.mProgressUpdateRunnable, 250L);
                if (jR > 0) {
                    updateProgress(jQ, jR, 0L);
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                Handler handlerO2 = ThreadUtils.o();
                handlerO2.removeCallbacks(this.mProgressUpdateRunnable);
                handlerO2.postDelayed(this.mProgressUpdateRunnable, 250L);
                if (jR <= 0) {
                    throw th2;
                }
                updateProgress(0L, jR, 0L);
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            jR = 0;
        }
    }

    public void searchLyrics() {
        searchLyrics(LrcSearcher.m());
    }

    public void searchRemoteLyrics(String str, String str2) {
        LrcSearcher lrcSearcher = new LrcSearcher();
        lrcSearcher.u();
        lrcSearcher.E(this.mCurrentMediaItem);
        updateEmptyView(false);
        final boolean zHasLrc = this.mLrcView.hasLrc();
        this.mLrcView.onLrcLoaded(new ArrayList());
        lrcSearcher.x(str, str2, new LrcSearcher.i() {
            @Override
            public void onRemoteSearchBegin() {
            }

            @Override
            public void searchFailed(AudioItem audioItem) {
                if (r0a.b(audioItem.data, AudioPlayerLrcLayout.this.mCurrentMediaItem.data)) {
                    if (zHasLrc) {
                        ToastUtils.s(R.string.no_paired_online_lyric);
                        AudioPlayerLrcLayout.this.shouldShowLrcToast = false;
                    }
                    AudioPlayerLrcLayout.this.searchLyrics(true);
                    return;
                }
                LogUtils.j(AudioPlayerLrcLayout.TAG, "invalid media item: " + audioItem.data, "current media item: " + AudioPlayerLrcLayout.this.mCurrentMediaItem);
            }

            @Override
            public void searchSuccess(List<LrcRow> list, AudioItem audioItem) {
                AudioPlayerLrcLayout.this.mLrcView.onLrcLoaded(list);
                AudioPlayerLrcLayout.this.setupOffsetIv();
                AudioPlayerLrcLayout.this.mIsLoadingLyric = false;
                AudioPlayerLrcLayout.this.updateEmptyView(false);
                AudioPlayerLrcLayout.this.updateLoadingView();
                AudioPlayerLrcLayout.this.mLrcView.updateTime(MusicPlayManager.S().Q(), false);
            }
        });
    }

    public void setCurrentOffset(int i) {
        float f = i;
        if (this.mCurrentOffset != f) {
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$setCurrentOffset$8();
                }
            });
        }
        this.mCurrentOffset = f;
        this.mLrcView.setDelayMs((int) f);
        this.mOffsetTv.setText(String.format("%.1f", Float.valueOf(this.mCurrentOffset / 1000.0f)) + ExifInterface.LATITUDE_SOUTH);
    }

    @Override
    public void setVisibility(int i) throws Throwable {
        if (i != getVisibility()) {
            if (i == 0) {
                lambda$new$18();
            } else {
                removeProgressUpdate();
            }
        }
        super.setVisibility(i);
    }

    public void showSearchRemoteLrcDialog() {
        String strSubstring;
        String str;
        if (!pp3.z) {
            Log.e(TAG, "[Serve LRC] not supported");
            return;
        }
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_lrc_search_remote, null);
        final OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) viewInflate.findViewById(R.id.et_title);
        final OSMaterialEditText oSMaterialEditText2 = (OSMaterialEditText) viewInflate.findViewById(R.id.et_artist);
        this.mSaveTitleArtistLl = (LinearLayout) viewInflate.findViewById(R.id.ll_save_title_artist);
        this.mSaveTitleArtistCb = (CheckBox) viewInflate.findViewById(R.id.cb_save);
        AudioItem audioItem = this.mCurrentMediaItem;
        if (audioItem != null) {
            strSubstring = audioItem.displayName;
            str = audioItem.artistName;
        } else {
            strSubstring = "";
            str = "";
        }
        if (!r0a.g(strSubstring)) {
            int iLastIndexOf = strSubstring.lastIndexOf(Consts.DOT);
            if (iLastIndexOf >= 0) {
                strSubstring = strSubstring.substring(0, iLastIndexOf);
            }
            oSMaterialEditText.getEditText().setText(strSubstring);
            this.mTitleEtCount = strSubstring.length();
        }
        if (!r0a.g(str)) {
            oSMaterialEditText2.getEditText().setText(str);
            this.mArtistEtCount = str.length();
        }
        oSMaterialEditText.getEditText().addTextChangedListener(new GenericTextWatcher(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$showSearchRemoteLrcDialog$10((Editable) obj);
            }
        }));
        oSMaterialEditText2.getEditText().addTextChangedListener(new GenericTextWatcher(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$showSearchRemoteLrcDialog$11((Editable) obj);
            }
        }));
        com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.mContext).E(viewInflate).A(R.string.lyric_search_online).m(R.string.cancel, null).u(R.string.lyric_search_positive, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                hb0.markTrackSingle("vd_audio_lyrics_search_check", "songname", oSMaterialEditText.getEditText().getText().toString());
                if (c07.b(AudioPlayerLrcLayout.this.mContext)) {
                    AudioPlayerLrcLayout.this.mIsLoadingLyric = true;
                    AudioPlayerLrcLayout.this.updateLoadingView();
                    AudioPlayerLrcLayout.this.searchRemoteLyrics(oSMaterialEditText.getEditText().getText().toString(), oSMaterialEditText2.getEditText().getText().toString());
                } else {
                    ToastUtils.s(R.string.no_network);
                }
                AudioPlayerLrcLayout.this.saveTitleAndArtist(oSMaterialEditText.getEditText().getText().toString(), oSMaterialEditText2.getEditText().getText().toString());
            }
        }).a();
        dVarA.show();
        this.mRemoteSearchBtn = dVarA.e(-1);
    }

    public void updateEmptyView(boolean z) {
        View view;
        if (this.mEmptyView == null && (view = this.mView) != null) {
            this.mEmptyView = ((ViewStub) view.findViewById(R.id.lyrics_empty)).inflate();
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            view2.setVisibility(z ? 0 : 8);
            TextView textView = (TextView) this.mEmptyView.findViewById(R.id.tv_local_lyric);
            textView.setVisibility(0);
            textView.setOnClickListener(this);
            TextView textView2 = (TextView) this.mEmptyView.findViewById(R.id.tv_remote_lyric);
            boolean z2 = pp3.z;
            textView2.setVisibility(z2 ? 0 : 8);
            textView2.setOnClickListener(this);
            textView2.setVisibility(z2 ? 0 : 8);
        }
    }

    public void updateLoadingView() {
        View view;
        if (this.mLoadingView == null && (view = this.mView) != null) {
            this.mLoadingView = ((ViewStub) view.findViewById(R.id.lyrics_loading)).inflate();
        }
        View view2 = this.mLoadingView;
        if (view2 != null) {
            view2.setVisibility(this.mIsLoadingLyric ? 0 : 8);
        }
    }

    public void updatePlayPauseButton(int i) {
        if (this.mPlayPause == null) {
            return;
        }
        boolean zS0 = MusicPlayManager.S().s0();
        cd.f(this.mPlayPause, zS0 ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new);
        try {
            this.mPlayPause.setContentDescription(zS0 ? getResources().getString(R.string.talkback_play) : getResources().getString(R.string.talkback_pause));
        } catch (Exception e) {
            Log.e(TAG, "updatePlayPauseButton contentDescription failed", e);
        }
    }

    public void updateTitleTop() {
        AudioItem audioItem = this.mCurrentMediaItem;
        String strQ = audioItem.displayName;
        if (strQ == null) {
            Uri uri = audioItem.uri;
            strQ = uri != null ? av3.q(uri.getPath()) : "";
        }
        this.mTvTitle.setText(strQ);
        this.mArtistName.setText(this.mCurrentMediaItem.artistName);
    }

    public void updateUI() {
        initAudioItem(null);
        initLrcView();
        initLrcOperate();
        requestLayout();
        Log.i(TAG, "updateUI");
    }

    public void windowOptionsChange(woc wocVar) {
        if (wocVar == null) {
            return;
        }
        int i = wocVar.a;
        boolean z = wocVar.g;
        boolean z2 = wocVar.f;
        boolean z3 = wocVar.c;
        Log.d(TAG, "windowState: " + i + " isLandScape: " + z + " isSmallWindow: " + z2 + " isSplitWindow: " + z3 + " isSmallSplitWindow: " + wocVar.d);
        if (i == 0 || i == 1 || z3) {
            this.mLrcView.setPadding(com.transsion.utils.a.d(getContext(), 36.0f), 0, com.transsion.utils.a.d(getContext(), 36.0f), 0);
        } else {
            this.mLrcView.setPadding(com.transsion.utils.a.d(getContext(), 90.0f), 0, com.transsion.utils.a.d(getContext(), 90.0f), 0);
        }
        this.mEmptyView.findViewById(R.id.iv_empty_data).setVisibility(wocVar.d ? 8 : 0);
        this.mEmptyView.findViewById(R.id.text_no_files).setVisibility(wocVar.d ? 8 : 0);
    }

    public void searchLyrics(final boolean z) {
        LogUtils.j(TAG, "searchLyrics needToast = " + z);
        LrcSearcher lrcSearcher = new LrcSearcher();
        lrcSearcher.u();
        lrcSearcher.E(this.mCurrentMediaItem);
        this.mIsLoadingLyric = true;
        updateEmptyView(false);
        this.mLrcView.onLrcLoaded(new ArrayList());
        lrcSearcher.C(new LrcSearcher.i() {
            @Override
            public void onRemoteSearchBegin() {
                AudioPlayerLrcLayout.this.updateLoadingView();
            }

            @Override
            public void searchFailed(AudioItem audioItem) {
                if (r0a.b(audioItem.data, AudioPlayerLrcLayout.this.mCurrentMediaItem.data)) {
                    nz5.c("vd_audio_lyrics_statue", 0);
                    AudioPlayerLrcLayout.this.mLrcView.onLrcLoaded(new ArrayList());
                    AudioPlayerLrcLayout.this.mIsLoadingLyric = false;
                    AudioPlayerLrcLayout.this.updateEmptyView(true);
                    AudioPlayerLrcLayout.this.updateLoadingView();
                    AudioPlayerLrcLayout.this.mOffsetIv.setVisibility(8);
                    AudioPlayerLrcLayout.this.showWhenNotShowingToast(z);
                    return;
                }
                LogUtils.j(AudioPlayerLrcLayout.TAG, "invalid media item: " + audioItem.data, "current media item: " + AudioPlayerLrcLayout.this.mCurrentMediaItem);
            }

            @Override
            public void searchSuccess(List<LrcRow> list, AudioItem audioItem) {
                if (!r0a.b(audioItem.data, AudioPlayerLrcLayout.this.mCurrentMediaItem.data)) {
                    LogUtils.j(AudioPlayerLrcLayout.TAG, "invalid media item: " + audioItem.data, "current media item: " + AudioPlayerLrcLayout.this.mCurrentMediaItem);
                    return;
                }
                if (!AudioPlayerLrcLayout.this.mMarkedLyricsStatue) {
                    AudioPlayerLrcLayout.this.mMarkedLyricsStatue = true;
                    LogUtils.j(AudioPlayerLrcLayout.TAG, "mark vd_audio_lyrics_statue: ");
                    nz5.c("vd_audio_lyrics_statue", 1);
                }
                AudioPlayerLrcLayout.this.mLrcView.onLrcLoaded(list);
                AudioPlayerLrcLayout.this.initLyricGuide();
                AudioPlayerLrcLayout.this.setupOffsetIv();
                AudioPlayerLrcLayout.this.mIsLoadingLyric = false;
                if (AudioPlayerLrcLayout.this.mLrcView.hasLrc()) {
                    AudioPlayerLrcLayout.this.updateEmptyView(false);
                    AudioPlayerLrcLayout.this.updateLoadingView();
                    AudioPlayerLrcLayout.this.mLrcView.updateTime(MusicPlayManager.S().Q(), false);
                } else {
                    AudioPlayerLrcLayout.this.updateEmptyView(true);
                    AudioPlayerLrcLayout.this.updateLoadingView();
                    AudioPlayerLrcLayout.this.showWhenNotShowingToast(z);
                }
            }
        });
    }

    public AudioPlayerLrcLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLayoutIsShowing = false;
        this.mTitleEtCount = 0;
        this.mArtistEtCount = 0;
        this.mMarkedLyricsStatue = false;
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
                super.onFftDataCapture(visualizer, bArr, i);
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                AudioPlayerLrcLayout.this.mCurrentMediaItem = audioItem;
                AudioPlayerLrcLayout.this.updateUI();
            }

            @Override
            public void onPlayListLoadFinished(ArrayList arrayList) {
                super.onPlayListLoadFinished(arrayList);
            }

            @Override
            public void onPlayerStateUpdate(int i) {
                AudioPlayerLrcLayout.this.updatePlayPauseButton(i);
            }

            @Override
            public void onShowError(int i, int i2) {
                super.onShowError(i, i2);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                super.onUpdateAll(musicPlayManager);
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                super.onVideoSizeChanged(i, i2);
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        this.shouldShowLrcToast = false;
        this.showHideLoadingLyricViewObserver = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$new$0((Boolean) obj);
            }
        };
        this.mToastShowing = false;
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$new$18();
            }
        };
        init(context);
    }

    public AudioPlayerLrcLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutIsShowing = false;
        this.mTitleEtCount = 0;
        this.mArtistEtCount = 0;
        this.mMarkedLyricsStatue = false;
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
                super.onFftDataCapture(visualizer, bArr, i2);
            }

            @Override
            public boolean onInfo(int i2, int i3) {
                return super.onInfo(i2, i3);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                AudioPlayerLrcLayout.this.mCurrentMediaItem = audioItem;
                AudioPlayerLrcLayout.this.updateUI();
            }

            @Override
            public void onPlayListLoadFinished(ArrayList arrayList) {
                super.onPlayListLoadFinished(arrayList);
            }

            @Override
            public void onPlayerStateUpdate(int i2) {
                AudioPlayerLrcLayout.this.updatePlayPauseButton(i2);
            }

            @Override
            public void onShowError(int i2, int i3) {
                super.onShowError(i2, i3);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                super.onUpdateAll(musicPlayManager);
            }

            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                super.onVideoSizeChanged(i2, i3);
            }

            @Override
            public void seekTo(int i2) {
                super.seekTo(i2);
            }
        };
        this.shouldShowLrcToast = false;
        this.showHideLoadingLyricViewObserver = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$new$0((Boolean) obj);
            }
        };
        this.mToastShowing = false;
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$new$18();
            }
        };
        init(context);
    }
}
