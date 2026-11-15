package com.transsion.playercommon.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.markpoint.MarkFileTransferInfo;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.MediaOperateMenuDialogActivity;
import com.transsion.playercommon.adapter.MediaOperateHorizontalAdapter;
import com.transsion.playercommon.adapter.MediaOperateVerticalAdapter;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.MediaOperateMenuBean;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.playercommon.widgets.AudioSmartEditPageView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.ag5;
import defpackage.b39;
import defpackage.ez5;
import defpackage.gt;
import defpackage.h27;
import defpackage.hb0;
import defpackage.jrb;
import defpackage.jy7;
import defpackage.k29;
import defpackage.kz5;
import defpackage.lc3;
import defpackage.mc7;
import defpackage.mw2;
import defpackage.nx8;
import defpackage.p06;
import defpackage.pp3;
import defpackage.qy5;
import defpackage.rr3;
import defpackage.t74;
import defpackage.ul;
import defpackage.vb;
import defpackage.w6c;
import defpackage.wna;
import defpackage.zf1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

public class MediaOperateMenuDialogActivity extends RxPermissionOSBottomSheetDialog {
    public View N;
    public MediaItem O;
    public AudioItem P;
    public RecyclerView Q;
    public RecyclerView R;
    public MediaOperateHorizontalAdapter S;
    public MediaOperateVerticalAdapter T;
    public MediaOperateMenuBean U;
    public FileOperateUtils Y;
    public boolean c0;
    public AudioSmartEditPageView d0;
    public Runnable V = new Runnable() {
        @Override
        public void run() {
            MediaOperateMenuDialogActivity mediaOperateMenuDialogActivity = MediaOperateMenuDialogActivity.this;
            mediaOperateMenuDialogActivity.W.postDelayed(mediaOperateMenuDialogActivity.V, 1000L);
            MediaOperateMenuDialogActivity.this.Q0();
        }
    };
    public Handler W = new Handler(Looper.getMainLooper());
    public boolean X = true;
    public String Z = null;
    public String a0 = null;
    public String b0 = null;
    public Rect e0 = new Rect();

    public class a implements FileOperateUtils.k {
        public a() {
        }

