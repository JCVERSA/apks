package com.transsion.audio.activities;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.R;
import com.transsion.audio.activities.SearchLyricDialogActivity;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audio.widgets.LyricLocalSelectView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.av3;
import defpackage.c07;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.pd7;
import defpackage.pp3;
import defpackage.rc2;
import defpackage.vb;
import java.util.Iterator;
import java.util.List;

public class SearchLyricDialogActivity extends RxPermissionOSBottomSheetDialog {
    public AudioItem N;
    public int O;
    public LrcSearcher P;
    public String Q;
    public Runnable R;

    public class a implements pd7 {
        public final String b;
        public final View c;

        public a(String str, View view) {
            this.b = str;
            this.c = view;
        }

        @Override
        public void onNext(List list) {
            SearchLyricDialogActivity.this.Q = this.b;
            StringBuilder sb = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sb.append(((LrcRow) it.next()).content);
                sb.append("\n");
            }
            View view = this.c;
            if (view != null) {
                ((TextView) view.findViewById(R.id.tv_preview)).setText(sb.toString());
            }
            hb0.markTrackSingle("vd_audio_lyrics_add_preview", "from", Integer.valueOf(SearchLyricDialogActivity.this.O));
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            hb0.markTrackSingle("vd_audio_lyrics_add", "from", 1);
            SearchLyricDialogActivity.this.t0();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            if (!c07.b(com.blankj.utilcode.util.a.e())) {
                ToastUtils.s(R.string.no_network);
                return;
            }
            SearchLyricDialogActivity.this.animateDismiss();
            SearchLyricDialogActivity.this.finish();
            Intent intent = new Intent(com.blankj.utilcode.util.a.e(), (Class<?>) AudioWebViewActivity.class);
            SearchLyricDialogActivity searchLyricDialogActivity = SearchLyricDialogActivity.this;
            intent.putExtra(VkConstant.URL, String.format("https://www.google.com/search?q=%s", searchLyricDialogActivity.p0(searchLyricDialogActivity.N)));
            intent.putExtra("title", com.blankj.utilcode.util.a.e().getResources().getString(R.string.visha_search_lyric));
            f5.b(intent, 1247, com.blankj.utilcode.util.a.e());
            if (com.blankj.utilcode.util.a.e() != null) {
                com.blankj.utilcode.util.a.e().overridePendingTransition(R.anim.activity_audio_slide_in_up, 0);
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            SearchLyricDialogActivity.this.popPage();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            hb0.markTrackSingle("vd_audio_lyrics_add_preview_cl", "from", Integer.valueOf(SearchLyricDialogActivity.this.O));
            SearchLyricDialogActivity.this.n0();
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            SearchLyricDialogActivity.this.animateDismiss();
        }
    }

    public class g implements LyricLocalSelectView.SelectListener {
        public g() {
        }

        @Override
        public void selectLyric(String str) {
            hb0.markTrackSingle("vd_audio_lyrics_add_cl", "from", Integer.valueOf(SearchLyricDialogActivity.this.O));
            SearchLyricDialogActivity.this.r0(str);
        }
    }

    public class h implements DialogInterface.OnClickListener {
        public h() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            hb0.markTrackSingle("vd_audio_lyrics_add_check", "from", Integer.valueOf(SearchLyricDialogActivity.this.O));
            SearchLyricDialogActivity.this.s0();
        }
    }

    public class i implements pd7 {
        public i() {
        }

        @Override
        public void onNext(List list) {
            SearchLyricDialogActivity.this.v0();
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchLyricDialogActivity.this.s0();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class j implements pd7 {
        public j() {
        }

        @Override
        public void onNext(List list) {
            ThreadUtils.o().removeCallbacks(SearchLyricDialogActivity.this.R);
            Intent intent = new Intent();
            intent.putExtra("search_type", 0);
            SearchLyricDialogActivity.this.setResult(-1, intent);
            SearchLyricDialogActivity.this.animateDismiss();
            LiveEventBus.b().c("show_hide_loading_lyric_view", Boolean.FALSE);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public static void q0() {
        LiveEventBus.b().c("show_hide_loading_lyric_view", Boolean.TRUE);
    }

    public void v0() {
        new com.transsion.widgetslib.dialog.d.a(this).m(R.string.cancel, null).u(R.string.lyric_local_setting_add_confirm, new h()).j(R.string.lyric_local_setting_add_dialog_message).A(R.string.lyric_local_setting_add_dialog_title).a().show();
    }

    @Override
    public void initView() {
        super.initView();
        if (getIntent() != null) {
            this.N = (AudioItem) getIntent().getParcelableExtra("audio_item");
            this.O = getIntent().getIntExtra("from", 1);
        }
        LrcSearcher lrcSearcher = new LrcSearcher();
        this.P = lrcSearcher;
        lrcSearcher.u();
        this.P.E(this.N);
        w0();
    }

    @Override
    public boolean isFixedHeight() {
        return true;
    }

    public final void n0() {
        this.P.o().d0(k29.c()).M(vb.a()).subscribe(new i());
    }

    public void o0() {
        View viewInflate = View.inflate(this, R.layout.dialog_search_lrc_type, null);
        addPage(viewInflate).setBackIconVisibility(false).setTitle(R.string.lyric_setting).setCloseIconVisibility(false);
        viewInflate.findViewById(R.id.ll_lyric_local).setOnClickListener(new b());
        View viewFindViewById = viewInflate.findViewById(R.id.ll_lyric_remote);
        viewFindViewById.setOnClickListener(new c());
        if (pp3.z) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.R != null) {
            ThreadUtils.o().removeCallbacks(this.R);
        }
    }

    public String p0(AudioItem audioItem) {
        if (audioItem == null) {
            return "";
        }
        return getResources().getString(R.string.lyrics) + " " + audioItem.displayName;
    }

    public void r0(String str) {
        View viewInflate = View.inflate(this, R.layout.lyric_local_preview, null);
        addPage(viewInflate).setBackIconVisibility(true).setOnTitleBackIconClickListener(new d()).setTitle(R.string.lyric_preview).setCloseIconVisibility(false);
        u0(viewInflate, str);
        viewInflate.findViewById(R.id.tv_btn).setOnClickListener(new e());
    }

    public final void s0() {
        this.R = new Runnable() {
            @Override
            public final void run() {
                SearchLyricDialogActivity.q0();
            }
        };
        ThreadUtils.o().postDelayed(this.R, 500L);
        this.P.r(this.Q, true).d0(k29.c()).M(vb.a()).subscribe(new j());
    }

    public void t0() {
        if (this.N != null) {
            LyricLocalSelectView lyricLocalSelectView = new LyricLocalSelectView(this);
            String str = this.N.data;
            if (str != null) {
                lyricLocalSelectView.setCurrentPath(av3.u(str));
            }
            addPage(lyricLocalSelectView).setTitle(R.string.lyric_search_local).setBackIconVisibility(true).setOnTitleBackIconClickListener(new f()).setCloseIconVisibility(false);
            lyricLocalSelectView.setListener(new g());
        }
    }

    public final void u0(View view, String str) {
        this.P.r(str, false).d0(k29.c()).M(vb.a()).subscribe(new a(str, view));
    }

    public final void w0() {
        if (this.O != 2) {
            o0();
        } else {
            t0();
        }
    }
}
