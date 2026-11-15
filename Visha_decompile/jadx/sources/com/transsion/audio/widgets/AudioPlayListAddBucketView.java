package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.adapter.PlayListBucketAdapter;
import com.transsion.audio.widgets.AudioPlayListAddBucketView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.PlayList;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import defpackage.af9;
import defpackage.ao;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.os8;
import defpackage.p06;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class AudioPlayListAddBucketView extends LinearLayout {
    public static final String TAG = "AudioPlayListAddBucketView";
    public String fromPage;
    private final boolean isAddAll;
    private final AudioItem[] mAudioItems;
    private final Context mContext;
    private LinearLayout mCreateNewBucketTv;
    private RecyclerView mPlayBucketRv;
    private PlayListBucketAdapter mPlayListAdapter;
    private final List<PlayList> mPlayLists;
    private com.transsion.widgetslib.dialog.d mPromptDialog;

    public AudioPlayListAddBucketView(Context context, List<PlayList> list, boolean z, AudioItem... audioItemArr) {
        super(context);
        this.mPromptDialog = null;
        this.fromPage = "";
        this.mContext = context;
        this.mAudioItems = audioItemArr;
        this.mPlayLists = list;
        this.isAddAll = z;
        init(context);
    }

    @SuppressLint({"CheckResult"})
    private void addNewPlayList(final String str) {
        if (canAddNewPlayList(str)) {
            RxPermissionOSBottomSheetDialog rxPermissionOSBottomSheetDialog = (RxPermissionOSBottomSheetDialog) this.mContext;
            mc7.K(rxPermissionOSBottomSheetDialog).g(rxPermissionOSBottomSheetDialog.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return AudioPlayListAddBucketView.lambda$addNewPlayList$7(str, (RxPermissionOSBottomSheetDialog) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) throws Exception {
                    this.b.lambda$addNewPlayList$8(str, (Long) obj);
                }
            });
        }
    }

    @SuppressLint({"CheckResult"})
    private void addToPlayList(final PlayList playList) {
        final RxPermissionOSBottomSheetDialog rxPermissionOSBottomSheetDialog = (RxPermissionOSBottomSheetDialog) this.mContext;
        mc7.K(this).g(rxPermissionOSBottomSheetDialog.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.lambda$addToPlayList$1(playList, (AudioPlayListAddBucketView) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$addToPlayList$3(playList, rxPermissionOSBottomSheetDialog, (Boolean) obj);
            }
        });
    }

    private boolean canAddNewPlayList(String str) {
        List<PlayList> list = this.mPlayLists;
        if (list == null || list.size() <= 0) {
            return true;
        }
        Iterator<PlayList> it = this.mPlayLists.iterator();
        while (it.hasNext()) {
            if (it.next().name.equals(str)) {
                ToastUtils.s(R.string.playlists_has);
                return false;
            }
        }
        return true;
    }

    private String getPlaylistDisplayName(PlayList playList) {
        int i = playList.mCategory;
        if (i != 1) {
            return i != 2 ? playList.name : this.mContext.getString(R.string.talkback_add_to_favorites);
        }
        return this.mContext.getString(R.string.recent_add);
    }

    private void init(Context context) {
        View viewInflate = this.isAddAll ? LayoutInflater.from(context).inflate(R.layout.audio_playlist_bucket_list_all, this) : LayoutInflater.from(context).inflate(R.layout.add_playlist_bucket_list, this);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.tv_create_new_list);
        this.mCreateNewBucketTv = linearLayout;
        linearLayout.setOnClickListener(new os8() {
            @Override
            public void onClick() {
                AudioPlayListAddBucketView.this.showAddEditDialog();
            }
        });
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_video_play_filelist);
        this.mPlayBucketRv = recyclerView;
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        PlayListBucketAdapter playListBucketAdapter = new PlayListBucketAdapter(this.mContext);
        this.mPlayListAdapter = playListBucketAdapter;
        this.mPlayBucketRv.setAdapter(playListBucketAdapter);
        OverScrollDecorHelper.setUpOverScroll(this.mPlayBucketRv, 0);
        ArrayList arrayList = new ArrayList();
        for (PlayList playList : this.mPlayLists) {
            if (playList.mCategory != 1) {
                arrayList.add(playList);
            }
        }
        this.mPlayListAdapter.setNewData(arrayList);
        this.mPlayListAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.lambda$init$0(baseQuickAdapter, view, i);
            }
        });
    }

    public static Long lambda$addNewPlayList$7(String str, RxPermissionOSBottomSheetDialog rxPermissionOSBottomSheetDialog) throws Exception {
        af9.c = System.currentTimeMillis();
        if (Utils.a() == null) {
            return null;
        }
        return Long.valueOf(ao.U().m0(str, false));
    }

    public void lambda$addNewPlayList$8(String str, Long l) throws Exception {
        if (l == null || l.longValue() < 0) {
            return;
        }
        Log.d(TAG, "new Playlist:" + str + ", id:" + l);
        PlayList playList = new PlayList(str);
        playList.id = Math.toIntExact(l.longValue());
        addToPlayList(playList);
    }

    public Boolean lambda$addToPlayList$1(PlayList playList, AudioPlayListAddBucketView audioPlayListAddBucketView) throws Exception {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (AudioItem audioItem : this.mAudioItems) {
            if (audioItem.isMusicVideo) {
                z = true;
            } else {
                z2 = true;
            }
            if (!z3) {
                if (ao.U().a0(playList.id, audioItem.id, audioItem, playList.listFlag == 33) == null) {
                    z3 = true;
                }
            }
        }
        p06.t0((!z || z2) ? (!z2 || z) ? TtmlNode.COMBINE_ALL : "audio" : "mv", this.fromPage);
        ao.U().o0("", playList.id, new ArrayList(Arrays.asList(this.mAudioItems)), playList.listFlag == 33);
        return Boolean.valueOf(z3);
    }

    public static void lambda$addToPlayList$2(RxPermissionOSBottomSheetDialog rxPermissionOSBottomSheetDialog) {
        if (rxPermissionOSBottomSheetDialog == null || rxPermissionOSBottomSheetDialog.isFinishing() || rxPermissionOSBottomSheetDialog.isDestroyed()) {
            return;
        }
        rxPermissionOSBottomSheetDialog.animateDismiss();
    }

    public void lambda$addToPlayList$3(PlayList playList, final RxPermissionOSBottomSheetDialog rxPermissionOSBottomSheetDialog, Boolean bool) throws Exception {
        int i = playList.listFlag;
        if (i == 33 || i == 0) {
            h27.c().e(1055, new Object[0]);
        }
        if (bool.booleanValue()) {
            ToastUtils.v(this.mContext, getResources().getString(R.string.add_to_playlist_toast, getPlaylistDisplayName(playList)));
            new Handler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    AudioPlayListAddBucketView.lambda$addToPlayList$2(rxPermissionOSBottomSheetDialog);
                }
            }, 250L);
        } else {
            ToastUtils.s(R.string.song_existed);
            rxPermissionOSBottomSheetDialog.animateDismiss();
        }
    }

    public void lambda$init$0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        addToPlayList(this.mPlayListAdapter.getData().get(i));
    }

    public void lambda$showAddEditDialog$4(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
            return;
        }
        com.transsion.widgetslib.dialog.d dVar = this.mPromptDialog;
        if (dVar != null) {
            dVar.dismiss();
        }
        addNewPlayList(str);
    }

    public void lambda$showAddEditDialog$5(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.mPromptDialog;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public static void lambda$showAddEditDialog$6(EditText editText, TextView textView) {
    }

    public void setButtonEnable(boolean z) {
        Button buttonE;
        com.transsion.widgetslib.dialog.d dVar = this.mPromptDialog;
        if (dVar == null || (buttonE = dVar.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(z);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.transsion.widgetslib.dialog.d dVar = this.mPromptDialog;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.mPromptDialog.g(configuration);
    }

    public void showAddEditDialog() {
        InputDialog inputDialogR = new InputDialog(this.mContext).A(R.string.new_playlist).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.lambda$showAddEditDialog$4(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.lambda$showAddEditDialog$5(dialogInterface, i);
            }
        }).z(true).r(false);
        inputDialogR.v("", this.mContext.getResources().getString(R.string.search_hint), 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                AudioPlayListAddBucketView.lambda$showAddEditDialog$6(editText, textView);
            }
        });
        inputDialogR.setTextWatcher(new TextWatcher() {
            @Override
            public void afterTextChanged(Editable editable) {
                AudioPlayListAddBucketView.this.setButtonEnable(editable.toString().trim().length() != 0);
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        com.transsion.widgetslib.dialog.d dVarM = inputDialogR.m();
        this.mPromptDialog = dVarM;
        dVarM.show();
        inputDialogR.w(false);
        setButtonEnable(false);
    }
}