        @Override
        public void d() {
            h27.c().e(1072, new Object[0]);
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    public class b implements AudioSmartEditPageView.j {
        public b() {
        }

        @Override
        public void a() {
            MediaOperateMenuDialogActivity.this.popPage();
        }

        @Override
        public void b() {
            MediaOperateMenuDialogActivity.this.animateDismiss();
        }
    }

    public class c implements TextWatcher {
        public final OSMaterialEditText b;
        public final OSMaterialEditText c;
        public final OSMaterialEditText d;
        public final TextView e;

        public c(OSMaterialEditText oSMaterialEditText, OSMaterialEditText oSMaterialEditText2, OSMaterialEditText oSMaterialEditText3, TextView textView) {
            this.b = oSMaterialEditText;
            this.c = oSMaterialEditText2;
            this.d = oSMaterialEditText3;
            this.e = textView;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String strTrim = this.b.getEditText().getText().toString().trim();
            String strTrim2 = this.c.getEditText().getText().toString().trim();
            String strTrim3 = this.d.getEditText().getText().toString().trim();
            if ((TextUtils.equals(MediaOperateMenuDialogActivity.this.Z, strTrim) && TextUtils.equals(MediaOperateMenuDialogActivity.this.a0, strTrim2) && TextUtils.equals(MediaOperateMenuDialogActivity.this.b0, strTrim3)) || TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2) || TextUtils.isEmpty(strTrim3)) {
                this.e.setEnabled(false);
            } else {
                this.e.setEnabled(true);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class d implements ag5.e {
        public final int b;

        public d(int i) {
            this.b = i;
        }

        @Override
        public void k(int i) {
            int i2 = this.b;
            MediaOperateMenuDialogActivity mediaOperateMenuDialogActivity = MediaOperateMenuDialogActivity.this;
            int iD = (i2 - mediaOperateMenuDialogActivity.e0.bottom) - com.transsion.utils.a.d(mediaOperateMenuDialogActivity, 30.0f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) MediaOperateMenuDialogActivity.this.getPanelRootView().getLayoutParams();
            layoutParams.bottomMargin = i <= 0 ? 0 : i - iD;
            MediaOperateMenuDialogActivity.this.getPanelRootView().setLayoutParams(layoutParams);
        }
    }

    public class e implements View.OnClickListener {
        public final OSMaterialEditText b;
        public final OSMaterialEditText c;
        public final OSMaterialEditText d;
        public final boolean e;

        public e(OSMaterialEditText oSMaterialEditText, OSMaterialEditText oSMaterialEditText2, OSMaterialEditText oSMaterialEditText3, boolean z) {
            this.b = oSMaterialEditText;
            this.c = oSMaterialEditText2;
            this.d = oSMaterialEditText3;
            this.e = z;
        }

        @Override
        public void onClick(View view) {
            qy5.b(this.b.getEditText().getText().toString(), this.c.getEditText().getText().toString(), this.d.getEditText().getText().toString(), "playshow");
            if (this.e) {
                MediaOperateMenuDialogActivity.this.v0(new FileOperateItem(R.drawable.ic_more_edit, R.string.audio_edit, 2, true), this.b.getEditText().getText().toString());
            } else {
                MediaOperateMenuDialogActivity.this.t0(this.b.getEditText().getText().toString(), this.c.getEditText().getText().toString(), this.d.getEditText().getText().toString());
            }
        }
    }

    public void C0(View view) {
        popPage();
    }

    public void E0(Boolean bool) {
        if (!bool.booleanValue()) {
            ToastUtils.s(R.string.audio_edit_error_tip);
        } else {
            animateDismiss();
            sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        }
    }

    public static void F0(Throwable th) {
        Log.e("audio_edit", "edit audio file failed, exception = " + th.getMessage());
        ToastUtils.s(R.string.audio_edit_error_tip);
    }

    public static void G0(Editable editable, TextView textView) {
        if (editable.toString().trim().length() >= 50) {
            ToastUtils.s(R.string.over_text_length);
        }
    }

    public static void J0(Context context) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.transsion.tools.activities.SettingActivity");
        intent.setPackage(context.getPackageName());
        intent.addCategory("android.intent.category.DEFAULT");
        context.startActivity(intent);
    }

    public static Intent N0(Context context, MediaItem mediaItem, int i) {
        Intent intent = new Intent();
        intent.putExtra("data", mediaItem);
        intent.putExtra("media_info_type", i);
        intent.setClass(context, MediaOperateMenuDialogActivity.class);
        return intent;
    }

    private void initData() {
        ArrayList arrayList = new ArrayList();
        if (pp3.u) {
            boolean zC = lc3.c(getBaseContext());
            mw2.c = zC;
            arrayList.add(new MediaOperateMenuBean(zC ? R.drawable.ic_operate_dolby_open : R.drawable.ic_operate_dolby_close, getResources().getString(R.string.audio_dolby_sound)));
        } else {
            boolean zD = this.X ? lc3.d() : jrb.c();
            MediaOperateMenuBean mediaOperateMenuBean = new MediaOperateMenuBean(getString(R.string.os_equalizer), getResources().getString(R.string.eq), 0);
            mediaOperateMenuBean.setNeedThemeColor(zD);
            arrayList.add(mediaOperateMenuBean);
        }
        MediaOperateMenuBean mediaOperateMenuBean2 = new MediaOperateMenuBean(getString(R.string.os_alarm_clock), getResources().getString(R.string.play_timer), 0);
        this.U = mediaOperateMenuBean2;
        arrayList.add(mediaOperateMenuBean2);
        if (O0(x0())) {
            Q0();
            P0(true);
        }
        MediaOperateMenuBean mediaOperateMenuBean3 = new MediaOperateMenuBean(getString(R.string.os_Double_speed), getResources().getString(R.string.speed), 0);
        if (L0()) {
            mediaOperateMenuBean3.showDescription = true;
            mediaOperateMenuBean3.description = M0(null);
        }
        arrayList.add(mediaOperateMenuBean3);
        arrayList.add(new MediaOperateMenuBean(getString(R.string.os_share), getResources().getString(R.string.share), 0));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_Audio_channel), getResources().getString(R.string.audio_channel_title), 9));
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_move), getResources().getString(R.string.visha_file_trans), !w6c.c(this, "file_trans_menu_click", false), 13));
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_add), getResources().getString(R.string.add_to_playlist), 2));
        if (!this.X || this.O.isMusicVideo) {
            arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_edit), getResources().getString(R.string.rename), this.O.isMusicVideo ? 1003 : 12));
        } else {
            arrayList2.add(w0());
            arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_ring), getResources().getString(R.string.phone_ringtone), 6));
        }
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_info), getResources().getString(R.string.info), 5));
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_feedback), getResources().getString(R.string.feedback), 10));
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_settings), getResources().getString(R.string.setting), 11));
        arrayList2.add(new MediaOperateMenuBean(getResources().getString(R.string.os_delete), getResources().getString(R.string.delete), 3));
        this.S = new MediaOperateHorizontalAdapter(arrayList);
        this.T = new MediaOperateVerticalAdapter(arrayList2);
        this.Q.setAdapter(this.S);
        this.Q.setLayoutManager(new GridLayoutManager(getBaseContext(), 4));
        this.Q.setItemAnimator(null);
        this.R.setLayoutManager(new LinearLayoutManager(this));
        this.R.setAdapter(this.T);
        A0();
    }

    private void q0(boolean z) {
        if (SmartEditConfigHelper.getSmartEditEnable().booleanValue()) {
            if (this.d0 == null) {
                this.d0 = new AudioSmartEditPageView(this);
            }
            this.d0.setAudioItem(this.P);
            addPage(this.d0).setTitleLayoutVisible(false);
            this.d0.setOnSmartEditPageChangeListener(new b());
            return;
        }
        View viewInflate = View.inflate(this, R.layout.audio_editor_dialog, null);
        OSPageView title = addPage(viewInflate).setTitleLayoutVisible(true).setBackIconVisibility(true).setTitle(R.string.audio_edit);
        title.setCloseIconVisibility(false);
        title.setOnTitleBackIconClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.C0(view);
            }
        });
        z0(viewInflate, z);
    }

    public void t0(final String str, final String str2, final String str3) {
        AudioItem audioItem = this.P;
        if (audioItem != null && TextUtils.equals(audioItem.displayName, str) && TextUtils.equals(this.P.artistName, str2) && TextUtils.equals(this.P.albumName, str3)) {
            return;
        }
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.D0(str2, str3, str, (MediaOperateMenuDialogActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.E0((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                MediaOperateMenuDialogActivity.F0((Throwable) obj);
            }
        });
    }

    private float y0() {
        return this.X ? w6c.b(this) : w6c.i(this);
    }

    private void z0(View view, boolean z) {
        OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) view.findViewById(R.id.et_title);
        OSMaterialEditText.c cVar = new OSMaterialEditText.c() {
            @Override
            public final void a(Editable editable, TextView textView) {
                MediaOperateMenuDialogActivity.G0(editable, textView);
            }
        };
        oSMaterialEditText.setInputNum(50, cVar);
        oSMaterialEditText.getEditText().setText(this.P.displayName);
        int i = R.id.et_artist;
        OSMaterialEditText oSMaterialEditText2 = (OSMaterialEditText) view.findViewById(i);
        oSMaterialEditText2.setInputNum(50, cVar);
        oSMaterialEditText2.getEditText().setText(this.P.artistName);
        int i2 = R.id.et_album;
        OSMaterialEditText oSMaterialEditText3 = (OSMaterialEditText) view.findViewById(i2);
        oSMaterialEditText3.setInputNum(50, cVar);
        oSMaterialEditText3.getEditText().setText(this.P.albumName);
        if (z) {
            view.findViewById(R.id.tv_artist).setVisibility(8);
            view.findViewById(i).setVisibility(8);
            view.findViewById(R.id.tv_album).setVisibility(8);
            view.findViewById(i2).setVisibility(8);
        }
        final TextView textView = (TextView) view.findViewById(R.id.tv_save);
        if (!b39.b(this)) {
            textView.setWidth(com.transsion.utils.a.d(this, com.transsion.utils.a.m(this) > com.transsion.utils.a.l(this) ? 216.0f : 184.0f));
        }
        c cVar2 = new c(oSMaterialEditText, oSMaterialEditText2, oSMaterialEditText3, textView);
        oSMaterialEditText.getEditText().addTextChangedListener(cVar2);
        oSMaterialEditText2.getEditText().addTextChangedListener(cVar2);
        oSMaterialEditText3.getEditText().addTextChangedListener(cVar2);
        int iL = com.transsion.utils.a.l(getBaseContext());
        textView.postDelayed(new Runnable() {
            @Override
            public void run() {
                textView.getGlobalVisibleRect(MediaOperateMenuDialogActivity.this.e0);
            }
        }, 200L);
        ag5.k(this, new d(iL));
        textView.setOnClickListener(new e(oSMaterialEditText, oSMaterialEditText2, oSMaterialEditText3, z));
        this.Z = oSMaterialEditText.getEditText().getText().toString().trim();
        this.a0 = oSMaterialEditText2.getEditText().getText().toString().trim();
        this.b0 = oSMaterialEditText3.getEditText().getText().toString().trim();
    }

    public final void A0() {
        if (this.Y == null) {
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this, PlayAudioListData.getInstance().playMediaItem());
            fileOperateUtils.e0(true);
            fileOperateUtils.f0(new a());
        }
    }

    public final void B0() {
        MediaOperateHorizontalAdapter mediaOperateHorizontalAdapter = this.S;
        if (mediaOperateHorizontalAdapter != null) {
            mediaOperateHorizontalAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.H0(baseQuickAdapter, view, i);
                }
            });
        }
        MediaOperateVerticalAdapter mediaOperateVerticalAdapter = this.T;
        if (mediaOperateVerticalAdapter != null) {
            mediaOperateVerticalAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.I0(baseQuickAdapter, view, i);
                }
            });
        }
    }

    public final Boolean D0(String str, String str2, String str3, MediaOperateMenuDialogActivity mediaOperateMenuDialogActivity) throws InvalidAudioFrameException, CannotReadException, CannotWriteException, IOException, TagException, ReadOnlyFileException {
        AudioFile audioFile = AudioFileIO.read(new File(this.P.data));
        boolean zD = ul.d(audioFile, FieldKey.ARTIST, str, this.P.artistName);
        boolean zD2 = ul.d(audioFile, FieldKey.ALBUM, str2, this.P.albumName);
        boolean zD3 = ul.d(audioFile, FieldKey.TITLE, str3, this.P.displayName);
        if (!zD && !zD2 && !zD3) {
            return Boolean.FALSE;
        }
        AudioFileIO.write(audioFile);
        return Boolean.TRUE;
    }

    public final void H0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i == 0) {
            p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "audio_play_equalizer_cl");
            s0(7);
            return;
        }
        if (i == 1) {
            p06.o0("vd_audio_more_pop_cl", hb0.KEY_NAME_BTN, "audio_play_more_timer_cl");
            s0(1);
        } else if (i == 2) {
            p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "audio_speed");
            s0(8);
        } else if (i != 3) {
            animateDismiss();
        } else {
            p06.o0("vd_audio_more_pop_cl", hb0.KEY_NAME_BTN, "audio_play_more_share_cl");
            K0();
        }
    }

    public final void I0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaOperateMenuBean mediaOperateMenuBean = this.T.getData().get(i);
        if (mediaOperateMenuBean != null) {
            int i2 = mediaOperateMenuBean.flagId;
            if (i2 == 2) {
                p06.h0("audio_play_addlist");
                p06.o0("vd_audio_more_pop_cl", hb0.KEY_NAME_BTN, "audio_play_more_addlist_cl");
                s0(2);
                return;
            }
            if (i2 == 3) {
                kz5.c(this.O.isMusicVideo);
                FileOperateUtils fileOperateUtils = this.Y;
                if (fileOperateUtils != null) {
                    fileOperateUtils.p = "audioplay";
                }
                s0(3);
                return;
            }
            if (i2 == 4) {
                u0();
                return;
            }
            if (i2 == 5) {
                s0(5);
                return;
            }
            if (i2 == 6) {
                s0(6);
                return;
            }
            if (i2 == 1003) {
                s0(1003);
                return;
            }
            switch (i2) {
                case 9:
                    p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "output_switch");
                    gt.b(this);
                    animateDismiss();
                    return;
                case 10:
                    if (this.X) {
                        r0();
                    } else {
                        R0();
                    }
                    animateDismiss();
                    return;
                case 11:
                    s0(11);
                    return;
                case 12:
                    s0(12);
                    return;
                case 13:
                    h27.c().e(1173, this.O);
                    w6c.r(this, "file_trans_menu_click", true);
                    MarkFileTransferInfo.a.m(this.X ? "vd_audio" : "vd_video");
                    break;
            }
            animateDismiss();
        }
    }

    public final void K0() {
        MediaItem mediaItem = this.O;
        if (mediaItem == null) {
            return;
        }
        rr3.a(mediaItem.mineType, mediaItem.getUri(), this);
        p06.f0(null, "vd_share_menu_cl", 932460000044L);
        animateDismiss();
    }

    public final boolean L0() {
        return y0() != 1.0f;
    }

    public final String M0(Float f) {
        float fY0 = f == null ? y0() : f.floatValue();
        if (fY0 == 1.0f) {
            return "";
        }
        return fY0 + getResources().getString(R.string.speed_icon);
    }

    public boolean O0(long j) {
        return j > 1000;
    }

    public void P0(boolean z) {
        this.W.removeCallbacks(this.V);
        if (z) {
            this.W.postDelayed(this.V, 1000L);
        }
    }

    public final void Q0() {
        long jX0 = x0();
        this.U.description = wna.c(jX0);
        this.U.showDescription = O0(jX0);
        MediaOperateHorizontalAdapter mediaOperateHorizontalAdapter = this.S;
        if (mediaOperateHorizontalAdapter != null) {
            mediaOperateHorizontalAdapter.notifyItemChanged(1);
            Log.i("MediaOperateMenuDialogActivity", "updateTimerView: " + this.U.description);
        }
    }

    public final void R0() {
        String strSubstring;
        String str;
        MediaItem mediaItem = this.O;
        if (mediaItem == null || (str = mediaItem.data) == null || str.lastIndexOf(Consts.DOT) == -1) {
            strSubstring = "youtube";
        } else {
            String str2 = this.O.data;
            strSubstring = str2.substring(str2.lastIndexOf(Consts.DOT) + 1);
        }
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        } else {
            VishaFeedbackPage.e(this, getResources().getString(R.string.feedback), 1, strSubstring);
        }
        ez5.b("vd_playshow");
    }

    @Override
    public void initView() {
        super.initView();
        MediaItem mediaItem = (MediaItem) getIntent().getParcelableExtra("data");
        this.O = mediaItem;
        if (mediaItem == null) {
            LogUtils.m("MediaOperateMenuDialogActivity", "mediaItem is null");
            finish();
            return;
        }
        boolean z = getIntent().getIntExtra("media_info_type", 0) == 1;
        this.X = z;
        if (z) {
            this.P = (AudioItem) this.O;
        }
        View viewInflate = View.inflate(this, R.layout.dialog_media_more_sheet, null);
        this.N = viewInflate;
        this.Q = (RecyclerView) viewInflate.findViewById(R.id.rv_operate_list_horizontal);
        this.R = (RecyclerView) this.N.findViewById(R.id.rv_operate_list_vertical);
        addPage(this.N).showTitle(false).setCloseIconVisibility(false);
        TextView textView = (TextView) this.N.findViewById(R.id.tv_title);
        if (textView != null) {
            textView.setText(this.O.getDisplayName());
        }
        initData();
        B0();
        this.c0 = isInMultiWindowMode();
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2001 || intent == null || intent.getData() == null) {
            return;
        }
        final Uri data = intent.getData();
        TaskExecutor.c(new TaskExecutor.Task<Object>() {
            @Override
            public Object onBackground() throws Throwable {
                String strB = jy7.b(MediaOperateMenuDialogActivity.this, data);
                LogUtils.j("MediaOperateMenuDialogActivity", "selected cover path = " + strB);
                if (MediaOperateMenuDialogActivity.this.d0 != null) {
                    MediaOperateMenuDialogActivity.this.d0.onPhotoSelected(strB);
                }
                return strB;
            }

            @Override
            public void onResult(Object obj) {
                super.onResult(obj);
            }
        });
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        MediaOperateVerticalAdapter mediaOperateVerticalAdapter = this.T;
        if (mediaOperateVerticalAdapter != null) {
            mediaOperateVerticalAdapter.release();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (isInMultiWindowMode() || this.c0 != isInMultiWindowMode()) {
            Log.w("MediaOperateMenuDialogActivity", "onConfigurationChanged config:" + configuration);
            ((View) this.N.getParent().getParent().getParent().getParent().getParent()).setVisibility(4);
            recreate();
        }
        this.c0 = isInMultiWindowMode();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.W.removeCallbacks(this.V);
    }

    public final void r0() {
        String strSubstring = (PlayAudioListData.getInstance().playMediaItem() == null || PlayAudioListData.getInstance().playMediaItem().data == null || PlayAudioListData.getInstance().playMediaItem().data.lastIndexOf(Consts.DOT) == -1) ? "" : PlayAudioListData.getInstance().playMediaItem().data.substring(PlayAudioListData.getInstance().playMediaItem().data.lastIndexOf(Consts.DOT) + 1);
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        } else {
            VishaFeedbackPage.e(this, getResources().getString(R.string.feedback), 2, strSubstring);
        }
        ez5.b("au_playshow");
    }

    public final void s0(int i) {
        Intent intent = new Intent();
        intent.putExtra("action_flag", i);
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.O);
        setResult(-1, intent);
        animateDismiss();
    }

    public final void u0() {
        if ((!pp3.j ? nx8.m(this.O.data) ^ true : true) && ul.c((AudioItem) this.O)) {
            q0(false);
            hb0.markTrackTwo("vd_vmore_edit_pop", "from", "playshow", hb0.KEY_NAME_FILE_TYPE, this.O.isMusicVideo ? "mv" : "audio");
        } else {
            ToastUtils.s(R.string.audio_format_not_support_edit);
        }
        hb0.markDirect("vd_vmore_edit_cl");
        p06.o0("vd_audio_more_pop_cl", hb0.KEY_NAME_BTN, "audio_play_more_edit_cl");
    }

    public final void v0(FileOperateItem fileOperateItem, String str) {
        if (!TextUtils.equals(str, this.P.displayName)) {
            Intent intent = new Intent();
            intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
            intent.putExtra("action_flag", 4);
            intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.P);
            intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_RENAME_DATA, str);
            setResult(-1, intent);
        }
        animateDismiss();
    }

    public final MediaOperateMenuBean w0() {
        Resources resources;
        int i;
        if (!pp3.E) {
            return new MediaOperateMenuBean(getResources().getString(R.string.os_edit), getResources().getString(R.string.rename), this.O.isMusicVideo ? 1003 : 12);
        }
        String string = getResources().getString(R.string.os_edit);
        if (SmartEditConfigHelper.getSmartEditEnable().booleanValue()) {
            resources = getResources();
            i = R.string.visha_smart_edit;
        } else {
            resources = getResources();
            i = R.string.audio_edit;
        }
        return new MediaOperateMenuBean(string, resources.getString(i), 4);
    }

    public long x0() {
        return (this.X ? w6c.e(this, "music_timer", 0L) : w6c.l(this)) - System.currentTimeMillis();
    }
}
