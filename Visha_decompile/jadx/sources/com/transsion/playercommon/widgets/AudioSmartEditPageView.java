package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MusicBrainzResponseBean;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.playercommon.videomodel.SmartEditViewModel;
import com.transsion.playercommon.widgets.AudioSmartEditPageView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.ag5;
import defpackage.ao;
import defpackage.av3;
import defpackage.b39;
import defpackage.f5;
import defpackage.gd1;
import defpackage.gf7;
import defpackage.h27;
import defpackage.hb0;
import defpackage.in9;
import defpackage.k29;
import defpackage.mfb;
import defpackage.mq;
import defpackage.p06;
import defpackage.pp3;
import defpackage.qy5;
import defpackage.rc2;
import defpackage.rj4;
import defpackage.s87;
import defpackage.tn;
import defpackage.v74;
import defpackage.vb;
import defpackage.vk1;
import defpackage.xm9;
import defpackage.zf1;
import defpackage.zl6;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class AudioSmartEditPageView extends FrameLayout {
    public static final int SELECT_PHOTO = 2001;
    public final boolean A;
    public int B;
    public final Runnable C;
    public Rect D;
    public String E;
    public String F;
    public String G;
    public String H;
    public j I;
    public AudioItem b;
    public volatile List c;
    public AudioAlbumViewModel d;
    public String e;
    public gd1 f;
    public boolean g;
    public boolean h;
    public s87 i;
    public View j;
    public SmartEditViewModel k;
    public ImageView l;
    public RoundImageView m;
    public ImageView n;
    public ImageView o;
    public ImageView p;
    public OSMaterialEditText q;
    public OSMaterialEditText r;
    public OSMaterialEditText s;
    public OSMaterialEditText t;
    public TextView u;
    public View v;
    public boolean w;
    public NestedScrollView x;
    public View y;
    public View z;

    public class a implements tn.c {
        public final ImageView a;
        public final AudioItem b;

        public a(ImageView imageView, AudioItem audioItem) {
            this.a = imageView;
            this.b = audioItem;
        }

        @Override
        public void a(Bitmap bitmap, AudioItem audioItem) {
            if (bitmap != null) {
                if (this.a.getTag() == null || !this.a.getTag().equals(Integer.valueOf(audioItem.id))) {
                    return;
                }
                this.a.setImageBitmap(bitmap);
                return;
            }
            if (this.a.getTag() == null || !this.a.getTag().equals(Integer.valueOf(audioItem.id))) {
                return;
            }
            this.a.setImageResource(tn.j(this.b));
        }
    }

    public class b implements in9 {
        public b() {
        }

        @Override
        public void onSuccess(MusicBrainzResponseBean musicBrainzResponseBean) {
            AudioSmartEditPageView.this.O();
            AudioSmartEditPageView.this.setSmartEditInfo(musicBrainzResponseBean);
        }

        @Override
        public void onError(Throwable th) {
            AudioSmartEditPageView.this.O();
            ToastUtils.s(R.string.visha_no_smart_match_info);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements Observer {
        public c() {
        }

        @Override
        public void onChanged(String str) {
            if (str == null || AudioSmartEditPageView.this.b == null || str.equals(AudioSmartEditPageView.this.b.data)) {
                return;
            }
            AudioSmartEditPageView.this.setNewCover(str);
        }
    }

    public class d extends gf7 {
        public d() {
        }

        @Override
        public void a(View view) {
            AudioSmartEditPageView.this.pickPhoto();
        }
    }

    public class e extends gf7 {
        public e() {
        }

        @Override
        public void a(View view) {
            AudioSmartEditPageView audioSmartEditPageView = AudioSmartEditPageView.this;
            audioSmartEditPageView.loadAudioCover(audioSmartEditPageView.b, AudioSmartEditPageView.this.n);
            AudioSmartEditPageView.this.h = false;
            AudioSmartEditPageView.this.p.setEnabled(false);
            AudioSmartEditPageView.this.u.setEnabled(AudioSmartEditPageView.this.g);
        }
    }

    public class f extends gf7 {
        public f() {
        }

        @Override
        public void a(View view) {
            h27.c().e(1174, AudioSmartEditPageView.this.b);
            AudioSmartEditPageView.this.o0();
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            AudioSmartEditPageView.this.n0();
        }
    }

    public class h extends gf7 {
        public h() {
        }

        @Override
        public void a(View view) {
            hb0.markDirect("vd_vmore_edit_pop_digger_cl");
            if (AudioSmartEditPageView.this.b != null) {
                AudioSmartEditPageView audioSmartEditPageView = AudioSmartEditPageView.this;
                audioSmartEditPageView.requestAudioInfoFromMusicBrain(audioSmartEditPageView.b.data);
            }
        }
    }

    public class i implements TextWatcher {
        public i() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String strTrim = AudioSmartEditPageView.this.q.getEditText().getText().toString().trim();
            String strTrim2 = AudioSmartEditPageView.this.s.getEditText().getText().toString().trim();
            String strTrim3 = AudioSmartEditPageView.this.r.getEditText().getText().toString().trim();
            String strTrim4 = AudioSmartEditPageView.this.t.getEditText().getText().toString().trim();
            if ((TextUtils.equals(AudioSmartEditPageView.this.E, strTrim) && TextUtils.equals(AudioSmartEditPageView.this.F, strTrim2) && TextUtils.equals(AudioSmartEditPageView.this.G, strTrim3) && TextUtils.equals(AudioSmartEditPageView.this.H, strTrim4)) || TextUtils.isEmpty(strTrim)) {
                AudioSmartEditPageView.this.u.setEnabled(AudioSmartEditPageView.this.h);
            } else {
                AudioSmartEditPageView.this.u.setEnabled(true);
            }
            qy5.a = "manualedit";
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface j {
        void a();

        void b();
    }

    public AudioSmartEditPageView(@NonNull Context context) {
        super(context);
        this.c = new ArrayList();
        this.f = new gd1();
        this.g = false;
        this.h = false;
        this.w = false;
        this.A = pp3.m();
        this.B = 0;
        this.C = new Runnable() {
            @Override
            public final void run() {
                this.b.b0();
            }
        };
        this.D = new Rect();
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        T(context);
    }

    public static void N(OSMaterialEditText... oSMaterialEditTextArr) {
        if (oSMaterialEditTextArr == null) {
            return;
        }
        for (OSMaterialEditText oSMaterialEditText : oSMaterialEditTextArr) {
            if (oSMaterialEditText != null) {
                oSMaterialEditText.setSaveEnabled(false);
                if (oSMaterialEditText.getEditText() != null) {
                    oSMaterialEditText.getEditText().setSaveEnabled(false);
                }
            }
        }
    }

    public static boolean W(View view, View view2) {
        if (view != null && view2 != null) {
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent == view2) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void Z(Editable editable, TextView textView) {
        if (editable.toString().trim().length() >= 50) {
            ToastUtils.s(R.string.over_text_length);
        }
    }

    public static void a0(Editable editable, TextView textView) {
        if (editable.toString().trim().length() >= 75) {
            ToastUtils.s(R.string.over_text_length);
        }
    }

    public static Boolean g0(Boolean bool, Boolean bool2, Boolean bool3) {
        return Boolean.valueOf(bool.booleanValue() && bool2.booleanValue() && bool3.booleanValue());
    }

    private int getNestedScrollMaxY() {
        NestedScrollView nestedScrollView = this.x;
        if (nestedScrollView == null || nestedScrollView.getChildCount() == 0) {
            return 0;
        }
        return Math.max(0, this.x.getChildAt(0).getHeight() - this.x.getHeight());
    }

    public static String m0(String str) {
        return str == null ? "" : str;
    }

    public static boolean needLargeScreenImeAdapt(@Nullable Context context) {
        return (context == null || !pp3.m() || b39.b(context)) ? false : true;
    }

    public void setNewCover(String str) {
        s0();
        this.e = str;
        Glide.with(getContext()).load2(str).centerCrop().diskCacheStrategy(DiskCacheStrategy.ALL).into(this.n);
        this.h = true;
        this.u.setEnabled(true);
        this.p.setEnabled(true);
    }

    public void setSmartEditInfo(MusicBrainzResponseBean musicBrainzResponseBean) {
        String musicName = musicBrainzResponseBean.getMusicName();
        String artistName = musicBrainzResponseBean.getArtistName();
        String albumName = musicBrainzResponseBean.getAlbumName();
        String albumYear = musicBrainzResponseBean.getAlbumYear();
        LogUtils.j("AudioSmartEditPageView", "title:" + musicName + " artistName:" + artistName + " albumName:" + albumName + " albumYear:" + albumYear);
        if (!TextUtils.isEmpty(musicName) && !musicName.equals(this.b.title)) {
            this.q.getEditText().setText(musicName);
            this.g = true;
        }
        if (!TextUtils.isEmpty(artistName) && !artistName.equals(this.b.artistName)) {
            this.s.getEditText().setText(rj4.a(artistName, this.s.getEditText()));
            this.g = true;
        }
        if (!TextUtils.isEmpty(albumName) && !albumName.equals(this.b.albumName)) {
            this.r.getEditText().setText(rj4.a(albumName, this.r.getEditText()));
            this.g = true;
        }
        if (!TextUtils.isEmpty(albumYear) && !TextUtils.equals(albumYear, this.b.mAlbumYear)) {
            this.t.getEditText().setText(rj4.a(albumYear, this.t.getEditText()));
            this.g = true;
        }
        if (this.g) {
            this.u.setEnabled(true);
        }
        this.w = true;
        qy5.a = "smartedit";
    }

    public final boolean J(int i2) {
        ViewGroup.LayoutParams layoutParams;
        View view = this.y;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || layoutParams.height == i2) {
            return false;
        }
        layoutParams.height = i2;
        this.y.setLayoutParams(layoutParams);
        LogUtils.j("AudioSmartEditPageView", "ime scroll space=" + i2 + ", keyboard=" + this.B);
        return true;
    }

    public final void K() {
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                this.b.X(view, z);
            }
        };
        this.q.getEditText().setOnFocusChangeListener(onFocusChangeListener);
        this.s.getEditText().setOnFocusChangeListener(onFocusChangeListener);
        this.r.getEditText().setOnFocusChangeListener(onFocusChangeListener);
        this.t.getEditText().setOnFocusChangeListener(onFocusChangeListener);
    }

    public final int L() {
        NestedScrollView nestedScrollView = this.x;
        if (nestedScrollView == null || this.B <= 0 || nestedScrollView.getChildCount() == 0) {
            return 0;
        }
        View view = this.u;
        if (view == null) {
            view = this.t;
        }
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        this.x.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        View view2 = this.y;
        int height = view2 != null ? view2.getHeight() : 0;
        int scrollY = (iArr[1] + ((this.x.getScrollY() + (iArr2[1] - iArr[1])) + view.getHeight())) - ((com.transsion.utils.a.l(getContext()) - this.B) - com.transsion.utils.a.d(getContext(), 8.0f));
        if (scrollY <= 0) {
            return 0;
        }
        return Math.max(0, scrollY - Math.max(0, Math.max(0, this.x.getChildAt(0).getHeight() - height) - this.x.getHeight()));
    }

    public final AudioItem M(String str, String str2, String str3, String str4) {
        AudioItem audioItem = new AudioItem();
        AudioItem audioItem2 = this.b;
        audioItem.id = audioItem2.id;
        audioItem.data = audioItem2.data;
        audioItem.displayName = str;
        audioItem.artistName = str2;
        audioItem.albumName = str3;
        audioItem.mAlbumYear = str4;
        return audioItem;
    }

    public final void O() {
        s87 s87Var = this.i;
        if (s87Var != null && s87Var.isShowing()) {
            this.i.dismiss();
        }
        this.i = null;
        View view = this.j;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void P(View view) {
        OSMaterialEditText oSMaterialEditText;
        if (this.x == null || this.B <= 0 || !l0()) {
            return;
        }
        if (view == null) {
            view = this.x.findFocus();
        }
        if (view == null) {
            view = findFocus();
        }
        if (view == null) {
            return;
        }
        int[] iArr = new int[2];
        this.x.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int scrollY = this.x.getScrollY() + (iArr2[1] - iArr[1]) + view.getHeight();
        if (this.u != null && (oSMaterialEditText = this.t) != null && (view == oSMaterialEditText.getEditText() || W(view, this.t))) {
            int[] iArr3 = new int[2];
            this.u.getLocationOnScreen(iArr3);
            scrollY = Math.max(scrollY, this.x.getScrollY() + (iArr3[1] - iArr[1]) + this.u.getHeight());
        }
        int iD = com.transsion.utils.a.d(getContext(), 8.0f);
        int iL = com.transsion.utils.a.l(getContext()) - this.B;
        int iMax = Math.max(0, Math.min((iArr[1] + scrollY) - (iL - iD), getNestedScrollMaxY()));
        if (Math.abs(this.x.getScrollY() - iMax) > 2) {
            LogUtils.j("AudioSmartEditPageView", "scrollTo y=" + iMax + ", cur=" + this.x.getScrollY() + ", keyboardTop=" + iL);
            this.x.scrollTo(0, iMax);
        }
    }

    public final void Q() {
        if (this.x == null || this.u == null || !l0()) {
            return;
        }
        this.x.post(new Runnable() {
            @Override
            public final void run() {
                this.b.Y();
            }
        });
    }

    public final void R(Throwable th) {
        LogUtils.m("AudioSmartEditPageView", "Error saving audio edit info: " + th.getMessage());
        ToastUtils.s(R.string.audio_edit_error_tip);
    }

    public final void S(Boolean bool) {
        LogUtils.j("AudioSmartEditPageView", "Audio edit info saved result: " + bool);
        if (bool.booleanValue()) {
            h27.c().e(1187, new Object[0]);
            getContext().sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
            if (this.h) {
                LiveEventBus.b().c("change_audio_cover", this.b);
            }
            j jVar = this.I;
            if (jVar != null) {
                jVar.b();
            }
        }
    }

    public final void T(Context context) {
        this.v = LayoutInflater.from(context).inflate(R.layout.audio_smart_edit_page_layout, (ViewGroup) this, true);
        this.d = (AudioAlbumViewModel) new ViewModelProvider((ViewModelStoreOwner) getContext()).get(AudioAlbumViewModel.class);
        this.l = (ImageView) findViewById(R.id.iv_back);
        this.m = (RoundImageView) findViewById(R.id.iv_smart_edit);
        this.n = (ImageView) findViewById(R.id.iv_cover);
        this.o = (ImageView) findViewById(R.id.iv_edit_cover);
        this.p = (ImageView) findViewById(R.id.iv_delete_cover);
        this.q = (OSMaterialEditText) findViewById(R.id.et_title);
        this.r = (OSMaterialEditText) findViewById(R.id.et_album);
        this.s = (OSMaterialEditText) findViewById(R.id.et_artist);
        this.t = (OSMaterialEditText) findViewById(R.id.et_year);
        this.u = (TextView) findViewById(R.id.tv_save);
        this.j = findViewById(R.id.v_smart_match_loading_blocker);
        this.k = (SmartEditViewModel) new ViewModelProvider((ViewModelStoreOwner) getContext()).get(SmartEditViewModel.class);
        TaskExecutor.c(new TaskExecutor.Task<Void>() {
            @Override
            public Void onBackground() {
                AudioSmartEditPageView.this.c = ao.U().w();
                return null;
            }

            @Override
            public void onResult(Void r2) {
                AudioSmartEditPageView audioSmartEditPageView = AudioSmartEditPageView.this;
                audioSmartEditPageView.loadAudioCover(audioSmartEditPageView.b, AudioSmartEditPageView.this.n);
            }
        });
        this.o.setOnClickListener(new d());
        this.p.setOnClickListener(new e());
        this.u.setOnClickListener(new f());
        this.l.setOnClickListener(new g());
        this.m.setOnClickListener(new h());
        V();
        U();
        this.u.setEnabled(false);
        this.p.setEnabled(false);
        this.x = (NestedScrollView) findViewById(R.id.nsv_smart_edit_content);
        this.y = findViewById(R.id.v_ime_scroll_space);
        if (this.A) {
            N(this.q, this.s, this.r, this.t);
        }
    }

    public final void U() {
        SmartEditViewModel smartEditViewModel = this.k;
        if (smartEditViewModel != null) {
            smartEditViewModel.h().observe((LifecycleOwner) getContext(), new c());
        }
    }

    public final void V() {
        final OSMaterialEditText.c cVar = new OSMaterialEditText.c() {
            @Override
            public final void a(Editable editable, TextView textView) {
                AudioSmartEditPageView.Z(editable, textView);
            }
        };
        final OSMaterialEditText.c cVar2 = new OSMaterialEditText.c() {
            @Override
            public final void a(Editable editable, TextView textView) {
                AudioSmartEditPageView.a0(editable, textView);
            }
        };
        ThreadUtils.t(new Runnable() {
            @Override
            public void run() {
                AudioSmartEditPageView.this.q.setInputNum(75, cVar2);
                AudioSmartEditPageView.this.s.setInputNum(50, cVar);
                AudioSmartEditPageView.this.r.setInputNum(50, cVar);
                AudioSmartEditPageView.this.t.setInputNum(50, cVar);
            }
        }, 500L);
        final i iVar = new i();
        ThreadUtils.t(new Runnable() {
            @Override
            public void run() {
                if (AudioSmartEditPageView.this.q == null || AudioSmartEditPageView.this.q.getContext() == null || AudioSmartEditPageView.this.s == null || AudioSmartEditPageView.this.s.getContext() == null || AudioSmartEditPageView.this.r == null || AudioSmartEditPageView.this.r.getContext() == null || AudioSmartEditPageView.this.t == null || AudioSmartEditPageView.this.t.getContext() == null) {
                    return;
                }
                AudioSmartEditPageView.this.q.getEditText().addTextChangedListener(iVar);
                AudioSmartEditPageView.this.s.getEditText().addTextChangedListener(iVar);
                AudioSmartEditPageView.this.r.getEditText().addTextChangedListener(iVar);
                AudioSmartEditPageView.this.t.getEditText().addTextChangedListener(iVar);
                if (AudioSmartEditPageView.this.l0()) {
                    AudioSmartEditPageView.this.K();
                }
            }
        }, 500L);
        this.u.postDelayed(new Runnable() {
            @Override
            public void run() {
                AudioSmartEditPageView.this.u.getGlobalVisibleRect(AudioSmartEditPageView.this.D);
            }
        }, 200L);
    }

    public final void X(View view, boolean z) {
        if (!z || this.B <= 0) {
            return;
        }
        r0(view);
    }

    public final void Y() {
        int i2;
        int[] iArr = new int[2];
        this.x.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.u.getLocationOnScreen(iArr2);
        int iD = com.transsion.utils.a.d(getContext(), 8.0f);
        int height = iArr[1] + this.x.getHeight();
        int height2 = iArr2[1] + this.u.getHeight();
        int i3 = iArr2[1];
        int i4 = iArr[1];
        int i5 = height2 + iD;
        if (i5 > height) {
            i2 = i5 - height;
        } else {
            i2 = i3 < i4 ? (i3 - i4) - iD : 0;
        }
        if (i2 != 0) {
            int iMax = Math.max(0, Math.min(this.x.getScrollY() + i2, getNestedScrollMaxY()));
            LogUtils.j("AudioSmartEditPageView", "ime hide ensure save visible, scrollTo=" + iMax);
            this.x.smoothScrollTo(0, iMax);
        }
    }

    public final void b0() {
        P(this.z);
        this.z = null;
    }

    public final void c0() {
        this.x.post(this.C);
    }

    public final Boolean d0() {
        p0();
        return Boolean.TRUE;
    }

    public final Boolean e0(String str, String str2, String str3) {
        Context context = getContext();
        AudioItem audioItem = this.b;
        zl6.g(context, audioItem.data, audioItem.id, str, str2, str3);
        return Boolean.TRUE;
    }

    public final Boolean f0(String str, String str2, String str3, String str4) {
        ao.U().x0(M(str, str2, str3, str4));
        return Boolean.TRUE;
    }

    public final void h0(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        j jVar = this.I;
        if (jVar != null) {
            jVar.a();
        }
    }

    public final void i0(DialogInterface dialogInterface, int i2) {
        o0();
    }

    public final void j0(AudioItem audioItem, ImageView imageView) {
        vk1.j(getContext(), audioItem, new a(imageView, audioItem));
    }

    public final void k0(s87 s87Var) {
        if (s87Var == null) {
            return;
        }
        try {
            Window window = s87Var.getWindow();
            if (window == null) {
                return;
            }
            window.setFlags(8, 131080);
        } catch (Exception e2) {
            LogUtils.m("AudioSmartEditPageView", "makeDialogNotFocusable failed: " + e2.getMessage());
        }
    }

    public final boolean l0() {
        return this.A && !b39.b(getContext());
    }

    public void loadAudioCover(AudioItem audioItem, ImageView imageView) {
        if (audioItem == null || imageView == null) {
            return;
        }
        AudioAlbum audioAlbum = null;
        for (AudioAlbum audioAlbum2 : this.c) {
            if (audioAlbum2.id.intValue() == audioItem.id) {
                audioAlbum = audioAlbum2;
            }
        }
        imageView.setTag(Integer.valueOf(audioItem.id));
        if (audioAlbum == null) {
            j0(audioItem, imageView);
        } else if (av3.x(audioAlbum.imgPath)) {
            Glide.with(getContext()).load2(audioAlbum.imgPath).centerCrop().into(imageView);
        } else {
            j0(audioItem, imageView);
        }
    }

    public final void n0() {
        if (this.u.isEnabled()) {
            u0();
            return;
        }
        j jVar = this.I;
        if (jVar != null) {
            jVar.a();
        }
    }

    public final void o0() {
        ag5.h((Activity) getContext());
        qy5.b(this.q.getEditText().getText().toString(), this.s.getEditText().getText().toString(), this.r.getEditText().getText().toString(), "list");
        q0(this.q.getEditText().getText().toString(), this.s.getEditText().getText().toString(), this.r.getEditText().getText().toString(), this.t.getEditText().getText().toString());
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        p06.d0("vd_audio_play_smartedit_show");
        RoundImageView roundImageView = this.m;
        if (roundImageView != null) {
            mq.c(roundImageView);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.A) {
            this.B = 0;
            NestedScrollView nestedScrollView = this.x;
            if (nestedScrollView != null) {
                nestedScrollView.removeCallbacks(this.C);
            }
            J(0);
        }
        this.f.d();
        this.w = false;
        View view = this.j;
        if (view != null) {
            view.setVisibility(8);
        }
        s87 s87Var = this.i;
        if (s87Var != null) {
            try {
                if (s87Var.isShowing()) {
                    this.i.dismiss();
                }
            } catch (Exception unused) {
            }
            this.i = null;
        }
    }

    public void onKeyboardHeightChanged(int i2) {
        int iMax = Math.max(i2, 0);
        boolean z = this.B > 0 && iMax <= 0;
        this.B = iMax;
        if (!l0()) {
            J(0);
            return;
        }
        if (this.B <= 0) {
            J(0);
            NestedScrollView nestedScrollView = this.x;
            if (nestedScrollView != null) {
                nestedScrollView.removeCallbacks(this.C);
                if (z) {
                    this.x.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.Q();
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        boolean zJ = J(L());
        NestedScrollView nestedScrollView2 = this.x;
        if (nestedScrollView2 == null) {
            return;
        }
        nestedScrollView2.removeCallbacks(this.C);
        if (zJ) {
            this.x.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.c0();
                }
            });
        } else {
            this.x.post(this.C);
        }
    }

    public void onPhotoSelected(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                AudioSmartEditPageView.this.e = str;
                Glide.with(AudioSmartEditPageView.this.getContext()).load2(str).centerCrop().placeholder(AudioSmartEditPageView.this.n.getDrawable()).into(AudioSmartEditPageView.this.n);
                AudioSmartEditPageView.this.h = true;
                AudioSmartEditPageView.this.u.setEnabled(true);
                AudioSmartEditPageView.this.p.setEnabled(true);
            }
        });
    }

    public final void p0() {
        String str;
        if (!this.h || (str = this.e) == null) {
            return;
        }
        this.d.e(str);
    }

    @SuppressLint({"IntentReset"})
    public void pickPhoto() {
        s0();
        mfb.g();
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        try {
            mfb.n();
            f5.b(intent, 2001, (Activity) getContext());
        } catch (Exception e2) {
            LogUtils.m("pickPhoto", e2.getMessage());
        }
    }

    public final void q0(final String str, final String str2, final String str3, final String str4) {
        this.f.b(xm9.z(xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.d0();
            }
        }).r(k29.c()), xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.e0(str, str2, str3);
            }
        }).r(k29.c()), xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.f0(str, str2, str3, str4);
            }
        }).r(k29.c()), new v74() {
            @Override
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return AudioSmartEditPageView.g0((Boolean) obj, (Boolean) obj2, (Boolean) obj3);
            }
        }).m(vb.a()).p(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.S((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.R((Throwable) obj);
            }
        }));
    }

    public final void r0(View view) {
        NestedScrollView nestedScrollView = this.x;
        if (nestedScrollView == null || this.B <= 0) {
            return;
        }
        this.z = view;
        nestedScrollView.removeCallbacks(this.C);
        this.x.post(this.C);
    }

    public void requestAudioInfoFromMusicBrain(String str) {
        if (this.w) {
            ToastUtils.s(R.string.visha_smart_edit_complete);
        } else if (MainApp.w == 0) {
            ToastUtils.s(R.string.net_not_connect);
        } else {
            t0();
            this.k.f(str).a(new b());
        }
    }

    public void restoreEditDraft(@Nullable Bundle bundle) {
        if (!this.A || bundle == null || this.b == null || this.q == null || this.s == null || this.r == null || this.t == null || !bundle.containsKey("smart_edit_draft_title")) {
            return;
        }
        this.q.getEditText().setText(m0(bundle.getString("smart_edit_draft_title")));
        this.s.getEditText().setText(m0(bundle.getString("smart_edit_draft_artist")));
        this.r.getEditText().setText(m0(bundle.getString("smart_edit_draft_album")));
        this.t.getEditText().setText(m0(bundle.getString("smart_edit_draft_year")));
        String strSubstring = this.b.displayName;
        if (strSubstring == null) {
            strSubstring = "";
        }
        int iLastIndexOf = strSubstring.lastIndexOf(Consts.DOT);
        if (iLastIndexOf > 0) {
            strSubstring = strSubstring.substring(0, iLastIndexOf);
        }
        this.E = strSubstring.trim();
        this.F = m0(this.b.artistName).trim();
        this.G = m0(this.b.albumName).trim();
        this.H = m0(this.b.mAlbumYear).trim();
        if (this.u != null) {
            String strTrim = this.q.getEditText().getText().toString().trim();
            this.u.setEnabled(((!TextUtils.equals(this.E, strTrim) || !TextUtils.equals(this.F, this.s.getEditText().getText().toString().trim()) || !TextUtils.equals(this.G, this.r.getEditText().getText().toString().trim()) || !TextUtils.equals(this.H, this.t.getEditText().getText().toString().trim())) && !TextUtils.isEmpty(strTrim)) || this.h);
        }
    }

    public final void s0() {
        this.d.f(this.b);
    }

    public void saveEditDraft(@NonNull Bundle bundle) {
        OSMaterialEditText oSMaterialEditText;
        if (!this.A || (oSMaterialEditText = this.q) == null || this.s == null || this.r == null || this.t == null) {
            return;
        }
        bundle.putString("smart_edit_draft_title", oSMaterialEditText.getEditText().getText().toString());
        bundle.putString("smart_edit_draft_artist", this.s.getEditText().getText().toString());
        bundle.putString("smart_edit_draft_album", this.r.getEditText().getText().toString());
        bundle.putString("smart_edit_draft_year", this.t.getEditText().getText().toString());
    }

    public void setAudioItem(AudioItem audioItem) {
        this.b = audioItem;
        updateContent();
        loadAudioCover(this.b, this.n);
    }

    public void setOnSmartEditPageChangeListener(j jVar) {
        this.I = jVar;
    }

    public final void t0() {
        if (this.i == null) {
            this.i = new s87.a(getContext()).a(R.string.loading, true).c();
        }
        k0(this.i);
        View view = this.j;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final void u0() {
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(getContext());
        aVar.j(R.string.visha_save_smart_edit_info_hint_title);
        aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.h0(dialogInterface, i2);
            }
        });
        aVar.u(R.string.Save, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.i0(dialogInterface, i2);
            }
        });
        aVar.F();
    }

    public void updateContent() {
        int iLastIndexOf = this.b.displayName.lastIndexOf(Consts.DOT);
        this.q.getEditText().setText(iLastIndexOf > 0 ? this.b.displayName.substring(0, iLastIndexOf) : this.b.displayName);
        this.s.getEditText().setText(this.b.artistName);
        this.r.getEditText().setText(this.b.albumName);
        this.E = this.q.getEditText().getText().toString().trim();
        this.F = this.s.getEditText().getText().toString().trim();
        this.G = this.r.getEditText().getText().toString().trim();
        this.H = this.t.getEditText().getText().toString().trim();
        if (TextUtils.isEmpty(this.b.mAlbumYear)) {
            return;
        }
        this.t.getEditText().setText(this.b.mAlbumYear);
    }

    public AudioSmartEditPageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new ArrayList();
        this.f = new gd1();
        this.g = false;
        this.h = false;
        this.w = false;
        this.A = pp3.m();
        this.B = 0;
        this.C = new Runnable() {
            @Override
            public final void run() {
                this.b.b0();
            }
        };
        this.D = new Rect();
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        T(context);
    }

    public AudioSmartEditPageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = new ArrayList();
        this.f = new gd1();
        this.g = false;
        this.h = false;
        this.w = false;
        this.A = pp3.m();
        this.B = 0;
        this.C = new Runnable() {
            @Override
            public final void run() {
                this.b.b0();
            }
        };
        this.D = new Rect();
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        T(context);
    }
}
