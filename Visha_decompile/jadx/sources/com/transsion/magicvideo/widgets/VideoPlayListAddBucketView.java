package com.transsion.magicvideo.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
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
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.adapter.VideoPlayListBucketAdapter;
import com.transsion.magicvideo.widgets.VideoPlayListAddBucketView;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.os8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.xk5;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class VideoPlayListAddBucketView extends LinearLayout implements BaseQuickAdapter.OnItemClickListener {
    public static final String TAG = "VideoPlayListAddBucketView";
    public Context b;
    public List c;
    public ArrayList d;
    public VideoPlayListBucketAdapter e;
    public MediaItem[] f;
    public LinearLayout g;
    public RecyclerView h;
    public com.transsion.widgetslib.dialog.d i;
    public int j;
    public boolean k;
    public VideoPlayListModel l;

    public class a extends os8 {
        public a() {
        }

        @Override
        public void onClick() {
            VideoPlayListAddBucketView.this.showAddEditDialog();
        }
    }

    public class b implements pd7 {
        public final VideoPlayList b;
        public final VideoSheetDialogActivity c;

        public b(VideoPlayList videoPlayList, VideoSheetDialogActivity videoSheetDialogActivity) {
            this.b = videoPlayList;
            this.c = videoSheetDialogActivity;
        }

        @Override
        public void onNext(Boolean bool) {
            if (VideoPlayListAddBucketView.this.j == 0) {
                h27.c().e(1053, new Object[0]);
                if (VideoPlayListAddBucketView.this.k && this.b.playlistFlag != 2) {
                    ToastUtils.s(R.string.youtube_error_add_tip);
                    return;
                } else if (bool.booleanValue()) {
                    ToastUtils.v(VideoPlayListAddBucketView.this.b, VideoPlayListAddBucketView.this.getResources().getString(com.transsion.playercommon.R.string.add_to_playlist_toast, VideoPlayListAddBucketView.this.r(this.b)));
                    return;
                } else {
                    ToastUtils.s(R.string.video_existed);
                    return;
                }
            }
            if (VideoPlayListAddBucketView.this.j == 4) {
                ToastUtils.s(R.string.add_play_list_skip_audio);
            } else if (VideoPlayListAddBucketView.this.j == 5) {
                ToastUtils.s(R.string.add_play_list_skip_picture);
            } else if (VideoPlayListAddBucketView.this.j == 6) {
                ToastUtils.s(R.string.add_play_list_skip_audio_and_picture);
            }
        }

        @Override
        public void onComplete() {
            this.c.animateDismiss();
        }

        @Override
        public void onError(Throwable th) {
            Log.i(VideoPlayListAddBucketView.TAG, "insertToPlaylist " + th.getMessage());
            this.c.animateDismiss();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            VideoPlayListAddBucketView.this.setButtonEnable(editable.toString().trim().length() != 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface d {
    }

    public VideoPlayListAddBucketView(Context context, List<VideoPlayList> list, int i, boolean z, MediaItem... mediaItemArr) {
        super(context);
        this.d = new ArrayList();
        this.i = null;
        this.j = i;
        this.f = mediaItemArr;
        this.c = list;
        this.k = z;
        s(context);
    }

    public static void A(Throwable th) {
        Log.w(TAG, "loadData " + th);
    }

    public static void D(EditText editText, TextView textView) {
    }

    public String r(VideoPlayList videoPlayList) {
        int i = videoPlayList.mCategory;
        if (i == 0) {
            i = videoPlayList.playlistFlag;
        }
        if (i != 1) {
            return i != 2 ? videoPlayList.name : this.b.getString(R.string.favorites);
        }
        return this.b.getString(R.string.recent_add);
    }

    private void s(Context context) {
        this.b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.add_playlist_bucket_list, this);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.tv_create_new_list);
        this.g = linearLayout;
        linearLayout.setOnClickListener(new a());
        this.h = (RecyclerView) viewInflate.findViewById(R.id.rv_video_play_filelist);
        this.e = new VideoPlayListBucketAdapter(context);
        this.h.setLayoutManager(new CustomLinearLayoutManager(context));
        this.h.setAdapter(this.e);
        OverScrollDecorHelper.setUpOverScroll(this.h, 0);
        if (this.c == null) {
            this.c = new ArrayList();
        }
        VideoPlayListModel videoPlayListModel = (VideoPlayListModel) new ViewModelProvider((ViewModelStoreOwner) this.b).get(VideoPlayListModel.class);
        this.l = videoPlayListModel;
        videoPlayListModel.g().observe((LifecycleOwner) this.b, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.x((List) obj);
            }
        });
        E();
        this.e.setOnItemClickListener(this);
    }

    public void setButtonEnable(boolean z) {
        Button buttonE;
        com.transsion.widgetslib.dialog.d dVar = this.i;
        if (dVar == null || (buttonE = dVar.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(z);
    }

    public static Long u(String str, VideoSheetDialogActivity videoSheetDialogActivity) {
        return Long.valueOf(tpb.j0().f(str));
    }

    public static ArrayList y(Context context) {
        return new ArrayList(tpb.j0().u(false));
    }

    public final void B(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
            return;
        }
        com.transsion.widgetslib.dialog.d dVar = this.i;
        if (dVar != null) {
            dVar.dismiss();
        }
        o(str);
    }

    public final void C(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.i;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public void E() {
        mc7.K(this.b).i(0L, TimeUnit.MILLISECONDS).g(((xk5) this.b).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayListAddBucketView.y((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.z((ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoPlayListAddBucketView.A((Throwable) obj);
            }
        });
    }

    public final void z(ArrayList arrayList) {
        this.d.clear();
        this.d.addAll(arrayList);
        this.e.setNewData(this.d);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void changeStyle(boolean z) {
        this.e.d(z);
        this.e.notifyDataSetChanged();
    }

    public final void o(final String str) {
        if (q(str)) {
            VideoSheetDialogActivity videoSheetDialogActivity = (VideoSheetDialogActivity) this.b;
            mc7.K(videoSheetDialogActivity).g(videoSheetDialogActivity.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return VideoPlayListAddBucketView.u(str, (VideoSheetDialogActivity) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.v(str, (Long) obj);
                }
            });
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.transsion.widgetslib.dialog.d dVar = this.i;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.i.g(configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VideoPlayListModel videoPlayListModel = this.l;
        if (videoPlayListModel != null) {
            videoPlayListModel.g().removeObservers((LifecycleOwner) this.b);
        }
    }

    @Override
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        p(this.e.getData().get(i));
    }

    public final void p(final VideoPlayList videoPlayList) {
        VideoSheetDialogActivity videoSheetDialogActivity = (VideoSheetDialogActivity) this.b;
        mc7.K(this.f).g(videoSheetDialogActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.w(videoPlayList, (MediaItem[]) obj);
            }
        }).d0(k29.c()).M(vb.a()).subscribe(new b(videoPlayList, videoSheetDialogActivity));
    }

    public final boolean q(String str) {
        ArrayList arrayList = this.d;
        if (arrayList == null || arrayList.size() <= 0) {
            return true;
        }
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (((VideoPlayList) it.next()).name.equals(str)) {
                ToastUtils.s(R.string.playlists_has);
                return false;
            }
        }
        return true;
    }

    public void setListener(d dVar) {
    }

    public void showAddEditDialog() {
        InputDialog inputDialogR = new InputDialog(this.b).A(R.string.new_playlist).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.B(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.C(dialogInterface, i);
            }
        }).z(true).r(false);
        inputDialogR.v("", this.b.getResources().getString(R.string.search_hint), 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                VideoPlayListAddBucketView.D(editText, textView);
            }
        });
        inputDialogR.setTextWatcher(new c());
        com.transsion.widgetslib.dialog.d dVarM = inputDialogR.m();
        this.i = dVarM;
        dVarM.show();
        inputDialogR.w(false);
        setButtonEnable(false);
    }

    public final boolean t(int i, String str, MediaItem mediaItem, boolean z) {
        try {
            if (z) {
                if (tpb.j0().T(mediaItem.data)) {
                    return false;
                }
                tpb.j0().j(true, mediaItem);
                return true;
            }
            if (tpb.j0().A(i, mediaItem.id, mediaItem, false) != null) {
                return false;
            }
            tpb.j0().Q(str, i, mediaItem, false);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void v(String str, Long l) {
        Log.d(TAG, "new Playlist:" + str + ", id:" + l);
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.name = str;
        videoPlayList.id = Math.toIntExact(l.longValue());
        p(videoPlayList);
    }

    public final Boolean w(VideoPlayList videoPlayList, MediaItem[] mediaItemArr) {
        boolean zT;
        MediaItem[] mediaItemArr2 = this.f;
        if (mediaItemArr2.length > 1) {
            zT = false;
            for (MediaItem mediaItem : mediaItemArr2) {
                zT |= t(videoPlayList.id, videoPlayList.name, mediaItem, videoPlayList.playlistFlag == 2);
            }
        } else {
            zT = t(videoPlayList.id, videoPlayList.name, mediaItemArr2[0], videoPlayList.playlistFlag == 2);
        }
        return Boolean.valueOf(zT);
    }

    public final void x(List list) {
        Log.d(TAG, "playLists:" + list.size());
        E();
    }
}
