package com.transsion.playercommon.utils.storage;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.provider.FontsContractCompat;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.ProxyConfig;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.hubsdk.api.media.TranAudioManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.InfoBean;
import com.transsion.playercommon.fragments.AlertDialogFragment;
import com.transsion.playercommon.utils.FileToXHideUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.privateroom.api.beans.PrivateFile;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import defpackage.af9;
import defpackage.ao;
import defpackage.dp3;
import defpackage.e74;
import defpackage.h16;
import defpackage.h27;
import defpackage.k29;
import defpackage.kz5;
import defpackage.lpb;
import defpackage.mc7;
import defpackage.nr3;
import defpackage.nx8;
import defpackage.o5b;
import defpackage.p06;
import defpackage.pp3;
import defpackage.qz5;
import defpackage.rr3;
import defpackage.s08;
import defpackage.se;
import defpackage.t08;
import defpackage.t74;
import defpackage.tg8;
import defpackage.tpb;
import defpackage.tr4;
import defpackage.tv4;
import defpackage.uq3;
import defpackage.vb;
import defpackage.vmb;
import defpackage.we6;
import defpackage.wna;
import defpackage.zf1;
import defpackage.zl6;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;

public class FileOperateUtils implements View.OnClickListener {
    public Context b;
    public MediaItem c;
    public PopupWindow d;
    public k e;
    public zl6 f;
    public com.transsion.widgetslib.dialog.d g;
    public int h;
    public int i;
    public ArrayList j;
    public boolean k;
    public boolean l;
    public AudioManager m;
    public String n;
    public String o;
    public String p;
    public boolean q;
    public SeekBar r;
    public final BroadcastReceiver s;
    public int t;

    public class DeleteListener implements DialogInterface.OnClickListener {
        public boolean b;

        public DeleteListener(boolean z) {
            this.b = z;
        }

        public static Boolean t(MediaItem mediaItem) {
            return Boolean.TRUE;
        }

        public static Boolean u(MediaItem mediaItem) {
            return Boolean.TRUE;
        }

        public static Boolean v(MediaItem mediaItem) {
            return Boolean.TRUE;
        }

        public static Boolean w(MediaItem mediaItem) {
            return Boolean.TRUE;
        }

        public final void A() {
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.d();
            }
        }

        public final Boolean B(Object obj) {
            boolean zE;
            if (FileOperateUtils.this.k) {
                zE = C();
            } else {
                FileOperateUtils fileOperateUtils = FileOperateUtils.this;
                zE = fileOperateUtils.E(fileOperateUtils.c);
                vmb.a("DeleteListener", "single delete result: " + zE + ", mediaItem: " + FileOperateUtils.this.c.toString());
            }
            if (zE) {
                k();
            }
            return Boolean.valueOf(zE);
        }

        public final boolean C() {
            CopyOnWriteArrayList<MediaItem> copyOnWriteArrayList = new CopyOnWriteArrayList(FileOperateUtils.this.j);
            boolean zE = false;
            int i = 0;
            for (MediaItem mediaItem : copyOnWriteArrayList) {
                if (r(mediaItem)) {
                    tpb.j0().j(false, mediaItem);
                } else {
                    zE = FileOperateUtils.this.E(mediaItem);
                    vmb.a("DeleteListener", "batch delete result: " + zE + ", mediaItem: " + mediaItem.toString());
                }
                i++;
                G(i, copyOnWriteArrayList.size());
            }
            return zE;
        }

        public final void D() {
            String str;
            if (TextUtils.isEmpty(FileOperateUtils.this.p)) {
                str = FileOperateUtils.this.l ? "audiolist" : "videolist";
            } else {
                str = FileOperateUtils.this.p;
            }
            qz5.b("cancel", str, (FileOperateUtils.this.j == null || FileOperateUtils.this.j.size() < 2) ? 1 : FileOperateUtils.this.j.size());
        }

        public final void E() {
            String str;
            if (TextUtils.isEmpty(FileOperateUtils.this.p)) {
                str = FileOperateUtils.this.l ? "audiolist" : "videolist";
            } else {
                str = FileOperateUtils.this.p;
            }
            qz5.b("delete", str, (FileOperateUtils.this.j == null || FileOperateUtils.this.j.size() < 2) ? 1 : FileOperateUtils.this.j.size());
        }

        public final void F() {
            if (FileOperateUtils.this.i != 1) {
                E();
            }
        }

        public final void G(int i, int i2) {
            if (!this.b || FileOperateUtils.this.e == null) {
                return;
            }
            FileOperateUtils.this.e.a(((double) i) / ((double) i2));
        }

