package com.transsion.playercommon.activities;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import androidx.p004lifecycle.Observer;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import defpackage.ao;
import defpackage.chc;
import defpackage.dw6;
import defpackage.ed7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oa1;
import defpackage.rc7;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;

public class BaseShowAudioVideoListActivity extends BasePermissionActivity {
    protected static final int HANDLE_WHAT_AUDIO_BUCKET = 2;
    protected static final int HANDLE_WHAT_VIDEO_BUCKET = 1;
    private static final String TAG = "BaseShowAudioVideoListActivity";
    protected PlayListModel mAudioPlayListViewModel;
    private boolean mContentChanged;
    private b mUriFileObserver;
    private a mUriObserve;
    protected VideoPlayListModel mVideoPlayListViewModel;
    protected final ArrayList<VideoPlayList> mVideoPlayListBucket = new ArrayList<>();
    protected final ArrayList<PlayList> mAudioPlayListBucket = new ArrayList<>();
    Uri externalUri = MediaStore.Files.getContentUri("external");
    protected final Handler mUpdateDataHandler = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.V0(message);
        }
    });

    public static class a extends chc {
        public a(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity) {
            super(baseShowAudioVideoListActivity);
        }

        @Override
        public void a(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity, Uri uri, int i) {
            dw6.c.a().h(uri, i);
        }

        @Override
        public void b(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity, boolean z) {
            if (!((BaseActivity) baseShowAudioVideoListActivity).mResumed) {
                baseShowAudioVideoListActivity.mContentChanged = true;
                return;
            }
            baseShowAudioVideoListActivity.mContentChanged = false;
            baseShowAudioVideoListActivity.postDelayLoadData(1);
            baseShowAudioVideoListActivity.postDelayLoadData(2);
        }
    }

    public static class b extends chc {
        public b(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity) {
            super(baseShowAudioVideoListActivity);
        }

        @Override
        public void a(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity, Uri uri, int i) {
            dw6.c.a().h(uri, i);
        }

        @Override
        public void b(BaseShowAudioVideoListActivity baseShowAudioVideoListActivity, boolean z) {
        }
    }

    public static void P0(rc7 rc7Var) {
        rc7Var.onNext(ao.U().Z());
        rc7Var.onComplete();
    }

    public static void R0(Throwable th) {
        Log.w(TAG, "loadPlayListList " + th);
    }

    public static void S0(rc7 rc7Var) {
        rc7Var.onNext(tpb.j0().u(false));
        rc7Var.onComplete();
    }

    public static void U0(Throwable th) {
        Log.w(TAG, "loadPlayListList " + th);
    }

    public boolean V0(Message message) {
        int i = message.what;
        if (i == 1) {
            X0();
        } else if (i == 2) {
            W0();
        }
        return true;
    }

    public final void M0(List list) {
        Log.i(TAG, "mAudioPlayListViewModel-->getAudioPlayListLiveData==" + list.size());
        postDelayLoadData(2);
    }

    public final void N0(List list) {
        Log.i(TAG, "mAudioPlayListViewModel-->getAllPlayListWithOutRecentFavoriteLiveData==" + list.size());
        postDelayLoadData(2);
    }

    public final void O0(List list) {
        postDelayLoadData(1);
    }

    public final void Q0(List list) {
        this.mAudioPlayListBucket.clear();
        this.mAudioPlayListBucket.addAll(list);
        this.mAudioPlayListViewModel.d().setValue(list);
    }

    public final void T0(List list) {
        this.mVideoPlayListBucket.clear();
        this.mVideoPlayListBucket.addAll(list);
        Log.i(TAG, "getIsMediaItemChange-->loadVideoBucketList=" + list.size() + "\n data===" + list);
        this.mVideoPlayListViewModel.h().setValue(list);
    }

    public final void W0() {
        mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                BaseShowAudioVideoListActivity.P0(rc7Var);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q0((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                BaseShowAudioVideoListActivity.R0((Throwable) obj);
            }
        });
    }

    public final void X0() {
        mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                BaseShowAudioVideoListActivity.S0(rc7Var);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.T0((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                BaseShowAudioVideoListActivity.U0((Throwable) obj);
            }
        });
    }

    public void initPlayListViewModel() {
        this.mAudioPlayListViewModel.m().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.M0((List) obj);
            }
        });
        this.mAudioPlayListViewModel.i().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N0((List) obj);
            }
        });
        this.mVideoPlayListViewModel.g().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.O0((List) obj);
            }
        });
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mUriObserve = new a(this);
        this.mUriFileObserver = new b(this);
        this.mAudioPlayListViewModel = (PlayListModel) getViewModel(PlayListModel.class);
        this.mVideoPlayListViewModel = (VideoPlayListModel) getViewModel(VideoPlayListModel.class);
        initPlayListViewModel();
        if (this.mUriObserve != null) {
            getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, this.mUriObserve);
            getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.mUriObserve);
        }
        if (this.mUriFileObserver != null) {
            getContentResolver().registerContentObserver(this.externalUri, true, this.mUriFileObserver);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try {
            a aVar = this.mUriObserve;
            if (aVar != null) {
                aVar.c();
            }
            getContentResolver().unregisterContentObserver(this.mUriObserve);
            this.mUriObserve = null;
        } catch (Exception unused) {
        }
        try {
            b bVar = this.mUriFileObserver;
            if (bVar != null) {
                bVar.c();
            }
            getContentResolver().unregisterContentObserver(this.mUriFileObserver);
            this.mUriFileObserver = null;
        } catch (Exception unused2) {
        }
        this.mUpdateDataHandler.removeCallbacksAndMessages(null);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.mContentChanged) {
            this.mContentChanged = false;
            postDelayLoadData(1);
            postDelayLoadData(2);
        }
    }

    public void postDelayLoadData(int i) {
        this.mUpdateDataHandler.removeMessages(i);
        this.mUpdateDataHandler.sendEmptyMessageDelayed(i, oa1.d() ? 2000L : 100L);
    }
}
