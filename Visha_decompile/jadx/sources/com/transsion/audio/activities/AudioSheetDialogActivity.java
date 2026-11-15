package com.transsion.audio.activities;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.widgets.AudioPlayListAddBucketView;
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
import com.transsion.dbdata.markpoint.MarkFileTransferInfo;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.FileOperateMenuAdapter;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.playercommon.widgets.AudioSmartEditPageView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.ag5;
import defpackage.ao;
import defpackage.b39;
import defpackage.bs8;
import defpackage.cd;
import defpackage.da7;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.jy7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.ox8;
import defpackage.p06;
import defpackage.p10;
import defpackage.pp3;
import defpackage.qy5;
import defpackage.t74;
import defpackage.ul;
import defpackage.uy5;
import defpackage.vb;
import defpackage.vg9;
import defpackage.w6c;
import defpackage.zf1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AudioSheetDialogActivity extends RxPermissionOSBottomSheetDialog implements BaseQuickAdapter.OnItemClickListener, SheetDialogParamsConstant {
    public AudioItem N;
    public ArrayList O;
    public int P;
    public List R;
    public FileOperateMenuAdapter T;
    public View U;
    public AudioSmartEditPageView Z;
    public boolean b0;
    public boolean c0;
    public Bundle d0;
    public String Q = "";
    public List S = new ArrayList();
    public Rect V = new Rect();
    public String W = null;
    public String X = null;
    public String Y = null;
    public final boolean a0 = pp3.m();

    public class a implements AudioSmartEditPageView.j {
        public a() {
        }

        @Override
        public void a() {
            AudioSheetDialogActivity.this.popPage();
        }

        @Override
        public void b() {
            AudioSheetDialogActivity.this.A0(new FileOperateItem(0, 0, 16));
            AudioSheetDialogActivity.this.animateDismiss();
        }
    }

    public class b implements OSMaterialEditText.c {
        public b() {
        }

        @Override
        public void a(Editable editable, TextView textView) {
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
            if ((TextUtils.equals(AudioSheetDialogActivity.this.W, strTrim) && TextUtils.equals(AudioSheetDialogActivity.this.X, strTrim2) && TextUtils.equals(AudioSheetDialogActivity.this.Y, strTrim3)) || TextUtils.isEmpty(strTrim) || TextUtils.isEmpty(strTrim2) || TextUtils.isEmpty(strTrim3)) {
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
            AudioSheetDialogActivity audioSheetDialogActivity = AudioSheetDialogActivity.this;
            int iD = (i2 - audioSheetDialogActivity.V.bottom) - com.transsion.utils.a.d(audioSheetDialogActivity, 30.0f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) AudioSheetDialogActivity.this.getPanelRootView().getLayoutParams();
            layoutParams.bottomMargin = i <= 0 ? 0 : i - iD;
            AudioSheetDialogActivity.this.getPanelRootView().setLayoutParams(layoutParams);
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
            qy5.b(this.b.getEditText().getText().toString(), this.c.getEditText().getText().toString(), this.d.getEditText().getText().toString(), "list");
            if (this.e) {
                AudioSheetDialogActivity.this.B0(new FileOperateItem(R.drawable.ic_more_edit, R.string.audio_edit, 2, true), this.b.getEditText().getText().toString());
            } else {
                AudioSheetDialogActivity.this.E0(this.b.getEditText().getText().toString(), this.c.getEditText().getText().toString(), this.d.getEditText().getText().toString());
            }
        }
    }

    public void N0(View view) {
        popPage();
    }

    public void O0(View view) {
        animateDismiss();
    }

    public static void R0(Throwable th) {
        Log.e("audio_edit", "editAudioFile failed error:" + th.getMessage());
        ToastUtils.s(com.transsion.playercommon.R.string.audio_edit_error_tip);
    }

    public static void V0(Editable editable, TextView textView) {
        if (editable.toString().trim().length() >= 50) {
            ToastUtils.s(R.string.over_text_length);
        }
    }

    public final void A0(FileOperateItem fileOperateItem) {
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.N);
        intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, MediaItem.MediaType.AUDIO.toString());
        setResult(-1, intent);
        animateDismiss();
    }

    public final void B0(FileOperateItem fileOperateItem, String str) {
        Intent intent = new Intent();
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.N);
        intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_RENAME_DATA, str);
        intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, MediaItem.MediaType.AUDIO.toString());
        setResult(-1, intent);
        animateDismiss();
    }

    public final boolean C0() {
        return this.N != null;
    }

    public final boolean D0() {
        ArrayList arrayList = this.O;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public final void E0(final String str, final String str2, final String str3) {
        AudioItem audioItem = this.N;
        if (audioItem != null && TextUtils.equals(audioItem.displayName, str) && TextUtils.equals(this.N.artistName, str2) && TextUtils.equals(this.N.albumName, str3)) {
            return;
        }
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.P0(str2, str3, str, (AudioSheetDialogActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q0((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioSheetDialogActivity.R0((Throwable) obj);
            }
        });
    }

    public void F0(final Activity activity, final AudioItem audioItem, final int i, final List list, final FileOperateMenuAdapter fileOperateMenuAdapter) {
        final boolean zC0 = ao.U().c0(false, audioItem);
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.U0(zC0, audioItem, activity, list, i, fileOperateMenuAdapter);
            }
        });
        p06.u0(!zC0 ? 1 : 0, audioItem.isMusicVideo ? "mv" : "audio", "audiolist");
    }

    public int G0() {
        int i = this.P;
        if (i != 1) {
            return (i == 30 || i == 32 || i == 33) ? com.transsion.playercommon.R.drawable.ic_remove : com.transsion.playercommon.R.drawable.ic_delete;
        }
        return com.transsion.playercommon.R.drawable.ic_delete_all;
    }

    public int H0() {
        int i = this.P;
        if (i != 1) {
            return (i == 30 || i == 32 || i == 33) ? com.transsion.playercommon.R.string.remove : com.transsion.playercommon.R.string.delete;
        }
        return com.transsion.playercommon.R.string.clear;
    }

    public final FileOperateItem I0(MediaItem mediaItem, boolean z) {
        if (mediaItem.isMusicVideo) {
            FileOperateItem fileOperateItem = new FileOperateItem(com.transsion.playercommon.R.drawable.ic_rename, com.transsion.playercommon.R.string.rename, 1003, z);
            fileOperateItem.setIconText(com.transsion.playercommon.R.string.os_edit);
            return fileOperateItem;
        }
        int i = 2;
        if (!pp3.E) {
            FileOperateItem fileOperateItem2 = new FileOperateItem(com.transsion.playercommon.R.drawable.ic_rename, com.transsion.playercommon.R.string.rename, 2, z);
            fileOperateItem2.setIconText(com.transsion.playercommon.R.string.os_edit);
            return fileOperateItem2;
        }
        boolean z2 = false;
        boolean z3 = z && ul.c((AudioItem) mediaItem);
        boolean zBooleanValue = SmartEditConfigHelper.getSmartEditEnable().booleanValue();
        int i2 = R.drawable.ic_more_edit;
        int i3 = zBooleanValue ? com.transsion.playercommon.R.string.visha_smart_edit : R.string.audio_edit;
        if (!z3) {
            i = 15;
        } else if (zBooleanValue) {
            i = 16;
        }
        if (z3 && !mediaItem.isMusicVideo) {
            z2 = true;
        }
        FileOperateItem fileOperateItem3 = new FileOperateItem(i2, i3, i, z2);
        fileOperateItem3.setIconText(com.transsion.playercommon.R.string.os_edit);
        return fileOperateItem3;
    }

    public final List J0(MediaItem mediaItem) {
        ArrayList arrayList = new ArrayList();
        if (this.P == 36) {
            FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_filter, R.string.visha_file_not_filter, 14);
            fileOperateItem.setIconText(com.transsion.playercommon.R.string.os_add);
            arrayList.add(fileOperateItem);
        }
        boolean zC0 = ao.U().c0(false, (AudioItem) mediaItem);
        if (this.P == 35) {
            FileOperateItem fileOperateItem2 = new FileOperateItem(com.transsion.playercommon.R.drawable.ic_download_menu_origin_site, com.transsion.playercommon.R.string.origin_site, 11);
            fileOperateItem2.setIconText(com.transsion.playercommon.R.string.os_network);
            arrayList.add(fileOperateItem2);
        }
        FileOperateItem fileOperateItem3 = new FileOperateItem(R.drawable.ic_share, R.string.share, 4);
        fileOperateItem3.setIconText(com.transsion.playercommon.R.string.os_share);
        boolean z = !pp3.j ? !ox8.a(mediaItem.data) : true;
        if (this.P != 36) {
            FileOperateItem fileOperateItem4 = new FileOperateItem(R.drawable.ic_play_next, R.string.play_next, 8);
            fileOperateItem4.setIconText(com.transsion.playercommon.R.string.os_sort);
            arrayList.add(fileOperateItem4);
            FileOperateItem fileOperateItem5 = new FileOperateItem(R.drawable.ic_play_later, R.string.play_later, 9);
            fileOperateItem5.setIconText(com.transsion.playercommon.R.string.os_Counter_rotation);
            arrayList.add(fileOperateItem5);
            FileOperateItem fileOperateItem6 = new FileOperateItem(com.transsion.playercommon.R.drawable.ic_file_trans, com.transsion.playercommon.R.string.visha_file_trans, !w6c.c(this, "file_trans_menu_click", false), 17);
            fileOperateItem6.setIconText(com.transsion.playercommon.R.string.os_move);
            arrayList.add(fileOperateItem6);
            arrayList.add(new FileOperateItem(zC0 ? R.drawable.ic_farvorited_on : R.drawable.ic_farvorite, zC0 ? com.transsion.playercommon.R.string.unfavorite : R.string.favorites, 7));
            arrayList.add(fileOperateItem3);
            if (!bs8.a(getApplicationContext())) {
                FileOperateItem fileOperateItem7 = new FileOperateItem(R.drawable.ic_add_song, R.string.add_to, 3);
                fileOperateItem7.setHasSubPage(true);
                fileOperateItem7.setSubTitle(getString(com.transsion.playercommon.R.string.add_to));
                fileOperateItem7.setIconText(com.transsion.playercommon.R.string.os_add);
                arrayList.add(fileOperateItem7);
            }
            arrayList.add(I0(mediaItem, z));
            FileOperateItem fileOperateItem8 = new FileOperateItem(R.drawable.ic_filter, mediaItem.isMusicVideo ? R.string.visha_remove_audio_playlist : com.transsion.playercommon.R.string.visha_file_filter, 13);
            fileOperateItem8.setIconText(com.transsion.playercommon.R.string.os_filter);
            arrayList.add(fileOperateItem8);
        } else {
            arrayList.add(fileOperateItem3);
            arrayList.add(I0(mediaItem, z));
        }
        FileOperateItem fileOperateItem9 = new FileOperateItem(R.drawable.ic_info, R.string.info, 6);
        fileOperateItem9.setIconText(com.transsion.playercommon.R.string.os_info);
        arrayList.add(fileOperateItem9);
        int i = this.P;
        if (i != 33 && i != 41) {
            FileOperateItem fileOperateItem10 = new FileOperateItem(G0(), H0(), 5, z);
            Z0(fileOperateItem10);
            arrayList.add(fileOperateItem10);
        }
        int i2 = this.P;
        if (i2 == 33 || i2 == 41 || i2 == 30) {
            FileOperateItem fileOperateItem11 = new FileOperateItem(com.transsion.playercommon.R.drawable.ic_delete, com.transsion.playercommon.R.string.delete, 12, z);
            fileOperateItem11.setIconText(com.transsion.playercommon.R.string.os_delete);
            arrayList.add(fileOperateItem11);
        }
        return arrayList;
    }

    public final void K0(View view, boolean z) {
        final OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) view.findViewById(R.id.et_title);
        oSMaterialEditText.getEditText().setText(this.N.displayName);
        int i = R.id.et_artist;
        final OSMaterialEditText oSMaterialEditText2 = (OSMaterialEditText) view.findViewById(i);
        oSMaterialEditText2.getEditText().setText(this.N.artistName);
        int i2 = R.id.et_album;
        final OSMaterialEditText oSMaterialEditText3 = (OSMaterialEditText) view.findViewById(i2);
        oSMaterialEditText3.getEditText().setText(this.N.albumName);
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
        oSMaterialEditText.setInputNum(50, new b());
        final OSMaterialEditText.c cVar = new OSMaterialEditText.c() {
            @Override
            public final void a(Editable editable, TextView textView2) {
                AudioSheetDialogActivity.V0(editable, textView2);
            }
        };
        ThreadUtils.t(new Runnable() {
            @Override
            public void run() {
                oSMaterialEditText.setInputNum(50, cVar);
                oSMaterialEditText2.setInputNum(50, cVar);
                oSMaterialEditText3.setInputNum(50, cVar);
            }
        }, 500L);
        c cVar2 = new c(oSMaterialEditText, oSMaterialEditText2, oSMaterialEditText3, textView);
        oSMaterialEditText.getEditText().addTextChangedListener(cVar2);
        oSMaterialEditText2.getEditText().addTextChangedListener(cVar2);
        oSMaterialEditText3.getEditText().addTextChangedListener(cVar2);
        int iL = com.transsion.utils.a.l(getBaseContext());
        textView.postDelayed(new Runnable() {
            @Override
            public void run() {
                textView.getGlobalVisibleRect(AudioSheetDialogActivity.this.V);
            }
        }, 200L);
        ag5.k(this, new d(iL));
        textView.setOnClickListener(new e(oSMaterialEditText, oSMaterialEditText2, oSMaterialEditText3, z));
        this.W = oSMaterialEditText.getEditText().getText().toString().trim();
        this.X = oSMaterialEditText2.getEditText().getText().toString().trim();
        this.Y = oSMaterialEditText3.getEditText().getText().toString().trim();
    }

    public final View L0() {
        View viewInflate = View.inflate(this, com.transsion.playercommon.R.layout.layout_bottom_dialog_menu_recyclerview, null);
        this.U = viewInflate;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.transsion.playercommon.R.id.rv_content);
        FileOperateMenuAdapter fileOperateMenuAdapter = new FileOperateMenuAdapter(this);
        this.T = fileOperateMenuAdapter;
        recyclerView.setAdapter(fileOperateMenuAdapter);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this));
        OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        this.S.clear();
        this.S.addAll(J0(this.N));
        this.T.setNewData(this.S);
        this.T.setOnItemClickListener(this);
        return this.U;
    }

    public final void M0(View view) {
        popPage();
    }

    public final Boolean P0(String str, String str2, String str3, AudioSheetDialogActivity audioSheetDialogActivity) throws InvalidAudioFrameException, CannotReadException, CannotWriteException, IOException, TagException, ReadOnlyFileException {
        AudioFile audioFile = AudioFileIO.read(new File(this.N.data));
        boolean zD = ul.d(audioFile, FieldKey.ARTIST, str, this.N.artistName);
        boolean zD2 = ul.d(audioFile, FieldKey.ALBUM, str2, this.N.albumName);
        boolean zD3 = ul.d(audioFile, FieldKey.TITLE, str3, this.N.displayName);
        if (!zD && !zD2 && !zD3) {
            return Boolean.FALSE;
        }
        AudioFileIO.write(audioFile);
        return Boolean.TRUE;
    }

    public final void Q0(Boolean bool) {
        if (!bool.booleanValue()) {
            ToastUtils.s(com.transsion.playercommon.R.string.audio_edit_error_tip);
        } else {
            animateDismiss();
            sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        }
    }

    public final void S0(FileOperateMenuAdapter fileOperateMenuAdapter, boolean z, Activity activity) {
        if (fileOperateMenuAdapter.g() != null) {
            if (z) {
                cd.i(fileOperateMenuAdapter.g());
            } else {
                cd.g(activity, fileOperateMenuAdapter.g());
            }
        }
        if (this.P == 33) {
            animateDismiss();
        }
    }

    public final void T0(List list, int i, final boolean z, final FileOperateMenuAdapter fileOperateMenuAdapter, final Activity activity) {
        ((FileOperateItem) list.get(i)).setImageResId(!z ? com.transsion.playercommon.R.drawable.ic_farvorited_on : com.transsion.playercommon.R.drawable.ic_farvorite);
        ((FileOperateItem) list.get(i)).setTextResId(!z ? com.transsion.playercommon.R.string.unfavorite : R.string.favorites);
        fileOperateMenuAdapter.notifyItemChanged(i);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.S0(fileOperateMenuAdapter, z, activity);
            }
        }, 300L);
    }

    public final void U0(final boolean z, AudioItem audioItem, final Activity activity, final List list, final int i, final FileOperateMenuAdapter fileOperateMenuAdapter) {
        ao.U().l0(!z, audioItem);
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.T0(list, i, z, fileOperateMenuAdapter, activity);
                }
            });
        }
        h27.c().e(1055, new Object[0]);
        h27.c().e(1107, audioItem.data);
        h27.c().e(1054, Integer.valueOf(i), Boolean.valueOf(z));
    }

    public final void W0(Bundle bundle) {
        this.Z.restoreEditDraft(bundle);
    }

    public final void X0(int i) {
        AudioSmartEditPageView audioSmartEditPageView = this.Z;
        if (audioSmartEditPageView != null) {
            audioSmartEditPageView.onKeyboardHeightChanged(i);
        }
    }

    public final void Y0() {
        if (this.a0) {
            View panelRootView = getPanelRootView();
            if (panelRootView != null && (panelRootView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) panelRootView.getLayoutParams();
                if (layoutParams.bottomMargin != 0) {
                    layoutParams.bottomMargin = 0;
                    panelRootView.setLayoutParams(layoutParams);
                }
            }
            ag5.k(this, new ag5.e() {
                @Override
                public final void k(int i) {
                    this.b.X0(i);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0012  */
    public final void Z0(FileOperateItem fileOperateItem) {
        int i = this.P;
        if (i == 1) {
            fileOperateItem.setIconText(com.transsion.playercommon.R.string.os_delete);
        } else if (i != 30) {
            if (i == 32) {
                fileOperateItem.setIconText(com.transsion.playercommon.R.string.os_delete);
            } else if (i != 33) {
                return;
            }
        }
        fileOperateItem.setIconText(com.transsion.playercommon.R.string.os_Remove);
    }

    @Override
    public boolean addSoftKeyboardAnim() {
        return !this.a0 ? super.addSoftKeyboardAnim() : !AudioSmartEditPageView.needLargeScreenImeAdapt(this);
    }

    @Override
    public void initView() {
        super.initView();
        Intent intent = getIntent();
        this.N = (AudioItem) intent.getParcelableExtra("data");
        this.O = intent.getIntegerArrayListExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS);
        this.P = intent.getIntExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 0);
        boolean booleanExtra = intent.getBooleanExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
        if (intent.hasExtra(SheetDialogParamsConstant.FROM_PAGE)) {
            this.Q = intent.getStringExtra(SheetDialogParamsConstant.FROM_PAGE);
        }
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        arrayList.addAll(vg9.a());
        if (booleanExtra) {
            if (C0()) {
                x0();
            }
        } else if (D0()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(vg9.b());
            try {
                z0(getString(com.transsion.playercommon.R.string.add_to), false, false, (AudioItem[]) arrayList2.toArray(new AudioItem[arrayList2.size()]));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (C0()) {
            z0(getString(com.transsion.playercommon.R.string.add_to), false, false, this.N);
        }
        if (this.a0) {
            this.b0 = b39.b(this);
            if (this.c0 && C0()) {
                this.c0 = false;
                y0(false);
            }
        }
    }

    @Override
    public boolean isFixedHeight() {
        return true;
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
                String strB = jy7.b(AudioSheetDialogActivity.this, data);
                LogUtils.j("RxPermissionOSBottomSheetDialog", "selected cover path = " + strB);
                if (AudioSheetDialogActivity.this.Z != null) {
                    AudioSheetDialogActivity.this.Z.onPhotoSelected(strB);
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
        FileOperateMenuAdapter fileOperateMenuAdapter = this.T;
        if (fileOperateMenuAdapter != null) {
            fileOperateMenuAdapter.release();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        boolean zB;
        super.onConfigurationChanged(configuration);
        if (this.a0 && (zB = b39.b(this)) != this.b0) {
            this.b0 = zB;
            ag5.l(this);
            recreate();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        if (this.a0 && bundle != null) {
            this.c0 = bundle.getBoolean("state_smart_edit_open", false);
            this.d0 = bundle.getBundle("state_smart_edit_draft");
        }
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        LiveEventBus liveEventBusB = LiveEventBus.b();
        Boolean bool = Boolean.TRUE;
        liveEventBusB.c("audio_sheet_dialog_destroy", bool);
        LiveEventBus.b().c("video_sheet_dialog_destroy", bool);
        ag5.l(this);
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        FileOperateItem fileOperateItem = (FileOperateItem) view.getTag();
        if (this.P == 36) {
            uy5.j(fileOperateItem.getFlag());
        }
        if (fileOperateItem.getFlag() == 3) {
            if (fileOperateItem.hasSubPage()) {
                z0(fileOperateItem.getSubTitle(), true, false, this.N);
            }
            p06.c0("audio", "vd_vmore_addlist_cl", 9324L);
            return;
        }
        if (fileOperateItem.getFlag() == 7) {
            F0(this, this.N, i, this.S, this.T);
            return;
        }
        if (pp3.E && (fileOperateItem.getFlag() == 1003 || fileOperateItem.getFlag() == 2)) {
            hb0.markTrackTwo("vd_vmore_edit_pop", "from", "playshow", hb0.KEY_NAME_FILE_TYPE, this.N.isMusicVideo ? "mv" : "audio");
            if (!this.N.isMusicVideo) {
                hb0.markDirect("vd_vmore_edit_cl");
                y0(false);
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, fileOperateItem.getFlag());
            intent.putExtra(SheetDialogParamsConstant.OUT_PARAM_DATA, this.N);
            AudioItem audioItem = this.N;
            if (audioItem != null) {
                intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, audioItem.type.toString());
            }
            setResult(-1, intent);
            animateDismiss();
            return;
        }
        if (fileOperateItem.getFlag() == 13) {
            AudioFilterUtils.j(this.N.data);
            hb0.markTrackSingle("vd_vmore_filt_cl", hb0.KEY_NAME_FILE_TYPE, this.N.isMusicVideo ? "mv" : "audio");
            A0(fileOperateItem);
            h27.c().e(1109, new Object[0]);
            return;
        }
        if (fileOperateItem.getFlag() == 14) {
            AudioFilterUtils.h(this.N.data);
            animateDismiss();
            h27.c().e(1109, new Object[0]);
            return;
        }
        if (fileOperateItem.getFlag() == 15) {
            p10.a();
            return;
        }
        if (fileOperateItem.getFlag() == 16) {
            hb0.markDirect("vd_vmore_edit_cl");
            h27.c().e(1170, this.N);
            AudioItem audioItem2 = this.N;
            final boolean z = audioItem2 != null && audioItem2.isMusicVideo;
            getWindow().getDecorView().postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (AudioSheetDialogActivity.this.isFinishing()) {
                        return;
                    }
                    AudioSheetDialogActivity.this.y0(false);
                    hb0.markTrackTwo("vd_vmore_edit_pop", "from", "list", hb0.KEY_NAME_FILE_TYPE, z ? "mv" : "audio");
                }
            }, 320L);
            return;
        }
        if (fileOperateItem.getFlag() != 17) {
            A0(fileOperateItem);
            return;
        }
        h27.c().e(1173, this.N);
        w6c.r(this, "file_trans_menu_click", true);
        animateDismiss();
        MarkFileTransferInfo.a.m("vd_audio");
    }

    @Override
    public void onPostCreate(Bundle bundle) {
        AudioSmartEditPageView audioSmartEditPageView;
        final Bundle bundle2;
        super.onPostCreate(bundle);
        if (!this.a0 || (audioSmartEditPageView = this.Z) == null || (bundle2 = this.d0) == null) {
            return;
        }
        this.d0 = null;
        audioSmartEditPageView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.W0(bundle2);
            }
        });
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!this.a0 || this.Z == null) {
            return;
        }
        bundle.putBoolean("state_smart_edit_open", true);
        Bundle bundle2 = new Bundle();
        this.Z.saveEditDraft(bundle2);
        bundle.putBundle("state_smart_edit_draft", bundle2);
    }

    public final void x0() {
        OSPageView oSPageViewAddPage = addPage(L0());
        oSPageViewAddPage.setTitle(this.N.displayName).setCloseIconVisibility(false);
        da7.a(oSPageViewAddPage);
    }

    public final void y0(boolean z) {
        if (!SmartEditConfigHelper.getSmartEditEnable().booleanValue()) {
            View viewInflate = View.inflate(this, R.layout.audio_editor_dialog, null);
            K0(viewInflate, z);
            OSPageView title = addPage(viewInflate).setTitleLayoutVisible(true).setBackIconVisibility(true).setTitle(com.transsion.playercommon.R.string.audio_edit);
            title.setCloseIconVisibility(false);
            title.setOnTitleBackIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.M0(view);
                }
            });
            return;
        }
        if (this.Z == null) {
            this.Z = new AudioSmartEditPageView(this);
        }
        addPage(this.Z).setTitleLayoutVisible(false);
        this.Z.setOnSmartEditPageChangeListener(new a());
        if (AudioSmartEditPageView.needLargeScreenImeAdapt(this)) {
            Y0();
        }
        this.Z.post(new Runnable() {
            @Override
            public void run() {
                AudioSheetDialogActivity.this.Z.setAudioItem(AudioSheetDialogActivity.this.N);
            }
        });
    }

    public final void z0(String str, boolean z, boolean z2, AudioItem... audioItemArr) {
        AudioPlayListAddBucketView audioPlayListAddBucketView = new AudioPlayListAddBucketView(this, this.R, false, audioItemArr);
        audioPlayListAddBucketView.fromPage = this.Q.equals("AudioPlayPage") ? "playpage" : "audiolist";
        if (this.U != null) {
            audioPlayListAddBucketView.setLayoutParams(new ViewGroup.LayoutParams(-1, this.U.getHeight()));
        }
        OSPageView oSPageViewAddPage = addPage(audioPlayListAddBucketView);
        oSPageViewAddPage.setTitle(str);
        if (z) {
            oSPageViewAddPage.setBackIconVisibility(true);
            oSPageViewAddPage.setOnTitleBackIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.N0(view);
                }
            });
        }
        if (z2) {
            oSPageViewAddPage.setOnTitleCloseIconClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.O0(view);
                }
            });
        }
        oSPageViewAddPage.setCloseIconVisibility(z2);
    }
}
