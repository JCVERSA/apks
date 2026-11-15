package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class jwb {
    public Context a;
    public MediaItem c;
    public boolean d;
    public VideoPlayListModel e;
    public com.transsion.widgetslib.dialog.d f;
    public InputDialog g;
    public d h;
    public ArrayList i;
    public VideoPlayList j;
    public Dialog k;
    public ArrayList b = new ArrayList();
    public boolean l = false;

    public class a implements pd7 {
        public final VideoPlayList b;

        public a(VideoPlayList videoPlayList) {
            this.b = videoPlayList;
        }

        @Override
        public void onNext(Boolean bool) {
            if (!bool.booleanValue()) {
                ToastUtils.s(R.string.video_existed);
                return;
            }
            ToastUtils.v(jwb.this.a, jwb.this.a.getResources().getString(R.string.add_to_playlist_toast, jwb.this.u(this.b)));
            if (this.b.playlistFlag == 2) {
                h27.c().e(1053, new Object[0]);
            }
            jwb.this.e.n(true);
            h27.c().e(1053, new Object[0]);
        }

        @Override
        public void onComplete() {
            vmb.c("VideoPlayListOperateUtils", "addToPlayList complete");
        }

        @Override
        public void onError(Throwable th) {
            vmb.d("VideoPlayListOperateUtils", "addToPlayList error", th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String strTrim = editable.toString().trim();
            if (strTrim.length() >= 61) {
                ToastUtils.s(R.string.over_text_length);
            }
            jwb.this.J(strTrim.length() != 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String strTrim = editable.toString().trim();
            if (strTrim.length() >= 61) {
                ToastUtils.s(R.string.over_text_length);
            }
            jwb.this.J((strTrim.length() == 0 || jwb.this.j.name.equals(strTrim)) ? false : true);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface d {
        default void a(VideoPlayList videoPlayList) {
        }

        default void b(VideoPlayList videoPlayList) {
        }
    }

    public jwb(Context context) {
        v(context);
    }

    public static void E(EditText editText, TextView textView) {
    }

    public static void H(EditText editText, TextView textView) {
    }

    public static Long x(String str) {
        return Long.valueOf(tpb.j0().f(str));
    }

    public final Integer A(BaseActivity baseActivity) {
        return Integer.valueOf(tpb.j0().a0(this.j));
    }

    public final void B(Integer num) {
        d dVar = this.h;
        if (dVar != null) {
            dVar.a(this.j);
        }
        this.e.o(true);
    }

    public final void C(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
            return;
        }
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
        q(str);
    }

    public final void D(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void F(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
        } else if (s(str)) {
            this.f.dismiss();
            I(str);
        }
    }

    public final void G(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void I(String str) {
        this.j.name = str;
        BaseActivity baseActivity = (BaseActivity) this.a;
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.A((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.B((Integer) obj);
            }
        });
    }

    public final void J(boolean z) {
        Button buttonE;
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar == null || (buttonE = dVar.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(z);
    }

    public void K(VideoPlayList videoPlayList) {
        this.j = videoPlayList;
    }

    public void L(d dVar) {
        this.h = dVar;
    }

    public void M() {
        InputDialog inputDialogR = new InputDialog(this.a).A(R.string.new_playlist).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.C(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.D(dialogInterface, i);
            }
        }).z(true).r(false);
        this.g = inputDialogR;
        inputDialogR.v("", this.a.getResources().getString(R.string.search_hint), 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                jwb.E(editText, textView);
            }
        });
        this.g.setTextWatcher(new b());
        EditText editText = this.g.getmEditText();
        if (editText != null) {
            editText.setHintTextColor(this.a.getResources().getColor(R.color.os_text_quaternary_color, this.a.getTheme()));
        }
        try {
            com.transsion.widgetslib.dialog.d dVarM = this.g.m();
            this.f = dVarM;
            dVarM.show();
            this.g.w(false);
            J(false);
        } catch (Exception e) {
            Log.e("VideoPlayListOperateUtils", "error:" + e.getMessage());
        }
    }

    public void N() {
        if (this.j == null) {
            return;
        }
        InputDialog inputDialogR = new InputDialog(this.a).A(R.string.rename).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.F(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.G(dialogInterface, i);
            }
        }).z(true).r(false);
        this.g = inputDialogR;
        inputDialogR.v(this.j.name, "", 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                jwb.H(editText, textView);
            }
        });
        this.g.setTextWatcher(new c());
        EditText editText = this.g.getmEditText();
        if (editText != null) {
            editText.setHintTextColor(this.a.getResources().getColor(R.color.os_text_quaternary_color, this.a.getTheme()));
        }
        com.transsion.widgetslib.dialog.d dVarM = this.g.m();
        this.f = dVarM;
        dVarM.show();
        this.g.w(false);
        J(false);
    }

    public final void q(final String str) {
        if (s(str)) {
            mc7.K(str).g(((BaseActivity) this.a).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return jwb.x((String) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.y(str, (Long) obj);
                }
            });
        }
    }

    public void r(final VideoPlayList videoPlayList) {
        ArrayList arrayList;
        if (this.d && ((arrayList = this.b) == null || arrayList.isEmpty())) {
            return;
        }
        boolean z = this.d;
        if (z || this.c != null) {
            mc7.K(z ? this.b : this.c).g(((BaseActivity) this.a).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.z(videoPlayList, obj);
                }
            }).d0(k29.c()).M(vb.a()).subscribe(new a(videoPlayList));
        }
    }

    public final boolean s(String str) {
        List list;
        ArrayList arrayList = this.i;
        if ((arrayList == null || arrayList.isEmpty()) && (list = (List) this.e.h().getValue()) != null && !list.isEmpty()) {
            this.i = new ArrayList(list);
        }
        ArrayList arrayList2 = this.i;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                String str2 = ((VideoPlayList) it.next()).name;
                if (str2 != null && str2.equals(str)) {
                    ToastUtils.s(R.string.playlists_has);
                    return false;
                }
            }
        }
        List<PlayListFolderItem> list2 = (List) this.e.g().getValue();
        if (list2 == null || list2.isEmpty()) {
            return true;
        }
        for (PlayListFolderItem playListFolderItem : list2) {
            if (playListFolderItem.getName() != null && playListFolderItem.getName().equals(str)) {
                ToastUtils.s(R.string.playlists_has);
                return false;
            }
        }
        return true;
    }

    public void t() {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.f.dismiss();
    }

    public final String u(VideoPlayList videoPlayList) {
        int i = videoPlayList.mCategory;
        if (i == 0) {
            i = videoPlayList.playlistFlag;
        }
        if (i != 1) {
            return i != 2 ? videoPlayList.name : this.a.getString(R.string.talkback_add_to_favorites);
        }
        return this.a.getString(R.string.recent_add);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void v(Context context) {
        this.a = context;
        this.e = (VideoPlayListModel) new ViewModelProvider((ViewModelStoreOwner) context, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VideoPlayListModel.class);
    }

    public final boolean w(int i, String str, MediaItem mediaItem, boolean z) {
        if (!z) {
            return tpb.j0().A(i, mediaItem.id, mediaItem, false) == null && tpb.j0().Q(str, (long) i, mediaItem, false) > 0;
        }
        if (tpb.j0().T(mediaItem.data)) {
            return false;
        }
        tpb.j0().j(true, mediaItem);
        return true;
    }

    public final void y(String str, Long l) {
        Log.d("VideoPlayListOperateUtils", "new Playlist:" + str + ", id:" + l);
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.name = str;
        videoPlayList.id = Math.toIntExact(l.longValue());
        d dVar = this.h;
        if (dVar != null) {
            dVar.b(videoPlayList);
        }
        r(videoPlayList);
        Dialog dialog = this.k;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.k.dismiss();
    }

    public final Boolean z(VideoPlayList videoPlayList, Object obj) {
        boolean zW;
        if (this.d) {
            Iterator it = this.b.iterator();
            zW = false;
            while (it.hasNext()) {
                zW |= w(videoPlayList.id, videoPlayList.name, (MediaItem) it.next(), videoPlayList.playlistFlag == 2);
            }
        } else {
            zW = w(videoPlayList.id, videoPlayList.name, this.c, videoPlayList.playlistFlag == 2);
        }
        return Boolean.valueOf(zW);
    }
}
