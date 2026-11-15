package com.transsion.audio.fragments;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.core.content.ContextCompat;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.activities.AudioBucketListActivity;
import com.transsion.audio.activities.AudioRingSheetDialogActivity;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.activities.AudioSpeedSettingActivity;
import com.transsion.audio.activities.TimerDialogSheetActivity;
import com.transsion.audio.fragments.AudioPlayerFragmentNew;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioPlayerLayout;
import com.transsion.audio.widgets.AudioPlayerLrcLayout;
import com.transsion.audio.widgets.EqDialog;
import com.transsion.audio.widgets.HalfOpenAudioPlayerLayout;
import com.transsion.audio.widgets.MusicCurrentPlayListView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.MediaInfoSheetDialogActivity;
import com.transsion.playercommon.activities.MediaOperateMenuDialogActivity;
import com.transsion.playercommon.adapter.CustomViewAdapter2;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.playercommon.widgets.DolbyEqDialog;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.view.indicator.PageIndicatorWrapper;
import defpackage.ao;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.k29;
import defpackage.k78;
import defpackage.lc3;
import defpackage.mc7;
import defpackage.mfb;
import defpackage.nz5;
import defpackage.oa1;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.t53;
import defpackage.t74;
import defpackage.tn;
import defpackage.uob;
import defpackage.uq3;
import defpackage.v34;
import defpackage.vb;
import defpackage.vf;
import defpackage.vg9;
import defpackage.vk1;
import defpackage.woc;
import defpackage.ydc;
import defpackage.z7c;
import defpackage.zf1;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