        public final void i() {
            ThreadUtils.i(new ThreadUtils.Task<Boolean>() {
                @Override
                public void onCancel() {
                }

                @Override
                public void onFail(Throwable th) {
                    vmb.d("DeleteListener", "delete hls video file failed", th);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean doInBackground() throws Throwable {
                    FileOperateUtils fileOperateUtils = FileOperateUtils.this;
                    return Boolean.valueOf(fileOperateUtils.E(fileOperateUtils.c));
                }

                @Override
                public void onSuccess(Boolean bool) {
                    vmb.e("DeleteListener", "delete hls video file result: " + bool);
                    DeleteListener.this.A();
                }
            });
        }

        public final void j() {
            FileOperateUtils fileOperateUtils = FileOperateUtils.this;
            vmb.e("DeleteListener", "delete other file result: " + fileOperateUtils.z(fileOperateUtils.c));
            A();
        }

        public final void k() {
            if (FileOperateUtils.this.k) {
                if (FileOperateUtils.this.l) {
                    ao.U().t(FileOperateUtils.this.j, new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return FileOperateUtils.DeleteListener.t((MediaItem) obj);
                        }
                    });
                    return;
                } else {
                    tpb.j0().P(FileOperateUtils.this.j, new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return FileOperateUtils.DeleteListener.u((MediaItem) obj);
                        }
                    });
                    return;
                }
            }
            if (FileOperateUtils.this.l) {
                ao.U().s(FileOperateUtils.this.c, new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return FileOperateUtils.DeleteListener.v((MediaItem) obj);
                    }
                });
            } else {
                tpb.j0().F(FileOperateUtils.this.c, new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return FileOperateUtils.DeleteListener.w((MediaItem) obj);
                    }
                });
            }
        }

        public final void l(BaseActivity baseActivity) {
            mc7 mc7VarM = mc7.K(FileOperateUtils.this.k ? FileOperateUtils.this.j : FileOperateUtils.this.c).g(baseActivity.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.B(obj);
                }
            }).d0(k29.c()).M(vb.a());
            final FileOperateUtils fileOperateUtils = FileOperateUtils.this;
            mc7VarM.a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    fileOperateUtils.F(((Boolean) obj).booleanValue());
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.x((Throwable) obj);
                }
            });
        }

        public final void m() {
            if (FileOperateUtils.this.i != 1) {
                D();
            }
        }

        public final void n() {
            if (y()) {
                q();
            } else {
                o();
            }
        }

        public final void o() {
            BaseActivity baseActivity = (BaseActivity) FileOperateUtils.this.b;
            z();
            F();
            l(baseActivity);
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                n();
            } else if (i == -2) {
                m();
            }
        }

        public final void p() {
            if (!s()) {
                FileOperateUtils.this.c0(1239, null);
            } else if (tr4.c(FileOperateUtils.this.c.data)) {
                i();
            } else {
                j();
            }
        }

        public final void q() {
            if (FileOperateUtils.this.i == 1) {
                FileOperateUtils.this.A();
            } else {
                p();
                E();
            }
        }

        public final boolean r(MediaItem mediaItem) {
            String str = mediaItem.originUrl;
            return str != null && str.startsWith(ProxyConfig.MATCH_HTTP);
        }

        public final boolean s() {
            return !FileOperateUtils.this.k && (MediaItem.MediaType.OTHERS.equals(FileOperateUtils.this.c.type) || MediaItem.MediaType.SUBTITLE.equals(FileOperateUtils.this.c.type) || tr4.c(FileOperateUtils.this.c.data));
        }

        public final void x(Throwable th) {
            vmb.d("DeleteListener", "delete operation failed", th);
            FileOperateUtils.this.F(false);
        }

        public final boolean y() {
            return !pp3.j && Build.VERSION.SDK_INT >= 30;
        }

        public final void z() {
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.f();
            }
        }
    }

    public static class InfoAdapter extends BaseQuickAdapter<InfoBean, BaseViewHolder> {
        public InfoAdapter(int i) {
            super(i);
        }

        @Override
        public void convert(BaseViewHolder baseViewHolder, InfoBean infoBean) {
            baseViewHolder.setText(R.id.tv_item_bucket_fragment_info_title, this.mContext.getResources().getString(R.string.character, this.mContext.getResources().getString(infoBean.getNameId())));
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_item_bucket_fragment_info_content);
            if (infoBean.isMultiLines() && textView != null) {
                textView.setMaxLines(Integer.MAX_VALUE);
            }
            textView.setText(infoBean.getContent());
            if (infoBean.getNameId() == R.string.duration) {
                textView.setContentDescription(wna.f(this.mContext, infoBean.getDuration()));
            }
        }
    }

    public class a implements tv4 {
        public final com.transsion.widgetslib.dialog.c a;

        public a(com.transsion.widgetslib.dialog.c cVar) {
            this.a = cVar;
        }

        @Override
        public void a(double d) {
            this.a.h((int) d);
        }

        @Override
        public void b(PrivateFile privateFile) {
        }

        @Override
        public void c() {
            FileOperateUtils.this.I();
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.i();
            }
        }

        @Override
        public void d(PrivateFile privateFile) {
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.c(privateFile);
            }
        }

        @Override
        public void e(PrivateFile privateFile) {
        }

        @Override
        public void f(PrivateFile privateFile) {
        }

        @Override
        public void g(PrivateFile privateFile) {
        }

        @Override
        public void h() {
        }

        @Override
        public void i(PrivateFile privateFile) {
        }

        @Override
        public void j() {
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final boolean b;

        public b(boolean z) {
            this.b = z;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            FileOperateUtils.this.D(this.b);
            dialogInterface.dismiss();
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.f();
            }
        }
    }

    public class c implements tv4 {
        public final com.transsion.widgetslib.dialog.c a;

        public c(com.transsion.widgetslib.dialog.c cVar) {
            this.a = cVar;
        }

        @Override
        public void a(double d) {
            this.a.h((int) d);
        }

        @Override
        public void b(PrivateFile privateFile) {
        }

        @Override
        public void c() {
        }

        @Override
        public void d(PrivateFile privateFile) {
        }

        @Override
        public void e(PrivateFile privateFile) {
        }

        @Override
        public void f(PrivateFile privateFile) {
        }

        @Override
        public void g(PrivateFile privateFile) {
        }

        @Override
        public void h() {
            FileOperateUtils.this.I();
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.d();
            }
        }

        @Override
        public void i(PrivateFile privateFile) {
        }

        @Override
        public void j() {
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public final boolean b;

        public d(boolean z) {
            this.b = z;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            FileOperateUtils.this.N(this.b);
            dialogInterface.dismiss();
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.b();
            }
        }
    }

    public class e implements tv4 {
        public final com.transsion.widgetslib.dialog.c a;

        public e(com.transsion.widgetslib.dialog.c cVar) {
            this.a = cVar;
        }

        @Override
        public void a(double d) {
            this.a.h((int) d);
        }

        @Override
        public void b(PrivateFile privateFile) {
        }

        @Override
        public void c() {
        }

        @Override
        public void d(PrivateFile privateFile) {
        }

        @Override
        public void e(PrivateFile privateFile) {
        }

        @Override
        public void f(PrivateFile privateFile) {
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.e();
            }
        }

        @Override
        public void g(PrivateFile privateFile) {
        }

        @Override
        public void h() {
        }

        @Override
        public void i(PrivateFile privateFile) {
            FileOperateUtils.this.I();
            ToastUtils.s(R.string.privacy_hide_fail);
        }

        @Override
        public void j() {
            FileOperateUtils.this.I();
            ToastUtils.s(R.string.privacy_hide_success);
            FileOperateUtils.this.b.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
            if (FileOperateUtils.this.e != null) {
                FileOperateUtils.this.e.e();
            }
        }
    }

    public class f extends BroadcastReceiver {
        public f() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (FileOperateUtils.this.r == null || !TranAudioManager.VOLUME_CHANGED_ACTION.equals(intent.getAction())) {
                    return;
                }
                FileOperateUtils.this.r.setProgress(FileOperateUtils.this.K());
            } catch (Exception e) {
                Log.e("visha_FileOperateUtils", "mAudioVolumeReceiver onReceive error: " + e.getMessage());
            }
        }
    }

    public class g implements s08 {
        public final boolean a;
        public final boolean b;

        public g(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }

        @Override
        public void a() {
            Log.d("visha_FileOperateUtils", "preRename operateContinue isRename:" + this.a);
            if (this.a) {
                FileOperateUtils.this.n0();
            } else {
                FileOperateUtils.this.j0(this.b, false);
            }
        }

        @Override
        public void b() {
            Log.d("visha_FileOperateUtils", "preRename operateCancel, path" + FileOperateUtils.this.c.data + ",\n" + BaseConstant.f + ",\n" + BaseConstant.g);
            ToastUtils.s(R.string.operation_fail);
        }
    }

    public class h implements s08 {
        public final boolean a;
        public final boolean b;

        public h(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }

        @Override
        public void a() {
            Log.d("visha_FileOperateUtils", "preRename operateContinue isRename:" + this.a);
            if (this.a) {
                FileOperateUtils.this.n0();
            } else {
                FileOperateUtils.this.j0(this.b, false);
            }
        }

        @Override
        public void b() {
            Log.d("visha_FileOperateUtils", "preRename operateCancel, path" + FileOperateUtils.this.c.data + ",\n" + BaseConstant.f + ",\n" + BaseConstant.g);
            ToastUtils.s(R.string.operation_fail);
        }
    }

    public class i extends AlertDialogFragment {
    }

    public class j extends AlertDialogFragment {
    }

    public interface k {
        default void a(double d) {
        }

        default void b() {
        }

        default void c(PrivateFile privateFile) {
        }

        void d();

        default void e() {
        }

        default void f() {
        }

        void g(String str, String str2);

        default void h() {
        }

        default void i() {
        }
    }

    public class l implements AlertDialogFragment.RenameDialogFragment.d {
        public String a;

        public l(String str) {
            this.a = str;
        }

        public static void f(Boolean bool) {
            if (bool.booleanValue()) {
                return;
            }
            vmb.c("visha_FileOperateUtils", "videoRename db sync failed");
        }

        @Override
        public void a(String str) {
            String str2;
            if (FileOperateUtils.this.c == null) {
                return;
            }
            String str3 = FileOperateUtils.this.c.data;
            String str4 = FileOperateUtils.L(str3) + "/" + str + this.a;
            File file = new File(str4);
            if (file.exists()) {
                vmb.e("visha_FileOperateUtils", "rename,new file is exist.");
                ToastUtils.w(FileOperateUtils.this.b.getResources().getString(R.string.already_exists, str));
                return;
            }
            if (!pp3.j && Build.VERSION.SDK_INT >= 30) {
                FileOperateUtils.this.n = str;
                FileOperateUtils.this.c0(1238, FileOperateUtils.this.n.trim() + this.a);
                return;
            }
            File file2 = new File(str3);
            if (!file2.renameTo(file) && !nx8.q(FileOperateUtils.this.b, file2, file.getName())) {
                ToastUtils.s(R.string.operation_fail);
                return;
            }
            if (FileOperateUtils.this.f == null) {
                FileOperateUtils fileOperateUtils = FileOperateUtils.this;
                fileOperateUtils.f = new zl6(fileOperateUtils.b);
            }
            uq3.b(true);
            FileOperateUtils.this.f.j(str4, str3);
            MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenReName(str3, str4);
            MediaItem mediaItem = FileOperateUtils.this.c;
            if (FileOperateUtils.this.l) {
                str2 = str;
            } else {
                str2 = str + this.a;
            }
            mediaItem.setDisplayName(str2);
            FileOperateUtils.this.c.data = str4;
            mc7.D(new Callable() {
                @Override
                public final Object call() {
                    return this.b.e();
                }
            }).g(((BaseActivity) FileOperateUtils.this.b).bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    FileOperateUtils.l.f((Boolean) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    vmb.d("visha_FileOperateUtils", "videoRename db sync error", (Throwable) obj);
                }
            });
            if (FileOperateUtils.this.e != null) {
                k kVar = FileOperateUtils.this.e;
                if (!FileOperateUtils.this.l) {
                    str = str + this.a;
                }
                kVar.g(str, str4);
            }
            if (FileOperateUtils.this.l) {
                PlayAudioListData.getInstance().synRename(str3, str4);
            }
            h27.c().e(1072, new Object[0]);
            h27.c().e(1110, str3, str4);
            Log.i("visha_FileOperateUtils", "rename success.");
        }

        public final Boolean e() {
            return Boolean.valueOf(tpb.j0().C(FileOperateUtils.this.c));
        }
    }

    public interface m {
        void a();

        void b();

        void c(int i);

        void d();

        void e(long j);

        void f();

        void g();
    }

    public FileOperateUtils(Context context, MediaItem mediaItem) {
        this.j = new ArrayList();
        this.s = new f();
        this.c = mediaItem;
        O(context);
    }

    public static String J(int i2) {
        return String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2));
    }

    public static String L(String str) {
        int iLastIndexOf = str == null ? -1 : str.lastIndexOf("/");
        return iLastIndexOf >= 0 ? str.substring(0, iLastIndexOf) : "";
    }

    public static void g0(boolean z, Context context, int i2, DialogInterface.OnClickListener onClickListener) {
        String string;
        int i3;
        if (context == null) {
            return;
        }
        if (!z) {
            if (i2 == 1) {
                i3 = R.string.visha_clear_single_view_record_hint;
            } else {
                string = context.getString(R.string.visha_clear_multiple_view_records_hint, Integer.valueOf(i2));
            }
            new com.transsion.widgetslib.dialog.d.a(context).k(string).u(R.string.clear, onClickListener).m(R.string.cancel, new j()).a().show();
        }
        i3 = R.string.visha_clear_all_view_records_hint;
        string = context.getString(i3);
        new com.transsion.widgetslib.dialog.d.a(context).k(string).u(R.string.clear, onClickListener).m(R.string.cancel, new j()).a().show();
    }

    public static void h0(Context context, int i2, DialogInterface.OnClickListener onClickListener) {
        if (context == null) {
            return;
        }
        new com.transsion.widgetslib.dialog.d.a(context).k(context.getString(R.string.visha_delete_cloud_files_confirm, i2 + "")).u(R.string.delete, onClickListener).m(R.string.cancel, new i()).a().show();
    }

    public void A() {
        BaseActivity baseActivity = (BaseActivity) this.b;
        k kVar = this.e;
        if (kVar != null) {
            kVar.f();
        }
        mc7.K(this.k ? this.j : this.c).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.P(obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.R((Throwable) obj);
            }
        });
    }

    public void B(final boolean z) {
        MediaItem mediaItem = this.c;
        if (mediaItem != null) {
            this.l = MediaItem.MediaType.AUDIO.equals(mediaItem.type);
        } else {
            ArrayList arrayList = this.j;
            if (arrayList != null && arrayList.size() > 0) {
                this.l = MediaItem.MediaType.AUDIO.equals(((MediaItem) this.j.get(0)).type);
            }
        }
        String str = "videolist";
        if (!z) {
            if (!TextUtils.isEmpty(this.p)) {
                str = this.p;
            } else if (this.l) {
                str = "audiolist";
            }
            qz5.c("deny", str, af9.i);
            return;
        }
        if (!TextUtils.isEmpty(this.p)) {
            str = this.p;
        } else if (this.l) {
            str = "audiolist";
        }
        qz5.c("allow", str, af9.i);
        BaseActivity baseActivity = (BaseActivity) this.b;
        k kVar = this.e;
        if (kVar != null) {
            kVar.f();
        }
        mc7.K(this.k ? this.j : this.c).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.S(obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.T((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.U(z, (Throwable) obj);
            }
        });
    }

    public void C(MediaItem mediaItem) {
        if (mediaItem == null) {
            return;
        }
        boolean z = this.l;
        if (!z) {
            tpb.j0().X(mediaItem.id, mediaItem.data);
            if (tpb.j0().T(mediaItem.data)) {
                tpb.j0().j(false, mediaItem);
                h27.c().e(1053, new Object[0]);
                return;
            }
            return;
        }
        if (this.i != 31) {
            if (z) {
                y(mediaItem);
            }
        } else {
            ao aoVarU = ao.U();
            int i2 = mediaItem.id;
            String str = mediaItem.data;
            if (str == null) {
                str = "";
            }
            aoVarU.k(i2, str);
        }
    }

    public void D(boolean z) {
        com.transsion.widgetslib.dialog.c cVarE = new com.transsion.widgetslib.dialog.c(this.b).j(this.b.getResources().getString(R.string.privacy_delete_dialog_message_progress, Integer.valueOf(z ? this.j.size() : 1))).e(false);
        this.g = cVarE.l();
        ArrayList arrayList = new ArrayList();
        if (this.k) {
            arrayList.addAll(nr3.h(this.j));
        } else {
            arrayList.add(nr3.g(this.c));
        }
        tg8.d().a(arrayList, new c(cVarE));
    }

    public final boolean E(MediaItem mediaItem) {
        boolean zF = true;
        if (this.i != 1) {
            if (tr4.c(mediaItem.data)) {
                zF = tr4.a(new File(mediaItem.data));
            } else {
                File file = new File(mediaItem.data);
                if (!file.canWrite() || !file.delete()) {
                    zF = nx8.f(this.b, file);
                    if (file.exists()) {
                        zF = false;
                    }
                }
            }
        }
        if (zF) {
            if (mediaItem != null && !this.l) {
                tpb.j0().X(mediaItem.id, mediaItem.data);
            } else if (this.i == 31) {
                ao aoVarU = ao.U();
                int i2 = mediaItem.id;
                String str = mediaItem.data;
                if (str == null) {
                    str = "";
                }
                aoVarU.k(i2, str);
            }
        }
        if (zF && !this.l) {
            h27.c().e(1152, mediaItem.data);
        }
        return zF;
    }

    public final void F(boolean z) {
        if (!z) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    ToastUtils.s(R.string.some_delete_fail);
                    if (FileOperateUtils.this.e != null) {
                        FileOperateUtils.this.e.h();
                    }
                }
            });
            return;
        }
        if (this.i != 1) {
            if (this.k) {
                Iterator it = this.j.iterator();
                while (it.hasNext()) {
                    C((MediaItem) it.next());
                }
            } else {
                C(this.c);
            }
        }
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                if (FileOperateUtils.this.e != null) {
                    FileOperateUtils.this.e.d();
                }
            }
        });
        h27.c().e(1072, new Object[0]);
        h27.c().e(1109, new Object[0]);
    }

    public final void G(Dialog dialog) {
        if (dialog == null) {
            return;
        }
        try {
            Context context = this.b;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity.isFinishing()) {
                    return;
                }
                if (activity.isDestroyed()) {
                    return;
                }
            }
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        } catch (Exception e2) {
            Log.w("visha_FileOperateUtils", "dismissDialogSafely: " + e2.getMessage());
        }
    }

    public final void H() {
        PopupWindow popupWindow = this.d;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.d.dismiss();
    }

    public final void I() {
        G(this.g);
    }

    public int K() {
        AudioManager audioManager = this.m;
        return (int) (((audioManager != null ? audioManager.getStreamVolume(3) : 0) * 100.0f) / this.t);
    }

    public com.transsion.widgetslib.dialog.d M() {
        return this.g;
    }

    public void N(boolean z) {
        com.transsion.widgetslib.dialog.c cVarE = new com.transsion.widgetslib.dialog.c(this.b).j(this.b.getResources().getString(R.string.privacy_hide_dialog_message_progress, Integer.valueOf(z ? this.j.size() : 1))).e(false);
        this.g = cVarE.l();
        ArrayList arrayList = new ArrayList();
        if (this.k) {
            arrayList.addAll(nr3.d(this.j));
        } else {
            arrayList.add(nr3.c(this.c));
        }
        tg8.d().f(arrayList, new e(cVarE));
    }

    public final void O(Context context) {
        this.b = context;
        if (context != null) {
            this.m = (AudioManager) context.getApplicationContext().getSystemService("audio");
        }
        Context context2 = this.b;
        if (context2 == null || context2.getResources() == null) {
            this.h = 0;
        } else {
            this.h = this.b.getResources().getDimensionPixelOffset(R.dimen.video_setting_window_height);
        }
        Log.d("visha_FileOperateUtils", "init: mDialogHeight = " + this.h);
    }

    public final Boolean P(Object obj) {
        if (this.k) {
            Iterator it = this.j.iterator();
            while (it.hasNext()) {
                C((MediaItem) it.next());
            }
        } else {
            C(this.c);
        }
        return Boolean.TRUE;
    }

    public final void Q(Boolean bool) {
        k kVar = this.e;
        if (kVar != null) {
            kVar.d();
        }
    }

    public final void R(Throwable th) {
        Log.e("visha_FileOperateUtils", "deleteOperation " + th);
        k kVar = this.e;
        if (kVar != null) {
            kVar.h();
        }
    }

    public final Boolean S(Object obj) {
        if (this.k) {
            Iterator it = this.j.iterator();
            while (it.hasNext()) {
                C((MediaItem) it.next());
            }
        } else {
            C(this.c);
        }
        return Boolean.TRUE;
    }

    public final void T(Boolean bool) {
        k kVar = this.e;
        if (kVar != null) {
            kVar.d();
        }
    }

    public final void U(boolean z, Throwable th) {
        Log.e("visha_FileOperateUtils", "deleteOperation " + z + StringUtils.COMMA + th);
        k kVar = this.e;
        if (kVar != null) {
            kVar.h();
        }
    }

    public void V() {
        String str;
        String strSubstring;
        ArrayList arrayList = new ArrayList();
        if (this.k) {
            dp3.e().j(this.j);
            arrayList = this.j;
        } else {
            arrayList.add(this.c);
            dp3.e().i(this.c);
        }
        Log.d("visha_FileOperateUtils", "<moveToXHide> selectMediaItems size =" + arrayList.size());
        if (arrayList.size() == 0) {
            return;
        }
        int[] iArr = new int[arrayList.size()];
        int[] iArr2 = new int[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            MediaItem mediaItem = (MediaItem) arrayList.get(i2);
            if (mediaItem != null && (str = mediaItem.mineType) != null) {
                iArr[i2] = mediaItem.id;
                try {
                    strSubstring = str.substring(0, str.indexOf("/"));
                } catch (Exception e2) {
                    Log.d("visha_FileOperateUtils", "<moveToXHide> typeID get fail", e2);
                    strSubstring = "";
                }
                if ("video".equals(strSubstring)) {
                    iArr2[i2] = 31;
                } else if ("audio".equals(strSubstring)) {
                    iArr2[i2] = 32;
                }
            }
        }
        if (!pp3.v()) {
            Intent intent = new Intent();
            intent.setComponent(ComponentName.unflattenFromString("com.xui.xhide/com.xui.xhide.shortcut.HideService"));
            intent.putExtra(FontsContractCompat.Columns.FILE_ID, iArr);
            intent.putExtra("type", iArr2);
            this.b.startService(intent);
            return;
        }
        try {
            FileToXHideUtils.g.a().j(iArr, iArr2);
        } catch (Exception e3) {
            Log.e("visha_FileOperateUtils", "moveToXHide " + e3);
            ToastUtils.s(R.string.operation_fail);
        }
    }

    public void W(String str) {
        if (TextUtils.isEmpty(tg8.d().e())) {
            try {
                Intent intent = new Intent("com.transsion.tools.activities.PasswordSettingActivity");
                intent.setPackage(se.a().getPackageName());
                if (TextUtils.equals(str, "video")) {
                    intent.putExtra("privacy_from_page", 7);
                } else {
                    intent.putExtra("privacy_from_page", 1);
                }
                ((Activity) this.b).startActivityForResult(intent, 1246);
            } catch (Exception e2) {
                Log.e("visha_FileOperateUtils", "onClickHide " + e2);
            }
        } else {
            if (this.k) {
                if (this.j == null) {
                    return;
                }
            } else if (this.c == null) {
                return;
            }
            m0();
        }
        p06.c0(str, "vd_vmore_hide_cl", 9324L);
    }

    public void X(FileOperateItem fileOperateItem, String str, boolean z) {
        int flag = fileOperateItem.getFlag();
        if (flag == 1) {
            if (pp3.p) {
                x(str);
            } else {
                k kVar = this.e;
                if (kVar != null) {
                    kVar.e();
                }
                V();
            }
            p06.c0(str, "vd_vmore_hide_cl", 9324L);
            return;
        }
        if (flag != 2) {
            if (flag == 4) {
                MediaItem mediaItem = this.c;
                if (mediaItem == null) {
                    return;
                }
                if (mediaItem.isYoutubeUrl) {
                    rr3.c(mediaItem.originUrl, this.b);
                } else {
                    rr3.a(mediaItem.mineType, mediaItem.getUri(), this.b);
                }
                p06.c0(str, "vd_vmore_share_cl", 9324L);
                return;
            }
            if (flag != 5) {
                if (flag == 6) {
                    l0(false, null);
                    p06.c0(str, "vd_vmore_info_cl", 9324L);
                    return;
                }
                if (flag == 10) {
                    p06.d0("vd_vmore_tomp3_cl");
                    MediaItem mediaItem2 = this.c;
                    if (mediaItem2 == null || mediaItem2.data == null || !lpb.i(mediaItem2)) {
                        ToastUtils.s(R.string.trans_mp3_error1);
                        return;
                    } else {
                        h16.e("更多菜单");
                        o5b.j((BaseActivity) this.b, this.c);
                        return;
                    }
                }
                if (flag != 12) {
                    if (flag != 1003) {
                        return;
                    }
                }
            }
            this.p = z ? "videolist" : "audiolist";
            if (z) {
                kz5.g("vd_vmore_del_cl", true);
            }
            Y(false, z);
            return;
        }
        Y(true, z);
        this.p = z ? "videolist" : "audiolist";
        p06.c0(str, "vd_vmore_rename_cl", 9324L);
    }

    public void Y(boolean z, boolean z2) {
        MediaItem mediaItem = this.c;
        if (mediaItem == null) {
            Log.w("visha_FileOperateUtils", "preRename fail");
            return;
        }
        if (!nx8.b((Activity) this.b, mediaItem.data) && this.i != 1) {
            nx8.e((Activity) this.b, this.c.data, new g(z, z2));
        } else if (z) {
            n0();
        } else {
            j0(z2, false);
        }
    }

    public void Z(boolean z, boolean z2, String str) {
        MediaItem mediaItem = this.c;
        if (mediaItem == null) {
            Log.w("visha_FileOperateUtils", "preRename fail");
            return;
        }
        if (!nx8.b((Activity) this.b, mediaItem.data) && this.i != 1) {
            nx8.e((Activity) this.b, this.c.data, new h(z, z2));
            return;
        }
        Log.d("visha_FileOperateUtils", "preRename show:");
        if (z) {
            n0();
        } else {
            k0(z2, false, str);
        }
    }

    public final boolean a0(MediaItem mediaItem, String str) {
        return nx8.q(this.b, new File(mediaItem.data), str);
    }

    public void b0(String str) {
        MediaItem mediaItem = this.c;
        if (mediaItem == null) {
            return;
        }
        String str2 = mediaItem.data;
        int iLastIndexOf = str2 == null ? -1 : str2.lastIndexOf(Consts.DOT);
        this.o = "";
        if (str2 != null && iLastIndexOf > 0 && str2.lastIndexOf("/") < iLastIndexOf) {
            this.o = str2.substring(iLastIndexOf);
        }
        String str3 = L(str2) + "/" + str + this.o;
        File file = new File(str2);
        File file2 = new File(str3);
        if (TextUtils.equals(str2, str3)) {
            this.b.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
            uq3.b(true);
            k kVar = this.e;
            if (kVar != null) {
                if (!this.l) {
                    str = str + this.o;
                }
                kVar.g(str, str3);
            }
            h27.c().e(1072, new Object[0]);
            h27.c().e(1110, str2, str3);
            return;
        }
        if (file2.exists()) {
            Log.i("visha_FileOperateUtils", "rename,new file is exist.");
            ToastUtils.w(this.b.getResources().getString(R.string.already_exists, str));
            return;
        }
        if (!pp3.j && Build.VERSION.SDK_INT >= 30) {
            this.n = str;
            c0(1238, this.n.trim() + this.o);
            return;
        }
        if (!file.renameTo(file2) && !nx8.q(this.b, file, file2.getName())) {
            ToastUtils.s(R.string.operation_fail);
            return;
        }
        if (this.f == null) {
            this.f = new zl6(this.b);
        }
        uq3.b(true);
        this.f.j(str3, str2);
        MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenReName(str2, str3);
        k kVar2 = this.e;
        if (kVar2 != null) {
            if (!this.l) {
                str = str + this.o;
            }
            kVar2.g(str, str3);
        }
        h27.c().e(1072, new Object[0]);
        h27.c().e(1110, str2, str3);
        Log.i("visha_FileOperateUtils", "rename  success.");
    }

    public void c0(int i2, String str) {
        ArrayList arrayList = new ArrayList();
        if (this.k) {
            for (final MediaItem mediaItem : this.j) {
                if (!MediaItem.MediaType.OTHERS.equals(mediaItem.type) && !MediaItem.MediaType.SUBTITLE.equals(mediaItem.type) && !tr4.c(mediaItem.data)) {
                    boolean zEquals = MediaItem.MediaType.AUDIO.equals(mediaItem.type);
                    this.l = zEquals;
                    arrayList.add(zEquals ? mediaItem.getUri() : mediaItem.getTransUri());
                } else if (i2 == 1238) {
                    a0(mediaItem, str);
                } else if (i2 == 1239) {
                    if (tr4.c(mediaItem.data)) {
                        ThreadUtils.i(new ThreadUtils.Task<Boolean>() {
                            @Override
                            public void onCancel() {
                            }

                            @Override
                            public void onFail(Throwable th) {
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override
                            public Boolean doInBackground() throws Throwable {
                                return Boolean.valueOf(FileOperateUtils.this.E(mediaItem));
                            }

                            @Override
                            public void onSuccess(Boolean bool) {
                                Log.i("visha_FileOperateUtils", "delete others file " + bool);
                                if (FileOperateUtils.this.e != null) {
                                    FileOperateUtils.this.e.d();
                                }
                            }
                        });
                    } else {
                        z(mediaItem);
                    }
                }
            }
        } else if (!MediaItem.MediaType.OTHERS.equals(this.c.type) && !MediaItem.MediaType.SUBTITLE.equals(this.c.type) && !tr4.c(this.c.data)) {
            boolean zEquals2 = MediaItem.MediaType.AUDIO.equals(this.c.type);
            this.l = zEquals2;
            arrayList.add(zEquals2 ? this.c.getUri() : this.c.getTransUri());
        } else if (i2 == 1238) {
            a0(this.c, str);
        } else if (i2 == 1239) {
            if (tr4.c(this.c.data)) {
                E(this.c);
            } else {
                z(this.c);
            }
        }
        if (arrayList.size() > 0) {
            BasePermissionActivity basePermissionActivity = (BasePermissionActivity) this.b;
            basePermissionActivity.getRequestedOrientation();
            if (basePermissionActivity.getRequestedOrientation() == 6) {
                basePermissionActivity.requestedChangeOrientation(1);
            }
            basePermissionActivity.requestPermissionForAllData(arrayList, i2, this.l);
            return;
        }
        k kVar = this.e;
        if (kVar != null) {
            if (i2 != 1238) {
                if (i2 == 1239) {
                    kVar.d();
                    return;
                }
                return;
            }
            kVar.g(this.l ? this.n : this.n + this.o, str);
        }
    }

    public void d0(boolean z) {
        com.transsion.widgetslib.dialog.c cVarE = new com.transsion.widgetslib.dialog.c(this.b).j(this.b.getResources().getString(R.string.privacy_restore_dialog_message_progress, Integer.valueOf(z ? this.j.size() : 1))).e(false);
        this.g = cVarE.l();
        ArrayList arrayList = new ArrayList();
        if (this.k) {
            arrayList.addAll(nr3.h(this.j));
        } else {
            arrayList.add(nr3.g(this.c));
        }
        tg8.d().i(arrayList, new a(cVarE));
    }

    public void e0(boolean z) {
        this.l = z;
    }

    public void f0(k kVar) {
        this.e = kVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    public void i0() {
        boolean z;
        if (this.k) {
            z = this.j.size() > 1;
        }
        this.g = new com.transsion.widgetslib.dialog.d.a(this.b).k(z ? this.b.getResources().getString(R.string.delete_videos, Integer.valueOf(this.j.size())) : this.b.getResources().getString(R.string.delete_video)).m(R.string.cancel, null).u(R.string.confirm, new b(z)).F();
    }

    public void j0(boolean z, boolean z2) {
        String string;
        String string2;
        String string3;
        int i2 = this.i;
        boolean z3 = false;
        boolean z4 = i2 == 1;
        boolean z5 = i2 == 35;
        if (this.k && this.j.size() > 1) {
            z3 = true;
        }
        if (z5) {
            string3 = this.b.getString(z3 ? R.string.delete_downloaded_dialog_message_multiple : R.string.delete_downloaded_dialog_message);
            string2 = z3 ? this.b.getString(R.string.delete_download_dialog_title_multiple, Integer.valueOf(this.j.size())) : this.b.getString(R.string.delete_download_dialog_title);
        } else if (z4) {
            Context context = this.b;
            string3 = z3 ? context.getString(R.string.clear_histories_recorded, Integer.valueOf(this.j.size())) : context.getString(R.string.clear_history);
            string2 = "";
        } else {
            if (z3) {
                string = this.b.getString(z ? R.string.delete_video_dialog_title_multiple : R.string.delete_music_dialog_title_multiple, Integer.valueOf(this.j.size()));
            } else {
                string = this.b.getString(z ? R.string.delete_video_dialog_title : R.string.delete_music_dialog_title);
            }
            String string4 = this.b.getString(z3 ? R.string.delete_dialog_message_multiple : R.string.delete_dialog_message);
            string2 = string;
            string3 = string4;
        }
        this.l = !z;
        com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.b).B(string2).k(string3).u(z4 ? R.string.clear : R.string.delete, new DeleteListener(z2)).m(R.string.cancel, new DeleteListener(z2)).a();
        this.g = dVarA;
        dVarA.show();
    }

    public void k0(boolean z, boolean z2, String str) {
        String string;
        String string2;
        String string3;
        this.c.data = str;
        int i2 = this.i;
        boolean z3 = false;
        boolean z4 = i2 == 1;
        boolean z5 = i2 == 35;
        if (this.k && this.j.size() > 1) {
            z3 = true;
        }
        if (z5) {
            string3 = this.b.getString(z3 ? R.string.delete_downloaded_dialog_message_multiple : R.string.delete_downloaded_dialog_message);
            string2 = z3 ? this.b.getString(R.string.delete_download_dialog_title_multiple, Integer.valueOf(this.j.size())) : this.b.getString(R.string.delete_download_dialog_title);
        } else if (z4) {
            Context context = this.b;
            string3 = z3 ? context.getString(R.string.clear_histories_recorded, Integer.valueOf(this.j.size())) : context.getString(R.string.clear_history);
            string2 = "";
        } else {
            if (z3) {
                string = this.b.getString(z ? R.string.delete_video_dialog_title_multiple : R.string.delete_music_dialog_title_multiple, Integer.valueOf(this.j.size()));
            } else {
                string = this.b.getString(z ? R.string.delete_video_dialog_title : R.string.delete_music_dialog_title);
            }
            String string4 = this.b.getString(z3 ? R.string.delete_dialog_message_multiple : R.string.delete_dialog_message);
            string2 = string;
            string3 = string4;
        }
        this.l = !z;
        com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.b).B(string2).k(string3).u(z4 ? R.string.clear : R.string.delete, new DeleteListener(z2)).m(R.string.cancel, new DeleteListener(z2)).a();
        this.g = dVarA;
        dVarA.show();
    }

    public void l0(boolean z, AlertDialogFragment.c cVar) {
        String str;
        String strSubstring;
        String str2;
        String str3;
        AlertDialogFragment.b bVar = new AlertDialogFragment.b();
        AlertDialogFragment alertDialogFragmentA = bVar.c(z ? R.layout.dialog_details_video_play : R.layout.dialog_details).a();
        try {
            FragmentManager supportFragmentManager = ((AppCompatActivity) this.b).getSupportFragmentManager();
            bVar.b(R.string.ok).d(R.string.info);
            alertDialogFragmentA.show(supportFragmentManager, "detail_dialog_fragment_tag");
            supportFragmentManager.executePendingTransactions();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        alertDialogFragmentA.setOnDialogDismissListener(cVar);
        if (alertDialogFragmentA.getDialog() != null) {
            RecyclerView recyclerView = (RecyclerView) alertDialogFragmentA.getDialog().findViewById(R.id.rv_bucket_fragment_info);
            InfoAdapter infoAdapter = new InfoAdapter(R.layout.item_bucket_fragment_info);
            recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.b));
            recyclerView.setAdapter(infoAdapter);
            ArrayList arrayList = new ArrayList();
            MediaItem mediaItem = this.c;
            if (mediaItem == null) {
                return;
            }
            String str4 = mediaItem.displayName;
            if (str4 != null) {
                InfoBean infoBean = new InfoBean(R.string.name, str4, 0L);
                infoBean.setMultiLines(true);
                arrayList.add(infoBean);
            }
            MediaItem mediaItem2 = this.c;
            if ((mediaItem2 instanceof AudioItem) && ((AudioItem) mediaItem2).artistName != null) {
                InfoBean infoBean2 = new InfoBean(R.string.singer, ((AudioItem) mediaItem2).artistName, 0L);
                infoBean2.setMultiLines(true);
                arrayList.add(infoBean2);
            }
            MediaItem mediaItem3 = this.c;
            if ((mediaItem3 instanceof AudioItem) && ((AudioItem) mediaItem3).albumName != null) {
                InfoBean infoBean3 = new InfoBean(R.string.audio_edit_album, ((AudioItem) mediaItem3).albumName, 0L);
                infoBean3.setMultiLines(true);
                arrayList.add(infoBean3);
            }
            MediaItem mediaItem4 = this.c;
            if (mediaItem4.isYoutubeUrl && (str3 = mediaItem4.uploaderName) != null) {
                arrayList.add(new InfoBean(R.string.online_video_uploader_name, str3, 0L));
            }
            String str5 = this.c.mineType;
            if (str5 != null) {
                arrayList.add(new InfoBean(R.string.type, str5, 0L));
            }
            long j2 = this.c.duration;
            if (j2 != 0) {
                arrayList.add(new InfoBean(R.string.duration, wna.c(j2), this.c.duration));
            }
            long j3 = this.c.size;
            if (j3 != 0) {
                arrayList.add(new InfoBean(R.string.size, Formatter.formatFileSize(this.b, j3), 0L));
            }
            long j4 = this.c.dateModified;
            if (j4 != 0) {
                arrayList.add(new InfoBean(R.string.date, wna.i(j4), 0L));
            }
            MediaItem mediaItem5 = this.c;
            if (mediaItem5.isYoutubeUrl && (str2 = mediaItem5.originUrl) != null) {
                arrayList.add(new InfoBean(R.string.online_video_original_link, str2, 0L));
            }
            MediaItem mediaItem6 = this.c;
            if (!mediaItem6.isYoutubeUrl && (str = mediaItem6.data) != null) {
                int iLastIndexOf = str.lastIndexOf("/");
                if (this.q) {
                    strSubstring = this.b.getResources().getString(R.string.privacy_space);
                } else {
                    String str6 = this.c.data;
                    if (iLastIndexOf == -1) {
                        iLastIndexOf = str6.length();
                    }
                    strSubstring = str6.substring(0, iLastIndexOf);
                }
                InfoBean infoBean4 = new InfoBean(R.string.path, strSubstring, 0L);
                infoBean4.setMultiLines(true);
                arrayList.add(infoBean4);
            }
            infoAdapter.setNewData(arrayList);
        }
        p06.g0(null, "video_info");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    public void m0() {
        boolean z;
        if (this.k) {
            z = this.j.size() > 1;
        }
        com.transsion.widgetslib.dialog.d dVar = this.g;
        if (dVar == null) {
            this.g = new com.transsion.widgetslib.dialog.d.a(this.b).k(z ? this.b.getResources().getString(R.string.privacy_hide_dialog_message_multiple, Integer.valueOf(this.j.size())) : this.b.getResources().getString(R.string.privacy_hide_dialog_message)).m(R.string.cancel, null).u(R.string.confirm, new d(z)).F();
        } else {
            if (dVar.isShowing()) {
                return;
            }
            this.g.show();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0057 A[PHI: r0
      0x0057: PHI (r0v8 java.lang.String) = (r0v7 java.lang.String), (r0v11 java.lang.String) binds: [B:22:0x0050, B:18:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    public final void n0() {
        String strSubstring;
        String str;
        MediaItem mediaItem = this.c;
        String strSubstring2 = mediaItem.displayName;
        String str2 = mediaItem.data;
        int iLastIndexOf = str2 == null ? -1 : str2.lastIndexOf(Consts.DOT);
        int iLastIndexOf2 = strSubstring2 != null ? strSubstring2.lastIndexOf(Consts.DOT) : -1;
        if (iLastIndexOf > 0 && str2.lastIndexOf("/") < iLastIndexOf) {
            strSubstring = str2.substring(iLastIndexOf);
            if (strSubstring2 != null && strSubstring2.toLowerCase().endsWith(strSubstring.toLowerCase())) {
                strSubstring2 = strSubstring2.substring(0, strSubstring2.length() - strSubstring.length());
            } else if (strSubstring2 == null) {
                strSubstring2 = "";
            }
        } else if (iLastIndexOf2 >= 0) {
            strSubstring = strSubstring2.substring(iLastIndexOf2);
            if (iLastIndexOf2 != 0) {
                strSubstring2 = strSubstring2.substring(0, iLastIndexOf2);
            } else {
                strSubstring2 = "";
            }
        } else {
            MediaItem mediaItem2 = this.c;
            if (mediaItem2.isMusicVideo && (str = mediaItem2.data) != null) {
                int iLastIndexOf3 = str.lastIndexOf(Consts.DOT);
                if (iLastIndexOf3 > 0) {
                    strSubstring = this.c.data.substring(iLastIndexOf3);
                }
            } else if (strSubstring2 == null) {
                strSubstring2 = "";
            }
            strSubstring = "";
        }
        AlertDialogFragment.e eVar = new AlertDialogFragment.e();
        eVar.f(strSubstring2, "");
        AlertDialogFragment.RenameDialogFragment renameDialogFragmentE = eVar.a();
        renameDialogFragmentE.M(new l(strSubstring));
        renameDialogFragmentE.show(((BaseActivity) this.b).getSupportFragmentManager(), "rename_dialog_fragment_tag");
    }

    @Override
    public void onClick(View view) {
        H();
    }

    public void x(String str) {
        if (Build.VERSION.SDK_INT >= 30) {
            if (!Environment.isExternalStorageManager()) {
                t08.a((Activity) this.b);
                return;
            }
        } else if (this.b.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 || this.b.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            t08.m((Activity) this.b, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 132);
            return;
        }
        W(str);
    }

    public void y(MediaItem mediaItem) {
        we6.i();
        AudioItem audioItem = (AudioItem) mediaItem;
        if (ao.U().c0(true, audioItem)) {
            h27.c().e(1055, new Object[0]);
        }
        ao.U().n(audioItem);
        h27.c().e(1071, mediaItem.data);
        if (mediaItem.isMusicVideo) {
            h27.c().e(1158, mediaItem.data);
        }
    }

    public final boolean z(MediaItem mediaItem) {
        if (mediaItem == null) {
            return false;
        }
        File file = new File(mediaItem.data);
        if (file.canWrite() && file.delete()) {
            return true;
        }
        boolean zF = nx8.f(this.b, file);
        if (file.exists()) {
            return false;
        }
        return zF;
    }

    public FileOperateUtils(Context context, MediaItem mediaItem, int i2) {
        this.j = new ArrayList();
        this.s = new f();
        this.c = mediaItem;
        this.i = i2;
        O(context);
    }

    public FileOperateUtils(Context context, ArrayList arrayList, int i2, boolean z) {
        this.j = new ArrayList();
        this.s = new f();
        this.j = arrayList;
        this.i = i2;
        this.k = z;
        O(context);
    }
}
