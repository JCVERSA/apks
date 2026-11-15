package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioAddAllPlayListDialogActivity;
import com.transsion.audio.adapter.PlayListBucketAdapter;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import com.transsion.playercommon.utils.views.HalfListDialogFragmentUtil;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class k78 {
    public Context a;
    public ArrayList b;
    public AudioItem c;
    public boolean d;
    public PlayListModel e;
    public com.transsion.widgetslib.dialog.d f;
    public InputDialog g;
    public d h;
    public PlayListBucketAdapter i;
    public ArrayList j;
    public PlayList k;
    public Dialog l;
    public long m;
    public boolean n;

    public class a extends ux0 {
        public a() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            k78.this.y0();
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
            k78.this.t0(strTrim.length() != 0);
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
            k78.this.t0((strTrim.length() == 0 || k78.this.k.name.equals(strTrim)) ? false : true);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface d {
        default void a(PlayList playList) {
        }

        default void b(PlayList playList) {
        }
    }

    public k78(Context context) {
        this.b = new ArrayList();
        this.j = new ArrayList();
        J(context);
    }

    public static Long L(String str, BaseActivity baseActivity) {
        if (Utils.a() == null) {
            return null;
        }
        return Long.valueOf(ao.U().m0(str, false));
    }

    public static ArrayList P(Context context) {
        return new ArrayList(ao.U().Z());
    }

    public static void R(Throwable th) {
        Log.w("PlayListOperateUtils", "loadPlayListList " + th);
    }

    public static void T(Throwable th) {
        Log.w("PlayListOperateUtils", "loadPlayListList " + th);
    }

    public static ArrayList V(Context context) {
        return new ArrayList(ao.U().Z());
    }

    public static void X(Throwable th) {
        Log.w("PlayListOperateUtils", "loadPlayListList " + th);
    }

    public static ArrayList Z(Context context) {
        return new ArrayList(ao.U().Z());
    }

    public static void f0(EditText editText, TextView textView) {
    }

    public static void k0(EditText editText, TextView textView) {
    }

    public void A0() {
        if (this.k == null) {
            return;
        }
        InputDialog inputDialogR = new InputDialog(this.a).A(R.string.rename).s(R.string.done, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.i0(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.j0(dialogInterface, i);
            }
        }).z(true).r(false);
        this.g = inputDialogR;
        inputDialogR.v(this.k.name, "", 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                k78.k0(editText, textView);
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
        t0(false);
    }

    public final void B0(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.playercommon.R.id.rv_video_play_filelist);
        View viewFindViewById = view.findViewById(R.id.dialog_empty_rl);
        ((TextView) view.findViewById(R.id.text_no_videos)).setText(R.string.no_audio);
        viewFindViewById.setVisibility(8);
        recyclerView.setVisibility(0);
    }

    public final void h0(Context context, final SimpleBottomSheetDialog simpleBottomSheetDialog, View view, boolean z, boolean z2) {
        this.l = simpleBottomSheetDialog.requireDialog();
        if (simpleBottomSheetDialog.requireDialog().getWindow() != null && !pp3.a) {
            Window window = simpleBottomSheetDialog.requireDialog().getWindow();
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 5125);
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_back);
        imageView.setVisibility(z ? 0 : 8);
        view.findViewById(com.transsion.playercommon.R.id.tv_create_new_list).setOnClickListener(new a());
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                simpleBottomSheetDialog.K();
            }
        });
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.playercommon.R.id.rv_video_play_filelist);
        ((ImageView) view.findViewById(com.transsion.playercommon.R.id.lottie_no_videos_view)).setImageResource(com.transsion.common.R.drawable.ic_audio_empty_illustration);
        this.i = new PlayListBucketAdapter(context);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(context));
        recyclerView.setAdapter(this.i);
        B0(view);
        this.i.setNewData(this.j);
        this.i.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.m0(simpleBottomSheetDialog, baseQuickAdapter, view2, i);
            }
        });
    }

    public final void E(final String str) {
        if (G(str)) {
            BaseActivity baseActivity = (BaseActivity) this.a;
            mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return k78.L(str, (BaseActivity) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.M(str, (Long) obj);
                }
            });
        }
    }

    public void F(final PlayList playList) {
        ArrayList arrayList;
        if (this.d && ((arrayList = this.b) == null || arrayList.isEmpty())) {
            return;
        }
        boolean z = this.d;
        if (z || this.c != null) {
            mc7.K(z ? this.b : this.c).g(((BaseActivity) this.a).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.N(playList, obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.O(playList, (Boolean) obj);
                }
            });
        }
    }

    public final boolean G(String str) {
        List listN = this.e.n();
        if (listN == null || listN.isEmpty()) {
            listN = this.j;
        }
        if (listN != null && !listN.isEmpty()) {
            Iterator it = listN.iterator();
            while (it.hasNext()) {
                String str2 = ((PlayList) it.next()).name;
                if (str2 != null && str2.equals(str)) {
                    ToastUtils.s(R.string.playlists_has);
                    return false;
                }
            }
        }
        List<PlayListItem> list = (List) this.e.m().getValue();
        if (list == null || list.isEmpty()) {
            return true;
        }
        for (PlayListItem playListItem : list) {
            if (playListItem.getName() != null && playListItem.getName().equals(str)) {
                ToastUtils.s(R.string.playlists_has);
                return false;
            }
        }
        return true;
    }

    public void H() {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.f.dismiss();
    }

    public boolean I() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.m;
        Log.w("PlayListOperateUtils", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void J(Context context) {
        this.a = context;
        this.e = (PlayListModel) new ViewModelProvider((ViewModelStoreOwner) context, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(PlayListModel.class);
    }

    public final boolean K(int i, String str, AudioItem audioItem, boolean z) {
        if (z) {
            if (ao.U().c0(false, audioItem)) {
                return false;
            }
            ao.U().l0(true, audioItem);
        } else {
            if (ao.U().a0(i, audioItem.id, audioItem, false) != null) {
                return false;
            }
            ao.U().n0(str, i, audioItem);
        }
        return true;
    }

    public final void M(String str, Long l) {
        if (l == null || l.longValue() < 0) {
            return;
        }
        Log.d("PlayListOperateUtils", "new Playlist:" + str + ", id:" + l);
        PlayList playList = new PlayList(str);
        playList.id = Math.toIntExact(l.longValue());
        d dVar = this.h;
        if (dVar != null) {
            dVar.b(playList);
        }
        F(playList);
        Dialog dialog = this.l;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.l.dismiss();
    }

    public final Boolean N(PlayList playList, Object obj) {
        boolean zK;
        if (this.d) {
            Iterator it = this.b.iterator();
            zK = false;
            while (it.hasNext()) {
                zK |= K(playList.id, playList.name, (AudioItem) it.next(), playList.listFlag == 33);
            }
        } else {
            zK = K(playList.id, playList.name, this.c, playList.listFlag == 33);
        }
        return Boolean.valueOf(zK);
    }

    public final void O(PlayList playList, Boolean bool) {
        if (bool.booleanValue() || this.n) {
            Context context = this.a;
            ToastUtils.v(context, context.getResources().getString(R.string.add_to_playlist_toast, playList.name));
            if (playList.listFlag == 33) {
                h27.c().e(1055, new Object[0]);
            }
            this.e.p(true);
        } else {
            ToastUtils.s(R.string.song_existed);
        }
        d dVar = this.h;
        if (dVar != null) {
            dVar.b(playList);
        }
    }

    public final void Q(ArrayList arrayList) {
        this.j.clear();
        this.j.addAll(arrayList);
        PlayListBucketAdapter playListBucketAdapter = this.i;
        if (playListBucketAdapter != null) {
            playListBucketAdapter.setNewData(arrayList);
        }
    }

    public final void S(List list) {
        mc7.K(this.a).g(((BaseActivity) this.a).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return k78.P((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q((ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                k78.R((Throwable) obj);
            }
        });
    }

    public final void U(final ArrayList arrayList, final boolean z, List list) {
        if (System.currentTimeMillis() - af9.c < 2000) {
            return;
        }
        mc7.K(this.a).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return k78.Z((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.a0(arrayList, z, (ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                k78.T((Throwable) obj);
            }
        });
    }

    public final void W(ArrayList arrayList, boolean z, ArrayList arrayList2) {
        arrayList.clear();
        arrayList.addAll(arrayList2);
        Intent intent = new Intent();
        vg9.e(arrayList2);
        intent.putExtra("is_last", z);
        intent.setClass(this.a, AudioAddAllPlayListDialogActivity.class);
        this.a.startActivity(intent);
    }

    public final void Y(xk5 xk5Var, final ArrayList arrayList, final boolean z, List list) {
        if (System.currentTimeMillis() - af9.c < 2000) {
            return;
        }
        mc7.K(this.a).g(xk5Var.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return k78.V((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.W(arrayList, z, (ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                k78.X((Throwable) obj);
            }
        });
    }

    public final void a0(ArrayList arrayList, boolean z, ArrayList arrayList2) {
        arrayList.clear();
        arrayList.addAll(arrayList2);
        Intent intent = new Intent();
        vg9.e(arrayList2);
        intent.putExtra("is_last", z);
        intent.setClass(this.a, AudioAddAllPlayListDialogActivity.class);
        this.a.startActivity(intent);
    }

    public final Integer b0(BaseActivity baseActivity) {
        return Integer.valueOf(ao.U().w0(this.k));
    }

    public final void c0(Integer num) {
        d dVar = this.h;
        if (dVar != null) {
            dVar.a(this.k);
        }
        this.e.s(true);
    }

    public final void d0(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
            return;
        }
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
        E(str);
    }

    public final void e0(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void i0(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ToastUtils.s(R.string.empty_text);
        } else if (G(str)) {
            this.f.dismiss();
            q0(str);
        }
    }

    public final void j0(DialogInterface dialogInterface, int i) {
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void m0(SimpleBottomSheetDialog simpleBottomSheetDialog, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (I()) {
            return;
        }
        this.m = System.currentTimeMillis();
        F(this.i.getData().get(i));
        simpleBottomSheetDialog.dismiss();
    }

    public void n0(SimpleBottomSheetDialog simpleBottomSheetDialog, boolean z, boolean z2) {
        this.e.m().observe((LifecycleOwner) this.a, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.S((List) obj);
            }
        });
        z0(this.a, simpleBottomSheetDialog, z, z2);
    }

    public void o0(final ArrayList arrayList, final boolean z) {
        final xk5 xk5Var;
        Context context = this.a;
        if (context instanceof BaseActivity) {
            xk5Var = (BaseActivity) context;
        } else {
            xk5Var = context instanceof RxPermissionOSBottomSheetDialog ? (RxPermissionOSBottomSheetDialog) context : null;
        }
        if (xk5Var != null) {
            this.e.m().observe((LifecycleOwner) this.a, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.Y(xk5Var, arrayList, z, (List) obj);
                }
            });
        } else {
            this.e.m().observe((LifecycleOwner) this.a, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.U(arrayList, z, (List) obj);
                }
            });
        }
    }

    public void p0() {
        PlayListModel playListModel = this.e;
        if (playListModel == null || !(this.a instanceof LifecycleOwner)) {
            return;
        }
        playListModel.m().removeObservers((LifecycleOwner) this.a);
    }

    public final void q0(String str) {
        this.k.name = str;
        BaseActivity baseActivity = (BaseActivity) this.a;
        mc7.K(baseActivity).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.b0((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.c0((Integer) obj);
            }
        });
    }

    public void r0(List list) {
        PlayListBucketAdapter playListBucketAdapter = this.i;
        if (playListBucketAdapter != null) {
            playListBucketAdapter.setNewData(list);
            this.j = (ArrayList) list;
        }
    }

    public void s0(AudioItem audioItem) {
        this.c = audioItem;
    }

    public final void t0(boolean z) {
        Button buttonE;
        com.transsion.widgetslib.dialog.d dVar = this.f;
        if (dVar == null || (buttonE = dVar.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(z);
    }

    public void u0(boolean z) {
        this.d = z;
    }

    public void v0(PlayList playList) {
        this.k = playList;
    }

    public void w0(d dVar) {
        this.h = dVar;
    }

    public void x0(ArrayList arrayList) {
        this.j = arrayList;
    }

    public void y0() {
        InputDialog inputDialogR = new InputDialog(this.a).A(R.string.new_playlist).s(R.string.Save, new InputDialog.g() {
            @Override
            public final void a(String str) {
                this.a.d0(str);
            }
        }).x(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.e0(dialogInterface, i);
            }
        }).z(true).r(false);
        this.g = inputDialogR;
        inputDialogR.v("", this.a.getResources().getString(R.string.search_hint), 61, new InputDialog.f() {
            @Override
            public final void a(EditText editText, TextView textView) {
                k78.f0(editText, textView);
            }
        });
        this.g.setTextWatcher(new b());
        EditText editText = this.g.getmEditText();
        if (editText != null) {
            editText.setHintTextColor(this.a.getResources().getColor(R.color.os_text_quaternary_color, this.a.getTheme()));
        }
        com.transsion.widgetslib.dialog.d dVarM = this.g.m();
        this.f = dVarM;
        dVarM.show();
        this.g.w(false);
        t0(false);
    }

    public final void z0(final Context context, final SimpleBottomSheetDialog simpleBottomSheetDialog, final boolean z, final boolean z2) {
        if (z && simpleBottomSheetDialog != null) {
            simpleBottomSheetDialog.J(new SimpleBottomSheetDialog.c() {
                @Override
                public final void a(View view) {
                    this.a.g0(context, simpleBottomSheetDialog, z, z2, view);
                }
            });
            return;
        }
        HalfListDialogFragmentUtil halfListDialogFragmentUtil = new HalfListDialogFragmentUtil(context, "play_list_tag", R.layout.audio_playlist_bucket_list);
        halfListDialogFragmentUtil.e(new HalfListDialogFragmentUtil.a() {
            @Override
            public final void a(SimpleBottomSheetDialog simpleBottomSheetDialog2, View view) {
                this.a.h0(context, z, z2, simpleBottomSheetDialog2, view);
            }
        });
        if (z2) {
            halfListDialogFragmentUtil.d(R.drawable.list_dialog_background);
        }
        halfListDialogFragmentUtil.g();
    }

    public k78(Context context, AudioItem audioItem) {
        this.b = new ArrayList();
        this.j = new ArrayList();
        this.c = audioItem;
        J(context);
    }

    public k78(Context context, ArrayList arrayList, boolean z) {
        this.b = new ArrayList();
        this.j = new ArrayList();
        this.d = true;
        this.b = arrayList;
        this.n = z;
        J(context);
    }
}