public class AudioPlayerFragmentNew extends AudioPlayerBaseFragment implements MusicPlayManager.c {
    public ViewStub A;
    public HalfOpenAudioPlayerLayout B;
    public int D;
    public MusicCurrentPlayListView F;
    public AudioPlayerLayout G;
    public AudioPlayerLrcLayout H;
    public PageIndicatorWrapper I;
    public FileOperateUtils J;
    public ObjectAnimator L;
    public ObjectAnimator M;
    public int R;
    public Bitmap T;
    public String U;
    public String V;
    public AudioItem W;
    public ImageView t;
    public ImageView u;
    public View v;
    public boolean x;
    public ViewPager2 y;
    public CustomViewAdapter2 z;
    public boolean w = true;
    public String C = "";
    public List E = new ArrayList();
    public final ArrayList K = new ArrayList();
    public Handler N = new Handler(Looper.getMainLooper());
    public final Observer O = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.I1((List) obj);
        }
    };
    public final Observer P = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.J1((List) obj);
        }
    };
    public final Observer Q = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.M1((PlayAudioData) obj);
        }
    };
    public boolean S = false;
    public ContentObserver X = new d(null);
    public ContentObserver Y = new e(null);
    public boolean Z = false;
    public ViewPager2.OnPageChangeCallback a0 = new f();
    public Runnable b0 = new Runnable() {
        @Override
        public final void run() {
            this.b.N1();
        }
    };
    public ActivityResultLauncher c0 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            this.a.K1((ActivityResult) obj);
        }
    });
    public final Observer d0 = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.L1((woc) obj);
        }
    };
    public final MusicPlayManager.d e0 = new a();

    public class a implements MusicPlayManager.d {
        public a() {
        }

        @Override
        public void onPlayListLoadFinished(ArrayList arrayList) {
            if (AudioPlayerFragmentNew.this.S) {
                AudioItem audioItemP = MusicPlayManager.S().P();
                AudioPlayerFragmentNew.this.Y1(audioItemP);
                AudioPlayerFragmentNew.this.m = audioItemP;
            }
        }
    }

    public class b extends uob {
        public final boolean b;

        public b(boolean z) {
            this.b = z;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            AudioPlayerFragmentNew.this.w = this.b;
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class c implements Animator.AnimatorListener {
        public c() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class d extends ContentObserver {
        public d(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            AudioPlayerFragmentNew.this.n1(z, uri);
        }
    }

    public class e extends ContentObserver {
        public e(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            AudioPlayerFragmentNew.this.n1(z, uri);
        }
    }

    public class f extends ViewPager2.OnPageChangeCallback {
        public f() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            if (i == 0) {
                AudioPlayerFragmentNew.this.N.postDelayed(AudioPlayerFragmentNew.this.b0, 1000L);
                AudioPlayerFragmentNew.this.Z = false;
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            AudioPlayerFragmentNew.this.Z = f != 0.0f;
            Log.d("AudioPlayerFragmentNew", "onPageScrolled: " + i + ", isUserScrolling: " + AudioPlayerFragmentNew.this.Z);
            if (AudioPlayerFragmentNew.this.Z) {
                AudioPlayerFragmentNew.this.N.removeCallbacks(AudioPlayerFragmentNew.this.b0);
                AudioPlayerFragmentNew.this.I.setVisibility(0);
            }
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            if (i == 2) {
                nz5.c("vd_audio_cover_cl_lyrics_show", (AudioPlayerFragmentNew.this.H == null || !AudioPlayerFragmentNew.this.H.hasLrc()) ? 0 : 1);
            } else if (AudioPlayerFragmentNew.this.R == 2 && i == 1) {
                hb0.markDirect("vd_audio_lyrics_cl_exit");
            }
            AudioPlayerFragmentNew.this.R = i;
            Log.d("AudioPlayerFragmentNew", "onPageSelected-: " + i);
            if (i == 0) {
                p06.h0("audio_play_list");
                p06.d0("vd_audio_lyrics_show");
            }
            AudioPlayerFragmentNew.this.I.setActiveMarker(i);
            AudioPlayerFragmentNew.this.A2(i);
            AudioPlayerFragmentNew.this.f1(AudioPlayerFragmentNew.this.m1(i));
        }
    }

    public class g implements AudioPlayerLayout.AudioPlayClickListener {
        public g() {
        }

        public static List d(Context context) {
            return ao.U().Z();
        }

        public static void e(k78 k78Var, List list) {
            ArrayList arrayList = new ArrayList(list);
            k78Var.x0(arrayList);
            k78Var.r0(arrayList);
        }

        @Override
        public void addForFavorites(boolean z) {
            p06.u0(z ? 1 : 0, MusicPlayManager.S().P().isMusicVideo ? "mv" : "audio", "playpage");
        }

        @Override
        public void addToPlayList() {
            final k78 k78Var = new k78(((BaseFragment) AudioPlayerFragmentNew.this).mContext, AudioPlayerFragmentNew.this.m);
            k78Var.s0(MusicPlayManager.S().P());
            k78Var.u0(false);
            k78Var.n0(null, false, true);
            mc7.K(((BaseFragment) AudioPlayerFragmentNew.this).mContext).g(AudioPlayerFragmentNew.this.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return AudioPlayerFragmentNew.g.d((Context) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    AudioPlayerFragmentNew.g.e(k78Var, (List) obj);
                }
            });
        }

        @Override
        public void choiceBackground() {
            AudioPlayerFragmentNew.this.v2();
        }

        public final void f(int i, AudioItem audioItem) {
            AudioAlbum audioAlbumD = ao.U().D(i);
            if (audioAlbumD != null) {
                AudioPlayerFragmentNew.this.q.d(audioItem, audioAlbumD.imgPath);
            }
        }

        @Override
        public void showAudioInfo() {
            AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
            ActivityResultLauncher activityResultLauncher = audioPlayerFragmentNew.c0;
            Context context = ((BaseFragment) audioPlayerFragmentNew).mContext;
            AudioPlayerFragmentNew audioPlayerFragmentNew2 = AudioPlayerFragmentNew.this;
            activityResultLauncher.launch(MediaInfoSheetDialogActivity.o0(context, audioPlayerFragmentNew2.S ? audioPlayerFragmentNew2.m : MusicPlayManager.S().P(), 1));
        }

        @Override
        public void showEq() {
            AudioPlayerFragmentNew.this.w2();
        }

        @Override
        public void showInfo() {
            AudioPlayerFragmentNew.this.q2();
        }

        @Override
        public void showMore(String str) {
            AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
            ActivityResultLauncher activityResultLauncher = audioPlayerFragmentNew.c0;
            if (activityResultLauncher != null) {
                activityResultLauncher.launch(MediaOperateMenuDialogActivity.N0(((BaseFragment) audioPlayerFragmentNew).mContext, MusicPlayManager.S().P(), 1));
            }
            p06.d0("vd_audio_more_pop_show");
        }

        @Override
        public void showTimer() {
            AudioPlayerFragmentNew.this.x2();
            hb0.markDirect("vd_audio_timer_cl");
        }

        @Override
        public void speedSetting() {
            AudioSpeedSettingActivity.j0(((BaseFragment) AudioPlayerFragmentNew.this).mContext);
        }

        @Override
        public void switchMusicMode(boolean z) {
            if (!z || AudioPlayerFragmentNew.this.T == null) {
                AudioPlayerFragmentNew.this.k2();
            } else {
                AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
                audioPlayerFragmentNew.p2(audioPlayerFragmentNew.T);
            }
        }

        @Override
        public void updateDisplayUI(final AudioItem audioItem) {
            AudioItem audioItem2 = AudioPlayerFragmentNew.this.m;
            if (audioItem2 != null && !audioItem2.equals(audioItem) && !AudioPlayerFragmentNew.this.m.md5Str.equals(audioItem.md5Str)) {
                AudioPlayerFragmentNew.this.Y1(audioItem);
            }
            AudioItem audioItem3 = AudioPlayerFragmentNew.this.m;
            if (audioItem3 != null && audioItem3.md5Str.equals(audioItem.md5Str) && !AudioPlayerFragmentNew.this.m.equals(audioItem)) {
                if (r0a.g(AudioPlayerFragmentNew.this.m.data) || r0a.g(audioItem.data) || !AudioPlayerFragmentNew.this.m.data.equals(audioItem.data)) {
                    AudioPlayerFragmentNew.this.Y1(audioItem);
                } else {
                    final int i = AudioPlayerFragmentNew.this.m.id;
                    TaskExecutor.c(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.f(i, audioItem);
                        }
                    });
                }
            }
            AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
            audioPlayerFragmentNew.m = audioItem;
            if (audioPlayerFragmentNew.H != null) {
                AudioPlayerFragmentNew.this.H.updateUI();
            }
        }

        @Override
        public void updatePlayPause(int i) {
            if (AudioPlayerFragmentNew.this.H != null) {
                AudioPlayerFragmentNew.this.H.updatePlayPauseButton(i);
            }
        }
    }

    public class h implements FileOperateUtils.k {
        public final AudioItem a;

        public h(AudioItem audioItem) {
            this.a = audioItem;
        }

        @Override
        public void d() {
        }

        @Override
        public void g(String str, String str2) {
            AudioPlayerFragmentNew.this.b2(this.a, str2);
            hb0.markTrackTwo("vd_vmore_rename_pop_save", "songname", str, "from", "playshow");
        }
    }

    public class i implements FileOperateUtils.k {
        public i() {
        }

        @Override
        public void d() {
            h27.c().e(1072, new Object[0]);
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    public class j implements FileOperateUtils.k {
        public j() {
        }

        @Override
        public void d() {
        }

        @Override
        public void g(String str, String str2) {
            AudioPlayerFragmentNew.this.b2(PlayAudioListData.getInstance().playMediaItem(), str2);
        }
    }

    public class k extends uob {

        public class a extends uob {
            public a() {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Log.d("AudioPlayerFragmentNew", "In mHalfOpenAudioPlayerLayoutAnimator onAnimationEnd");
            }
        }

        public k() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            Log.d("AudioPlayerFragmentNew", "Out mAudioPlayerLayoutAnimator onAnimationEnd");
            AudioPlayerFragmentNew.this.y.setVisibility(8);
            if (AudioPlayerFragmentNew.this.k1() != null) {
                AudioPlayerFragmentNew.this.k1().setVisibility(0);
            }
            if (AudioPlayerFragmentNew.this.k1() != null) {
                AudioPlayerFragmentNew.this.k1().setAlpha(0.0f);
            }
            AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
            audioPlayerFragmentNew.M = ObjectAnimator.ofFloat(audioPlayerFragmentNew.k1(), "alpha", 0.0f, 1.0f).setDuration(200L);
            AudioPlayerFragmentNew.this.M.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
            AudioPlayerFragmentNew.this.M.start();
            AudioPlayerFragmentNew.this.M.addListener(new a());
        }
    }

    public class l extends uob {

        public class a extends uob {
            public a() {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Log.d("AudioPlayerFragmentNew", "In mAudioPlayerLayoutAnimator onAnimationEnd");
            }
        }

        public l() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            Log.d("AudioPlayerFragmentNew", "Out mHalfOpenAudioPlayerLayoutAnimator onAnimationEnd");
            if (AudioPlayerFragmentNew.this.k1() != null) {
                AudioPlayerFragmentNew.this.k1().setVisibility(8);
            }
            AudioPlayerFragmentNew.this.y.setVisibility(0);
            AudioPlayerFragmentNew.this.y.setAlpha(0.0f);
            AudioPlayerFragmentNew audioPlayerFragmentNew = AudioPlayerFragmentNew.this;
            audioPlayerFragmentNew.L = ObjectAnimator.ofFloat(audioPlayerFragmentNew.y, "alpha", 0.0f, 1.0f).setDuration(200L);
            AudioPlayerFragmentNew.this.L.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
            AudioPlayerFragmentNew.this.L.start();
            AudioPlayerFragmentNew.this.L.addListener(new a());
        }
    }

    public interface m {
        void onAudioLayoutSelected(View view);
    }

    public static AudioItem O1(String str, AudioItem audioItem, AudioPlayerFragmentNew audioPlayerFragmentNew) {
        AudioItem audioItemG = ao.U().G(str);
        if (audioItemG == null) {
            return null;
        }
        if (audioItem != null && audioItemG.data.equals(audioItem.data) && audioItemG.id != audioItem.id) {
            ao.U().s0(audioItemG.id, audioItemG.data, "");
        }
        return audioItemG;
    }

    public static void Q1(Throwable th) {
        Log.e("AudioPlayerFragmentNew", "onRenameSuccess exception");
        uq3.b(false);
    }

    private void e1() {
        FileOperateUtils fileOperateUtils = this.J;
        if (fileOperateUtils == null || fileOperateUtils.M() == null || !this.J.M().isShowing()) {
            return;
        }
        this.J.M().dismiss();
    }

    @Keep
    private void initPagers() {
        AudioPlayerLayout audioPlayerLayout = new AudioPlayerLayout(getContext());
        this.G = audioPlayerLayout;
        audioPlayerLayout.updateDisplayUI(this.m);
        this.G.mFromShare = this.S;
        CustomViewAdapter2 customViewAdapter2 = new CustomViewAdapter2(3, new CustomViewAdapter2.a() {
            @Override
            public final View a(int i2) {
                return this.a.w1(i2);
            }
        });
        this.z = customViewAdapter2;
        this.y.setAdapter(customViewAdapter2);
        this.R = 1;
        this.y.setCurrentItem(1, false);
        A2(this.R);
        this.I.addMarkers(3, true);
        this.I.setActiveMarker(1);
        o1();
        this.N.postDelayed(this.b0, 1000L);
        this.y.registerOnPageChangeCallback(this.a0);
    }

    private void l2() {
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.T1();
            }
        });
    }

    public View m1(int i2) {
        if (i2 != 0) {
            return i2 != 2 ? this.G : l1();
        }
        return i1();
    }

    public void p2(final Bitmap bitmap) {
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.U1(bitmap);
            }
        });
    }

    public void q2() {
        FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), MusicPlayManager.S().P(), 21);
        this.J = fileOperateUtils;
        fileOperateUtils.l0(false, null);
    }

    private void r2() {
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(getContext());
        aVar.A(R.string.permission_title);
        aVar.j(R.string.setting_permissions_message);
        aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        aVar.u(R.string.go_setting, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.W1(dialogInterface, i2);
            }
        });
        aVar.F();
    }

    public static void u1(Boolean bool) {
    }

    public static ArrayList x1(Context context) {
        return new ArrayList(ao.U().Z());
    }

    public static void z1(Throwable th) {
        Log.w("AudioPlayerFragmentNew", "loadPlayListList " + th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bitmap A1(AudioItem audioItem, AudioItem audioItem2) {
        try {
            Uri uri = audioItem.uri;
            String uriStringSafely = uri == null ? MediaItem.getUriStringSafely(audioItem.id, audioItem.fromInternal) : uri.toString();
            int iM = com.transsion.utils.a.m(getContext());
            int iL = com.transsion.utils.a.l(getContext());
            if (Math.max(iM, iL) > 720) {
                float fMax = 720 / Math.max(iM, iL);
                iM = Math.max(1, (int) (iM * fMax));
                iL = Math.max(1, (int) (iL * fMax));
            }
            return (Bitmap) Glide.with(getContext()).asBitmap().load2(uriStringSafely).override(iM, iL).signature(new z7c.a(uriStringSafely, audioItem.dateModified)).submit().get();
        } catch (Exception e2) {
            Log.e("AudioPlayerFragmentNew", "Error loading bitmap", e2);
            Log.e("TestLoadCover", "error：" + e2);
            return null;
        }
    }

    public final void A2(int i2) {
        n2(this.H, i2 == 0);
        n2(this.G, i2 == 1);
        n2(this.F, i2 == 2);
    }

    public final void B1(String str, Bitmap bitmap) {
        this.G.changePlayImage(bitmap);
        d1(bitmap, str);
    }

    public final void C1(Throwable th) {
        Log.e("AudioPlayerFragmentNew", "Error in loadBackground", th);
        l2();
        m2();
    }

    public final Pair D1(AudioItem audioItem, AtomicBoolean atomicBoolean, AudioItem audioItem2) {
        Bitmap bitmapA2;
        AudioAlbum audioAlbumD = ao.U().D(audioItem2.id);
        Bitmap bitmapI = (audioAlbumD == null || (bitmapA2 = a2(audioAlbumD.imgPath)) == null) ? vk1.i(getContext(), Uri.parse(audioItem2.data)) : bitmapA2;
        if (bitmapI == null) {
            int iJ = tn.j(audioItem);
            if (getActivity() != null) {
                bitmapI = BitmapFactory.decodeResource(getActivity().getResources(), iJ);
                atomicBoolean.set(true);
            }
        }
        return new Pair(bitmapI, audioAlbumD);
    }

    public final void E1(String str, AtomicBoolean atomicBoolean, AudioItem audioItem, Pair pair) {
        Bitmap bitmap = (Bitmap) pair.first;
        d1(bitmap, str);
        AudioAlbum audioAlbum = (AudioAlbum) pair.second;
        if (audioAlbum == null) {
            this.n = null;
            this.G.changePlayImage(bitmap);
            if (!atomicBoolean.get()) {
                this.G.setCoverTextVisibility(false);
                return;
            } else {
                this.G.setCoverTextVisibility(false);
                this.G.setCoverText(audioItem.displayName);
                return;
            }
        }
        if (!new File(audioAlbum.imgPath).exists()) {
            this.n = null;
            this.G.changePlayImage(bitmap);
            if (!atomicBoolean.get()) {
                this.G.setCoverTextVisibility(false);
                return;
            } else {
                this.G.setCoverTextVisibility(false);
                this.G.setCoverText(audioItem.displayName);
                return;
            }
        }
        AudioAlbum audioAlbum2 = this.n;
        if (audioAlbum2 == null || r0a.g(audioAlbum2.imgPath) || !this.n.imgPath.equalsIgnoreCase(audioAlbum.imgPath)) {
            this.n = audioAlbum;
            this.G.changePlayImage(audioAlbum.imgPath);
            this.G.setCoverTextVisibility(false);
        } else {
            LogUtils.j("AudioPlayerFragmentNew", "loadAudioAlbum same current album: " + audioAlbum);
        }
    }

    public final void F1(Throwable th) {
        Log.v("AudioPlayerFragmentNew", "Error in loadBackground: ", th);
        this.G.setCoverTextVisibility(false);
        l2();
        m2();
    }

    public final void G1(String str, String str2, Bitmap bitmap) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Log.i("AudioPlayerFragmentNew", "loadPlayBackground subscribe:" + bitmap);
        this.G.changePlayImage(str);
        if (lowerCase.endsWith(".gif")) {
            d1(null, str2);
        } else {
            d1(bitmap, str2);
        }
        this.G.setCoverTextVisibility(false);
        vf.f(this.mActivity);
    }

    public final void H1(Throwable th) {
        l2();
        m2();
    }

    public final void I1(List list) {
        X1();
    }

    public final void J1(List list) {
        X1();
    }

    public final void K1(ActivityResult activityResult) {
        Intent data;
        int resultCode = activityResult.getResultCode();
        if (activityResult.getResultCode() != -1) {
            if (resultCode != -2 || (data = activityResult.getData()) == null) {
                return;
            }
            int intExtra = data.getIntExtra("click_flag", 0);
            String stringExtra = data.getStringExtra("result_name");
            if (intExtra == 1) {
                q2();
                return;
            } else if (intExtra == 2) {
                f2(stringExtra, 25);
                return;
            } else {
                if (intExtra != 3) {
                    return;
                }
                f2(stringExtra, 26);
                return;
            }
        }
        Intent data2 = activityResult.getData();
        if (data2 == null) {
        }
        int intExtra2 = data2.getIntExtra("action_flag", 0);
        AudioItem audioItem = (AudioItem) data2.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        if (intExtra2 == 11) {
            MediaOperateMenuDialogActivity.J0(this.mContext);
            return;
        }
        String str = "audio";
        if (intExtra2 == 12) {
            this.J = new FileOperateUtils(getContext(), audioItem, 21);
            this.J.X(new FileOperateItem(com.transsion.audio.R.drawable.ic_rename, com.transsion.audio.R.string.rename, 2), "audio", false);
            return;
        }
        if (intExtra2 == 1003) {
            FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), PlayAudioListData.getInstance().playMediaItem());
            this.J = fileOperateUtils;
            fileOperateUtils.e0(false);
            this.J.f0(new j());
            this.J.X(new FileOperateItem(com.transsion.audio.R.drawable.ic_rename, com.transsion.audio.R.string.rename, 1003), "audio", true);
            if (audioItem != null && audioItem.isMusicVideo) {
                str = "mv";
            }
            hb0.markTrackTwo("vd_vmore_edit_pop", "from", "playshow", hb0.KEY_NAME_FILE_TYPE, str);
            return;
        }
        switch (intExtra2) {
            case 1:
                x2();
                break;
            case 2:
                t2();
                break;
            case 3:
                FileOperateUtils fileOperateUtils2 = new FileOperateUtils(getContext(), PlayAudioListData.getInstance().playMediaItem());
                this.J = fileOperateUtils2;
                fileOperateUtils2.e0(true);
                this.J.f0(new i());
                FileOperateUtils fileOperateUtils3 = this.J;
                fileOperateUtils3.p = "audioplay";
                fileOperateUtils3.Y(false, false);
                break;
            case 4:
                FileOperateUtils fileOperateUtils4 = new FileOperateUtils(getContext(), audioItem, 21);
                this.J = fileOperateUtils4;
                fileOperateUtils4.e0(true);
                this.J.f0(new h(audioItem));
                this.J.b0(data2.getStringExtra(SheetDialogParamsConstant.OUT_PARAM_RENAME_DATA));
                break;
            case 5:
                q2();
                break;
            case 6:
                a1(PlayAudioListData.getInstance().playMediaItem());
                p06.h0("audio_play_ringset");
                break;
            case 7:
                w2();
                break;
            case 8:
                AudioSpeedSettingActivity.j0(this.mContext);
                break;
        }
    }

    public final void L1(woc wocVar) {
        AudioPlayerLrcLayout audioPlayerLrcLayout = this.H;
        if (audioPlayerLrcLayout != null) {
            audioPlayerLrcLayout.windowOptionsChange(wocVar);
        }
        this.G.windowOptionsChange(wocVar);
        int i2 = wocVar.b;
        boolean z = wocVar.g;
        boolean z2 = wocVar.c;
        boolean z3 = wocVar.f;
        Log.d("AudioPlayerFragmentNew", "windowOptionsObserver " + wocVar);
        if (k1() != null) {
            k1().adaptLayout(wocVar);
        }
        boolean z4 = false;
        if (z3 || z2) {
            y2(false, false);
            return;
        }
        int i3 = wocVar.a;
        if (i3 == 0) {
            y2(false, i2 == 1);
            return;
        }
        if (i3 == 1) {
            y2(true, i2 == 0);
            return;
        }
        if (i3 == 2) {
            y2(false, i2 == 3 && z);
        } else {
            if (i3 != 3) {
                return;
            }
            if (i2 == 2 && z) {
                z4 = true;
            }
            y2(z, z4);
        }
    }

    public final void M1(PlayAudioData playAudioData) {
        AudioItem audioItemConvertToPlayAudioItem = PlayAudioData.convertToPlayAudioItem(playAudioData);
        if (audioItemConvertToPlayAudioItem == null) {
            return;
        }
        AudioItem audioItem = this.m;
        if (audioItem != null && !audioItem.equals(audioItemConvertToPlayAudioItem)) {
            Y1(audioItemConvertToPlayAudioItem);
        }
        this.m = audioItemConvertToPlayAudioItem;
        MusicPlayManager.S().u1(this.m);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.m);
        MusicPlayManager.S().Y().setPlayList(arrayList, null);
        MusicPlayManager.S().T0(arrayList);
        AudioPlayerLayout audioPlayerLayout = this.G;
        if (audioPlayerLayout != null) {
            audioPlayerLayout.updateDisplayUI(this.m);
        }
        if (k1() != null) {
            k1().updateUI(this.m);
        }
    }

    public final void N1() {
        PageIndicatorWrapper pageIndicatorWrapper = this.I;
        if (pageIndicatorWrapper != null) {
            pageIndicatorWrapper.setVisibility(8);
        }
    }

    @Override
    public void P() {
        this.q.c().observe(this.mActivity, this.Q);
        this.r.m().observe(this.mActivity, this.O);
        this.r.i().observe(this.mActivity, this.P);
    }

    public final void P1(AudioItem audioItem) {
        this.W = null;
        uq3.b(false);
    }

    public final void R1(Object obj) {
        Y1(this.m);
    }

    public final void S1() {
        Drawable drawable = ContextCompat.getDrawable(this.mActivity, com.transsion.audio.R.drawable.bg_mv_play);
        this.t.setBackground(drawable);
        if (this.D == 0) {
            this.w = true;
        } else {
            u2(drawable, true);
        }
        this.D++;
    }

    public final void T1() {
        Drawable drawable = ContextCompat.getDrawable(this.mActivity, com.transsion.audio.R.drawable.bg_audio_play);
        this.t.setBackground(drawable);
        if (this.D == 0) {
            this.w = true;
        } else {
            u2(drawable, true);
        }
        this.D++;
    }

    public final void U1(Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mActivity.getResources(), bitmap);
        if (this.D == 0) {
            this.t.setBackground(bitmapDrawable);
            this.w = true;
        } else {
            u2(bitmapDrawable, false);
        }
        this.D++;
    }

    public final void W1(DialogInterface dialogInterface, int i2) {
        v34.i();
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + getContext().getPackageName()));
        f5.b(intent, 2002, this.mActivity);
    }

    public final void X1() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        mc7.K(context).g(((BaseActivity) this.mContext).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return AudioPlayerFragmentNew.x1((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.y1((ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioPlayerFragmentNew.z1((Throwable) obj);
            }
        });
    }

    public void Y1(final AudioItem audioItem) {
        Log.i("AudioPlayerFragmentNew", "audioItem:" + audioItem);
        if (audioItem == null) {
            return;
        }
        final String strG2 = g2(audioItem);
        if (!TextUtils.equals(strG2, this.U)) {
            this.U = strG2;
            this.T = null;
            this.V = null;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (audioItem.isMusicVideo) {
            mc7.K(audioItem).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.A1(audioItem, (AudioItem) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.B1(strG2, (Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.C1((Throwable) obj);
                }
            });
        } else {
            mc7.K(audioItem).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.D1(audioItem, atomicBoolean, (AudioItem) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.E1(strG2, atomicBoolean, audioItem, (Pair) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.F1((Throwable) obj);
                }
            });
        }
    }

    public void Z1(final String str) {
        Log.i("AudioPlayerFragmentNew", "loadPlayBackground:" + str);
        if (TextUtils.isEmpty(str)) {
            m2();
            return;
        }
        final String str2 = "custom|" + str;
        if (!TextUtils.equals(str2, this.U)) {
            this.U = str2;
            this.T = null;
            this.V = null;
        }
        mc7.K(str).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.a2((String) obj);
            }
        }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.G1(str, str2, (Bitmap) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.H1((Throwable) obj);
            }
        });
    }

    public final void a1(AudioItem audioItem) {
        if (Settings.System.canWrite(getContext())) {
            s2(getContext(), audioItem);
        } else {
            r2();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap a2(String str) {
        Log.i("AudioPlayerFragmentNew", "loadThumbByGlide:" + str);
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(getContext()).asBitmap().load2(str).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).fitCenter().submit(com.transsion.utils.a.d(getContext(), 200.0f), com.transsion.utils.a.d(getContext(), 200.0f)).get();
        } catch (InterruptedException | ExecutionException e2) {
            Log.i("AudioPlayerFragmentNew", "loadThumb exception:" + e2.getMessage());
            return null;
        }
    }

    public final void b1(ImageView imageView, Drawable drawable, boolean z) {
        imageView.setBackground(drawable);
        ObjectAnimator duration = ObjectAnimator.ofFloat(imageView, "alpha", 0.0f, 1.0f).setDuration(500L);
        duration.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
        duration.start();
        duration.addListener(new b(z));
    }

    public void b2(final AudioItem audioItem, final String str) {
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return AudioPlayerFragmentNew.O1(str, audioItem, (AudioPlayerFragmentNew) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.P1((AudioItem) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioPlayerFragmentNew.Q1((Throwable) obj);
            }
        });
    }

    public final void c1(View view) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f).setDuration(500L);
        duration.setInterpolator(new t53(1.0f, 0.66f, 0.0f, 0.33f));
        duration.addListener(new c());
        duration.start();
    }

    public void c2() {
        if (k1() != null) {
            k1().onVolumeChange();
        }
    }

    public final void d1(Bitmap bitmap, final String str) {
        Bitmap bitmap2;
        if (bitmap == null) {
            l2();
        } else if (!TextUtils.equals(str, this.V) || (bitmap2 = this.T) == null) {
            mc7.K(bitmap).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.r1((Bitmap) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.s1(str, (Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.t1((Throwable) obj);
                }
            });
        } else {
            p2(bitmap2);
            this.q.e.setValue(this.T);
        }
    }

    public void d2() {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.isFinishing() || !this.mActivity.isOnResumed()) {
            return;
        }
        i2();
        mfb.g();
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        try {
            mfb.n();
            f5.b(intent, 2001, (Activity) getContext());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        super.didReceivedNotification(i2, objArr);
        if (i2 != 1174 || objArr.length <= 0) {
            return;
        }
        Object obj = objArr[0];
        if (obj instanceof AudioItem) {
            this.W = (AudioItem) obj;
        }
    }

    public void e2(boolean z) {
        AudioPlayerLrcLayout audioPlayerLrcLayout = this.H;
        if (audioPlayerLrcLayout != null) {
            if (z) {
                audioPlayerLrcLayout.setCurrentOffset(0);
            }
            this.H.searchLyrics();
        }
    }

    public final void f1(View view) {
        g1(this.H, view);
        g1(this.G, view);
        g1(this.F, view);
    }

    public final void f2(String str, int i2) {
        AudioBucketListActivity.B0(getContext(), str, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g1(View view, View view2) {
        if (view instanceof m) {
            ((m) view).onAudioLayoutSelected(view2);
        }
    }

    public final String g2(AudioItem audioItem) {
        if (audioItem == null) {
            return "";
        }
        if (audioItem.isMusicVideo) {
            Uri uri = audioItem.uri;
            return "mv|" + audioItem.id + "|" + (uri == null ? MediaItem.getUriStringSafely(audioItem.id, audioItem.fromInternal) : uri.toString()) + "|" + audioItem.dateModified;
        }
        AudioAlbum audioAlbumD = ao.U().D(audioItem.id);
        if (audioAlbumD != null && !TextUtils.isEmpty(audioAlbumD.imgPath)) {
            return "album|" + audioItem.id + "|" + audioAlbumD.imgPath;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("audio|");
        sb.append(audioItem.id);
        sb.append("|");
        String str = audioItem.data;
        sb.append(str != null ? str : "");
        return sb.toString();
    }

    @Override
    public int getLayoutId() {
        return com.transsion.audio.R.layout.audio_player_fragment_new;
    }

    public final void h1() {
        final AudioItem audioItemConvertToPlayAudioItem = PlayAudioData.convertToPlayAudioItem(this.l);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser && audioItemConvertToPlayAudioItem != null) {
            mc7.K(this).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.v1(audioItemConvertToPlayAudioItem, (AudioPlayerFragmentNew) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    AudioPlayerFragmentNew.u1((Boolean) obj);
                }
            });
        }
    }

    public void h2() {
        AudioPlayerLrcLayout audioPlayerLrcLayout = this.H;
        if (audioPlayerLrcLayout != null) {
            audioPlayerLrcLayout.showSearchRemoteLrcDialog();
        }
    }

    public final AudioPlayerLrcLayout i1() {
        if (this.H == null) {
            AudioPlayerLrcLayout audioPlayerLrcLayout = new AudioPlayerLrcLayout(getContext());
            this.H = audioPlayerLrcLayout;
            audioPlayerLrcLayout.initAudioItem(this.m);
        }
        return this.H;
    }

    public final void i2() {
        AudioAlbumViewModel audioAlbumViewModel = this.q;
        if (audioAlbumViewModel != null) {
            audioAlbumViewModel.f(MusicPlayManager.S().Y().playMediaItem());
        }
    }

    public final int[] j1() {
        int iM = com.transsion.utils.a.m(this.mContext);
        int iL = com.transsion.utils.a.l(this.mContext);
        if (Math.max(iM, iL) > 720) {
            float fMax = 720 / Math.max(iM, iL);
            iM = Math.max(1, (int) (iM * fMax));
            iL = Math.max(1, (int) (iL * fMax));
        }
        return new int[]{iM, iL};
    }

    @Override
    public AudioPlayerFragmentNew setBaseActivity(BaseActivity baseActivity) {
        super.setBaseActivity(baseActivity);
        return this;
    }

    public final HalfOpenAudioPlayerLayout k1() {
        if (!ydc.g()) {
            return null;
        }
        HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.B;
        if (halfOpenAudioPlayerLayout != null) {
            return halfOpenAudioPlayerLayout;
        }
        ViewStub viewStub = this.A;
        if (viewStub == null) {
            return null;
        }
        HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout2 = (HalfOpenAudioPlayerLayout) viewStub.inflate().findViewById(com.transsion.audio.R.id.half_open_audio_player_layout);
        this.B = halfOpenAudioPlayerLayout2;
        halfOpenAudioPlayerLayout2.onCallStartOrStop(!this.isStop);
        return this.B;
    }

    public final void k2() {
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.S1();
            }
        });
    }

    public final MusicCurrentPlayListView l1() {
        if (this.F == null) {
            MusicCurrentPlayListView musicCurrentPlayListView = new MusicCurrentPlayListView(getContext());
            this.F = musicCurrentPlayListView;
            musicCurrentPlayListView.setNightType(true);
            this.F.setListColorFit(true);
            this.F.setForceNight();
            this.F.setTopMargin(com.transsion.utils.a.d(getContext(), 75.0f));
            this.F.setBottomMargin(com.transsion.utils.a.f(getContext()));
        }
        return this.F;
    }

    public final void m2() {
        this.G.changeDefImage(ContextCompat.getDrawable(this.mActivity, com.transsion.audio.R.drawable.def_music_cover));
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
    }

    public final void n1(boolean z, Uri uri) {
        AudioItem audioItem;
        String str;
        AudioItem audioItem2 = this.W;
        if (audioItem2 == null || audioItem2.getUri() == null || uri == null || !this.W.getUri().equals(uri) || (str = (audioItem = this.W).data) == null) {
            return;
        }
        b2(audioItem, str);
    }

    public final void n2(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setImportantForAccessibility(z ? 1 : 4);
    }

    public final void o1() {
        if (this.G == null) {
            return;
        }
        if (k1() != null) {
            k1().updateUI(this.m);
        }
        i2();
        this.G.setAudioPlayClickListener(new g());
        WindowInfoViewModel windowInfoViewModel = this.s;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.observe(this.mActivity, this.d0);
        }
        p06.n0("vd_audio_play_equalizer_status", "equalizer", (lc3.f() == null || !lc3.f().a) ? 0 : 1);
        h1();
    }

    public void o2(boolean z) {
        if (k1() != null) {
            k1().setVolume(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onAttach(Context context) {
        MutableLiveData mutableLiveData;
        super.onAttach(context);
        MusicPlayManager.S().f1(this.e0);
        WindowInfoViewModel windowInfoViewModel = this.s;
        if (windowInfoViewModel == null || (mutableLiveData = windowInfoViewModel.b) == null) {
            return;
        }
        int iIntValue = ((Integer) mutableLiveData.getValue()).intValue();
        if (iIntValue != 0) {
            if (iIntValue != 1) {
                if (iIntValue != 2) {
                    if (iIntValue != 3) {
                        return;
                    }
                }
            }
            this.y.setVisibility(8);
            if (k1() != null) {
                k1().setVisibility(0);
                return;
            }
            return;
        }
        this.y.setVisibility(0);
        if (k1() != null) {
            k1().setVisibility(8);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("AudioPlayerFragmentNew", "onCreate " + bundle);
        this.mContext.getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, this.Y);
        this.mContext.getContentResolver().registerContentObserver(MediaStore.Audio.Media.INTERNAL_CONTENT_URI, true, this.X);
        h27.c().b(this, 1174);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.T = null;
        this.U = null;
        this.V = null;
        Handler handler = this.N;
        if (handler != null) {
            handler.removeCallbacks(this.b0);
        }
        MusicPlayManager.S().E1(this);
        this.q.c().removeObserver(this.Q);
        this.r.i().removeObserver(this.P);
        this.r.m().removeObserver(this.O);
        LiveEventBus.b().d("change_audio_cover").c();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        MusicPlayManager.S().F1(this.e0);
        if (this.Y != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.Y);
            this.Y = null;
        }
        if (this.X != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.X);
            this.X = null;
        }
        h27.c().f(this, 1174);
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        if (audioItem == null || !audioItem.equals(this.m)) {
            Y1(audioItem);
            MusicCurrentPlayListView musicCurrentPlayListView = this.F;
            if (musicCurrentPlayListView != null) {
                musicCurrentPlayListView.refresh();
            }
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AudioItem audioItem = this.m;
        if (audioItem != null) {
            PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
            bundle.putParcelable("video_play_fragment_bean", playAudioDataConvertToPlayAudioData);
            getArguments().putParcelable("video_play_fragment_bean", playAudioDataConvertToPlayAudioData);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        AudioPlayerLayout audioPlayerLayout = this.G;
        if (audioPlayerLayout != null) {
            audioPlayerLayout.onStart();
            String str = this.C;
            if (str != null && !str.equals("audio_list_item_click")) {
                this.G.updatePlayPauseButton(MusicPlayManager.S().b0());
            }
        }
        AudioPlayerLrcLayout audioPlayerLrcLayout = this.H;
        if (audioPlayerLrcLayout != null) {
            audioPlayerLrcLayout.onStart();
        }
        HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.B;
        if (halfOpenAudioPlayerLayout != null) {
            halfOpenAudioPlayerLayout.onCallStartOrStop(true);
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        AudioPlayerLayout audioPlayerLayout = this.G;
        if (audioPlayerLayout != null) {
            audioPlayerLayout.onStop();
        }
        AudioPlayerLrcLayout audioPlayerLrcLayout = this.H;
        if (audioPlayerLrcLayout != null) {
            audioPlayerLrcLayout.onStop();
        }
        HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.B;
        if (halfOpenAudioPlayerLayout != null) {
            halfOpenAudioPlayerLayout.onCallStartOrStop(false);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Log.d("AudioPlayerFragmentNew", "onViewCreated " + this.l);
        this.v = view.findViewById(com.transsion.audio.R.id.rootView);
        this.t = (ImageView) view.findViewById(com.transsion.audio.R.id.bgPrevious);
        this.u = (ImageView) view.findViewById(com.transsion.audio.R.id.bgNext);
        this.y = (ViewPager2) view.findViewById(com.transsion.audio.R.id.audio_player_main_viewpager);
        this.I = (PageIndicatorWrapper) view.findViewById(com.transsion.audio.R.id.page_indicator);
        this.A = (ViewStub) view.findViewById(com.transsion.audio.R.id.half_open_audio_player_layout);
        Y1(this.m);
        initPagers();
        MusicPlayManager.S().e1(this);
        LiveEventBus.b().d("change_audio_cover").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.R1(obj);
            }
        });
    }

    public boolean p1() {
        return k1() != null && k1().getVisibility() == 0;
    }

    public final void q1(boolean z) {
        this.v.setKeepScreenOn(z);
        if (getActivity() == null) {
            return;
        }
        if (z) {
            getActivity().getWindow().addFlags(128);
        } else {
            getActivity().getWindow().clearFlags(128);
        }
    }

    public final Bitmap r1(Bitmap bitmap) {
        int[] iArrJ1 = j1();
        int i2 = iArrJ1[0];
        int i3 = iArrJ1[1];
        Log.d("AudioPlayerFragmentNew", "screenWidth:" + i2 + " screenHeight:" + i3);
        return vk1.a(vk1.n(vk1.b(this.mContext, bitmap, i2, i3, 255)));
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        this.y.unregisterOnPageChangeCallback(this.a0);
    }

    public final void s1(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.U)) {
            this.V = str;
            this.T = bitmap;
            p2(bitmap);
            this.q.e.setValue(bitmap);
        }
    }

    public final void s2(Context context, AudioItem audioItem) {
        Intent intent = new Intent(context, (Class<?>) AudioRingSheetDialogActivity.class);
        intent.putExtra("data", audioItem);
        startActivity(intent);
    }

    public final void t1(Throwable th) {
        l2();
    }

    public final void t2() {
        Intent intent = new Intent();
        intent.putExtra("data", this.m);
        intent.putExtra(SheetDialogParamsConstant.FROM_PAGE, "AudioPlayPage");
        vg9.e(this.K);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        this.mActivity.startActivity(intent);
    }

    public final void u2(Drawable drawable, boolean z) {
        if (this.x && z) {
            Log.e("AudioPlayerFragmentNew", "startAnimAlbumFade defWindow has been set");
            return;
        }
        this.x = z;
        if (this.w) {
            c1(this.t);
            b1(this.u, drawable, false);
        } else {
            c1(this.u);
            b1(this.t, drawable, true);
        }
    }

    public final Boolean v1(AudioItem audioItem, AudioPlayerFragmentNew audioPlayerFragmentNew) {
        MusicPlayManager.S().D0(audioItem, !lc3.d() ? 1 : 0, "vd_audio_playpage_show", this.mScreenType, true);
        return Boolean.TRUE;
    }

    public final void v2() {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.isFinishing() || !this.mActivity.isOnResumed() || oa1.d()) {
            return;
        }
        this.mActivity.getWindow().getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                this.b.d2();
            }
        });
    }

    public final View w1(int i2) {
        if (i2 != 0) {
            return i2 != 2 ? this.G : l1();
        }
        return i1();
    }

    public final void w2() {
        if (pp3.u) {
            DolbyEqDialog.showEqDialog(this.mContext);
        } else {
            EqDialog.showEqDialog(this.mContext);
            p06.d0("vd_audio_equalizer_pop_show");
        }
    }

    public final void x2() {
        startActivity(new Intent(this.mContext, (Class<?>) TimerDialogSheetActivity.class));
    }

    public final void y1(ArrayList arrayList) {
        this.K.clear();
        this.K.addAll(arrayList);
    }

    public final void y2(boolean z, boolean z2) {
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.M;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        if (!z2) {
            this.y.setVisibility(z ? 8 : 0);
            if (k1() != null) {
                k1().setVisibility(z ? 0 : 8);
            }
            if (!z) {
                this.y.setAlpha(1.0f);
            }
            if (z && k1() != null) {
                k1().setAlpha(1.0f);
            }
        } else if (z) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.y, "alpha", 1.0f, 0.0f).setDuration(200L);
            this.L = duration;
            duration.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
            this.L.start();
            this.L.addListener(new k());
        } else {
            ObjectAnimator duration2 = ObjectAnimator.ofFloat(k1(), "alpha", 1.0f, 0.0f).setDuration(200L);
            this.M = duration2;
            duration2.setInterpolator(new t53(0.33f, 0.0f, 0.66f, 1.0f));
            this.M.start();
            this.M.addListener(new l());
        }
        if (z) {
            e1();
        }
        q1(z);
        if (z) {
            h27.c().e(1123, new Object[0]);
        }
    }

    public void z2(int i2, int i3) {
    }
}
