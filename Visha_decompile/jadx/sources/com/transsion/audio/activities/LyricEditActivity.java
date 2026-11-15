package com.transsion.audio.activities;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.R;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.cd;
import defpackage.dy0;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.p06;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.se;
import defpackage.vb;
import defpackage.vha;
import defpackage.wna;
import java.util.Iterator;
import java.util.List;

public class LyricEditActivity extends BaseActivity implements View.OnClickListener {
    public OSSeekbar N;
    public long O;
    public boolean P;
    public MusicPlayManager Q;
    public TextView R;
    public TextView S;
    public TextView T;
    public TextView U;
    public ImageView V;
    public ImageView W;
    public ImageView X;
    public AudioItem Y;
    public EditText Z;
    public LrcSearcher a0;
    public String b0 = "";
    public Runnable c0 = new Runnable() {
        @Override
        public final void run() throws Throwable {
            this.b.lambda$new$0();
        }
    };
    public final OSSeekbar.c d0 = new c();
    public final MusicPlayManager.d e0 = new d();

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            LyricEditActivity lyricEditActivity = LyricEditActivity.this;
            lyricEditActivity.x0(!TextUtils.equals(lyricEditActivity.b0, editable.toString()));
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(List list) {
            StringBuilder sb = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
                sb.append("\n");
            }
            LyricEditActivity.this.b0 = sb.toString();
            LyricEditActivity.this.Z.setText(sb.toString());
            if (TextUtils.isEmpty(sb.toString())) {
                LyricEditActivity lyricEditActivity = LyricEditActivity.this;
                lyricEditActivity.J0(lyricEditActivity.Z);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            if (TextUtils.isEmpty(LyricEditActivity.this.b0)) {
                LyricEditActivity lyricEditActivity = LyricEditActivity.this;
                lyricEditActivity.J0(lyricEditActivity.Z);
                if (TextUtils.equals(LyricEditActivity.this.y0(), "google_search_for_lyrics")) {
                    LyricEditActivity.this.Z.setText(dy0.b());
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements OSSeekbar.c {
        public c() {
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
            long jQ;
            LyricEditActivity lyricEditActivity = LyricEditActivity.this;
            if (lyricEditActivity.P) {
                jQ = lyricEditActivity.O;
                long j = (((long) i) * jQ) / 100;
                if (j <= jQ) {
                    jQ = j;
                }
            } else {
                jQ = MusicPlayManager.S().Q();
            }
            LyricEditActivity.this.R.setText(wna.d(jQ));
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
            LyricEditActivity.this.P = true;
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
            LyricEditActivity lyricEditActivity = LyricEditActivity.this;
            lyricEditActivity.P = false;
            LyricEditActivity.this.Q.m1((int) ((lyricEditActivity.O * ((long) lyricEditActivity.N.getProgress())) / 100));
            if (LyricEditActivity.this.Q.b0() == 6) {
                LyricEditActivity.this.Q.A1(false, true);
            }
            hb0.markTrackSingle("vd_audio_lyrics_edit_play", "action", 2);
        }
    }

    public class d implements MusicPlayManager.d {
        public d() {
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            LyricEditActivity.this.K0(i);
        }
    }

    public class e implements DialogInterface.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            hb0.markDirect("vd_audio_lyrics_edit_cancel_cl");
            dialogInterface.dismiss();
            LyricEditActivity.this.setResult(0);
            LyricEditActivity.this.finish();
        }
    }

    public class f implements pd7 {
        public f() {
        }

        @Override
        public void onNext(List list) {
        }

        @Override
        public void onComplete() {
            LyricEditActivity.this.setResult(-1);
            LyricEditActivity.this.finish();
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public static void A0(Context context) {
        f5.b(new Intent(context, (Class<?>) LyricEditActivity.class), 1247, (Activity) context);
        if (context != null) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    public static void B0(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) LyricEditActivity.class);
        intent.putExtra("web_url_from", str);
        f5.b(intent, 1242, (Activity) context);
        if (context != null) {
            ((Activity) context).overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
        }
    }

    private void G0() {
        LrcSearcher lrcSearcher = new LrcSearcher();
        this.a0 = lrcSearcher;
        lrcSearcher.u();
        this.a0.E(this.Y);
        this.a0.s().d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    private boolean H0() {
        return MusicPlayManager.S().b0() == 3;
    }

    public void J0(TextView textView) {
        InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
        if (inputMethodManager != null) {
            textView.requestFocus();
            inputMethodManager.showSoftInput(textView, 0);
        }
    }

    public void C0(long j, long j2, long j3) {
        this.N.setProgress(0.0f);
        this.O = 0L;
        this.R.setText(wna.c(0L));
        this.S.setText(wna.c(0L));
    }

    public void D0() {
        ThreadUtils.o().removeCallbacks(this.c0);
    }

    public void lambda$new$0() throws Throwable {
        long jR;
        long jQ;
        long j;
        try {
            jR = this.Q.R();
            try {
                jQ = this.Q.Q();
                Handler handlerO = ThreadUtils.o();
                handlerO.removeCallbacks(this.c0);
                handlerO.postDelayed(this.c0, 500L);
                j = 0;
                if (jR > 0) {
                    L0(jQ, jR, 0L);
                    return;
                }
            } catch (Throwable th) {
                th = th;
                Handler handlerO2 = ThreadUtils.o();
                handlerO2.removeCallbacks(this.c0);
                handlerO2.postDelayed(this.c0, 500L);
                jQ = 0;
                j = 0;
                if (jR > 0) {
                    L0(0L, jR, 0L);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            jR = 0;
        }
        C0(jQ, jR, j);
    }

    public final void F0() {
        this.a0.B(this.Z.getText().toString()).d0(k29.c()).M(vb.a()).subscribe(new f());
    }

    public final void I0() {
        new com.transsion.widgetslib.dialog.d.a(this).e(true).j(R.string.message_lyric_edit_dialog).u(R.string.edit_discard, new e()).m(R.string.cancel, null).a().show();
    }

    public void K0(int i) {
        cd.f(this.X, i == 3 ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new);
    }

    public final void L0(long j, long j2, long j3) {
        if (this.O != j2) {
            this.O = j2;
            this.S.setText(wna.c(j2));
        }
        long j4 = this.O;
        if (j > j4) {
            j = j4;
        }
        int iRound = Math.round((100 * j) / j2);
        if (this.P) {
            return;
        }
        this.R.setText(wna.d(j));
        this.N.setProgress(iRound);
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.activity_audio_slide_out_down);
    }

    @Override
    public int loadSkin(boolean z) {
        int iLoadSkin = super.loadSkin(false);
        Window window = getWindow();
        int i = R.color.lyric_edit_background;
        window.setBackgroundDrawableResource(i);
        getWindow().setStatusBarColor(getResources().getColor(R.color.transparent));
        View decorView = getWindow().getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8209));
        getWindow().setNavigationBarColor(getResources().getColor(i));
        return iLoadSkin;
    }

    @Override
    public void onBackPressed() {
        hb0.markDirect("vd_audio_lyrics_edit_cancel");
        if (TextUtils.equals(this.b0, this.Z.getText())) {
            setResult(0);
            finish();
        } else {
            hb0.markDirect("vd_audio_lyrics_edit_op");
            I0();
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_play) {
            hb0.markTrackSingle("vd_audio_lyrics_edit_play", "action", 1);
            this.Q.A1(true, !H0());
            return;
        }
        if (id == R.id.iv_cancel) {
            onBackPressed();
            return;
        }
        if (id == R.id.iv_confirm) {
            hb0.markDirect("vd_audio_lyrics_edit_save");
            if (TextUtils.equals(this.b0, this.Z.getText())) {
                return;
            }
            hb0.markDirect("vd_audio_lyrics_edit_op");
            if (TextUtils.equals(y0(), "google_search_for_lyrics")) {
                p06.d0("vd_audio_lyrics_google_result_save");
            }
            F0();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lyric_edit);
        this.N = (OSSeekbar) findViewById(R.id.seekbar_video_play_bottom);
        this.R = (TextView) findViewById(R.id.tv_video_play_current_progress);
        this.S = (TextView) findViewById(R.id.tv_video_play_total_progress);
        this.T = (TextView) findViewById(R.id.tv_audio_play_title);
        this.U = (TextView) findViewById(R.id.tv_audio_artist);
        this.V = (ImageView) findViewById(R.id.iv_cancel);
        this.W = (ImageView) findViewById(R.id.iv_confirm);
        this.X = (ImageView) findViewById(R.id.iv_play);
        this.Z = (EditText) findViewById(R.id.et_lyrics);
        this.N.setOnProgressChangedListener(this.d0);
        if (vha.s(this)) {
            this.N.setThumb(vha.e(this));
        }
        this.X.setOnClickListener(this);
        this.V.setOnClickListener(this);
        this.W.setOnClickListener(this);
        MusicPlayManager musicPlayManagerS = MusicPlayManager.S();
        this.Q = musicPlayManagerS;
        musicPlayManagerS.q1(true);
        this.Q.f1(this.e0);
        K0(this.Q.b0());
        AudioItem audioItemP = this.Q.P();
        this.Y = audioItemP;
        if (audioItemP != null) {
            this.T.setText(audioItemP.displayName);
            this.U.setText(this.Y.artistName);
        }
        G0();
        z0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.Q.q1(false);
        this.Q.F1(this.e0);
    }

    @Override
    public void onPause() {
        super.onPause();
        D0();
    }

    @Override
    public void onResume() throws Throwable {
        super.onResume();
        lambda$new$0();
    }

    public final void x0(boolean z) {
        this.W.setAlpha(z ? 1.0f : 0.4f);
        this.W.setEnabled(z);
    }

    public final String y0() {
        Bundle extras;
        Intent intent = getIntent();
        return (intent == null || (extras = intent.getExtras()) == null) ? "" : extras.getString("web_url_from", "");
    }

    public final void z0() {
        x0(false);
        this.Z.addTextChangedListener(new a());
    }
}
