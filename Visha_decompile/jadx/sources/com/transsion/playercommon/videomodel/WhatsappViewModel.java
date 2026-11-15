package com.transsion.playercommon.videomodel;

import android.content.Context;
import android.content.UriPermission;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AgentWebPermissions;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.utils.ToastUtils;
import com.transsion.videodownloader.model.Video;
import defpackage.av3;
import defpackage.hb0;
import defpackage.ikc;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.s16;
import defpackage.se;
import defpackage.t74;
import defpackage.vb;
import defpackage.yx2;
import defpackage.zf1;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;

public class WhatsappViewModel extends ViewModel {
    public static final String[] l = {Video.SUFFIX.SUFFIX_MP4, ".avi", ".wmv", ".mpeg", ".m4v", Video.SUFFIX.SUFFIX_MOV, ".asf", ".flv", ".f4v", ".rmvb", ".rm", Video.SUFFIX.SUFFIX_3GP, ".vob", ".jpg", ".jpg", ".png", ".bmp", ".apng", ".gif", ".webp", ".svg", ".psd", ".pcx", ".tga"};
    public static final String[] m;
    public static final String[] n;
    public static final int o;
    public MutableLiveData a = new MutableLiveData();
    public MutableLiveData b = new MutableLiveData();
    public MutableLiveData c = new MutableLiveData();
    public MutableLiveData d = new MutableLiveData();
    public MutableLiveData e = new MutableLiveData();
    public MutableLiveData f = new MutableLiveData();
    public MutableLiveData g = new MutableLiveData();
    public MutableLiveData h = new MutableLiveData();
    public volatile int i = 0;
    public volatile int j = 0;
    public volatile int k = 0;

    public interface a {
        void a(boolean z);
    }

    static {
        String[] strArr = {Video.SUFFIX.SUFFIX_MP4, ".avi", ".wmv", ".mpeg", ".m4v", Video.SUFFIX.SUFFIX_MOV, ".asf", ".flv", ".f4v", ".rmvb", ".rm", Video.SUFFIX.SUFFIX_3GP, ".vob"};
        m = strArr;
        n = new String[]{".jpg", ".png", ".bmp", ".apng", ".gif", ".webp", ".svg", ".psd", ".pcx", ".tga"};
        o = strArr.length;
    }

    public static boolean C(String str) {
        File file = new File(str);
        return file.exists() && file.isDirectory();
    }

    public static void K(Boolean bool) {
    }

    public static void L(a aVar, Boolean bool) {
        if (aVar != null) {
            aVar.a(bool.booleanValue());
        }
    }

    public static Boolean M(Context context, WhatsappFile whatsappFile, WhatsappViewModel whatsappViewModel) {
        boolean zQ = q(context, whatsappFile);
        whatsappFile.setStatus(1);
        if (whatsappFile.getSavePath() != null) {
            MediaScannerConnection.scanFile(se.a(), new String[]{whatsappFile.getSavePath()}, null, null);
        }
        return Boolean.valueOf(zQ);
    }

    public static Boolean O(Context context, WhatsappFile whatsappFile, WhatsappFile whatsappFile2) {
        boolean zQ = q(context, whatsappFile);
        if (whatsappFile.getSavePath() != null) {
            MediaScannerConnection.scanFile(se.a(), new String[]{whatsappFile.getSavePath()}, null, null);
        }
        return Boolean.valueOf(zQ);
    }

    public static void d0(final Context context, final WhatsappFile whatsappFile, final a aVar) {
        mc7.K(whatsappFile).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return WhatsappViewModel.O(context, whatsappFile, (WhatsappFile) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsappViewModel.L(aVar, (Boolean) obj);
            }
        });
    }

    public static String m(String str, String str2) {
        if (C(str)) {
            return str;
        }
        if (C(str2)) {
            return str2;
        }
        return null;
    }

    public static boolean o(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.close();
                            fileInputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        try {
                            fileInputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                fileInputStream.close();
                throw th4;
            }
        } catch (Exception e) {
            LogUtils.m("visha_WhatsappViewModel", "field to copy file", e);
            return false;
        }
    }

    public static boolean p(Context context, Uri uri, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zS = s(context, uri, str);
        p06.n0("dl_wa_content_dl_duration", "duration", (int) (System.currentTimeMillis() - jCurrentTimeMillis));
        return zS;
    }

    public static boolean q(Context context, WhatsappFile whatsappFile) {
        if (whatsappFile.getDocumentFile() != null) {
            String absolutePath = new File(yx2.k, whatsappFile.getDocumentFile().getName()).getAbsolutePath();
            whatsappFile.setSavePath(absolutePath);
            return p(context, whatsappFile.getDocumentFile().getUri(), absolutePath);
        }
        File file = new File(whatsappFile.getFilePath());
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        String absolutePath2 = new File(yx2.k, file.getName()).getAbsolutePath();
        whatsappFile.setSavePath(absolutePath2);
        return r(context, whatsappFile.getFilePath(), absolutePath2);
    }

    public static boolean r(Context context, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zT = t(context, str, str2);
        p06.n0("dl_wa_content_dl_duration", "duration", (int) (System.currentTimeMillis() - jCurrentTimeMillis));
        return zT;
    }

    public static boolean s(Context context, Uri uri, String str) {
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.setLastModified(System.currentTimeMillis());
        return u(context, uri, str);
    }

    public static boolean t(Context context, String str, String str2) {
        File file = new File(str2);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.setLastModified(System.currentTimeMillis());
        return o(new File(str), file);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static boolean u(Context context, Uri uri, String str) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i = inputStreamOpenInputStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.close();
                            inputStreamOpenInputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                throw th4;
            }
        } catch (Exception e) {
            Log.e("visha_WhatsappViewModel", "fileCopyUseDocumentFile exception:" + e.getMessage());
            return false;
        }
    }

    public List A() {
        return (List) this.b.getValue();
    }

    public void B(int i, int i2) {
        if (i2 == 0) {
            this.d.postValue(new b(i, this.i));
        } else if (i2 == 1) {
            this.d.postValue(new b(i, this.k));
        } else {
            this.d.postValue(new b(i, this.j));
        }
    }

    public void D(boolean z, int i) {
        if (i == 0) {
            l(z, i, y((List) this.a.getValue(), z));
            MutableLiveData mutableLiveData = this.a;
            mutableLiveData.postValue((List) mutableLiveData.getValue());
        } else if (i == 1) {
            l(z, i, y((List) this.b.getValue(), z));
            MutableLiveData mutableLiveData2 = this.b;
            mutableLiveData2.postValue((List) mutableLiveData2.getValue());
        } else {
            l(z, i, y((List) this.c.getValue(), z));
            MutableLiveData mutableLiveData3 = this.c;
            mutableLiveData3.postValue((List) mutableLiveData3.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean E() {
        if (this.d.getValue() == 0) {
            return false;
        }
        return ((b) this.d.getValue()).b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean F() {
        return this.e.getValue() != 0 && ((Boolean) this.e.getValue()).booleanValue();
    }

    public final Boolean J(boolean z, BaseActivity baseActivity, WhatsappViewModel whatsappViewModel) {
        WhatsappFile whatsappFile;
        WhatsappFile whatsappFile2;
        this.k = 0;
        this.j = 0;
        this.i = 0;
        String str = z ? ikc.c : ikc.a;
        String str2 = z ? ikc.d : ikc.b;
        int i = Build.VERSION.SDK_INT;
        String strM = i >= 30 ? m(str, str2) : m(str2, str);
        if (strM == null) {
            S();
            return Boolean.FALSE;
        }
        File file = new File(strM);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Log.i("visha_WhatsappViewModel", "[WhatsApp] waPath: " + strM);
        UriPermission uriPermission = null;
        if (i < 30 || ikc.a(baseActivity)) {
            Log.i("visha_WhatsappViewModel", "[WhatsApp] Common");
            for (File file2 : av3.B(file, z, null)) {
                String name = file2.getName();
                int i2 = 0;
                while (true) {
                    String[] strArr = l;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if (name.toLowerCase(Locale.ROOT).endsWith(strArr[i2])) {
                        if (i2 >= o) {
                            whatsappFile = new WhatsappFile(2, file2.getAbsolutePath(), name);
                            arrayList3.add(whatsappFile);
                            File file3 = new File(yx2.k, file2.getName());
                            if (file3.exists() && file3.exists()) {
                                whatsappFile.setStatus(1);
                                whatsappFile.setSavePath(file3.getAbsolutePath());
                            } else {
                                this.j++;
                                this.i++;
                            }
                        } else {
                            whatsappFile = new WhatsappFile(1, file2.getAbsolutePath(), name);
                            arrayList2.add(whatsappFile);
                            File file4 = new File(yx2.k, file2.getName());
                            if (file4.exists() && file4.exists()) {
                                whatsappFile.setStatus(1);
                                whatsappFile.setSavePath(file4.getAbsolutePath());
                            } else {
                                this.k++;
                                this.i++;
                            }
                        }
                        arrayList.add(whatsappFile);
                        break;
                    }
                    i2++;
                }
            }
        } else {
            Log.i("visha_WhatsappViewModel", "[WhatsApp] inner SDK_INT");
            List<UriPermission> persistedUriPermissions = baseActivity.getContentResolver().getPersistedUriPermissions();
            if (persistedUriPermissions == null) {
                S();
                Log.i("visha_WhatsappViewModel", "[WhatsApp] list == null");
                return Boolean.FALSE;
            }
            for (UriPermission uriPermission2 : persistedUriPermissions) {
                if (uriPermission2 != null && uriPermission2.getUri() != null && uriPermission2.getUri().toString().toLowerCase().contains("whatsapp")) {
                    if (uriPermission2.getUri().toString().endsWith(z ? AgentWebPermissions.ACTION_MEDIA : ".Statuses")) {
                        Log.i("visha_WhatsappViewModel", "[WhatsApp] matchUri: " + ((Object) null));
                        uriPermission = uriPermission2;
                        break;
                    }
                }
            }
            if (uriPermission == null) {
                Log.i("visha_WhatsappViewModel", "[WhatsApp] matchUri = null");
                S();
                return Boolean.FALSE;
            }
            for (DocumentFile documentFile : av3.A(DocumentFile.fromTreeUri(baseActivity, uriPermission.getUri()), z)) {
                String name2 = documentFile.getName();
                int i3 = 0;
                while (true) {
                    String[] strArr2 = l;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    if (name2.toLowerCase(Locale.ROOT).endsWith(strArr2[i3])) {
                        if (i3 >= o) {
                            whatsappFile2 = new WhatsappFile(2, name2, documentFile);
                            arrayList3.add(whatsappFile2);
                            File file5 = new File(yx2.k, documentFile.getName());
                            if (file5.exists() && file5.exists()) {
                                whatsappFile2.setStatus(1);
                                whatsappFile2.setSavePath(file5.getAbsolutePath());
                            } else {
                                this.j++;
                                this.i++;
                            }
                        } else {
                            whatsappFile2 = new WhatsappFile(1, name2, documentFile);
                            arrayList2.add(whatsappFile2);
                            File file6 = new File(yx2.k, documentFile.getName());
                            if (file6.exists() && file6.exists()) {
                                whatsappFile2.setStatus(1);
                                whatsappFile2.setSavePath(file6.getAbsolutePath());
                            } else {
                                this.k++;
                                this.i++;
                            }
                        }
                        arrayList.add(whatsappFile2);
                        break;
                    }
                    i3++;
                }
            }
        }
        this.a.postValue(arrayList);
        this.b.postValue(arrayList2);
        this.c.postValue(arrayList3);
        this.d.postValue(new b(0, false, 0));
        s16.d(arrayList.size() == 0 ? 0 : 1, arrayList3.size() == 0 ? 0 : arrayList3.size(), arrayList2.size() != 0 ? arrayList2.size() : 0);
        return Boolean.TRUE;
    }

    public final void N(int i, int i2, WhatsappFile whatsappFile, Boolean bool) {
        p06.d0("dl_wa_content_dl_finish");
        this.h.postValue(Integer.valueOf(i == 0 ? i2 : ((List) this.a.getValue()).indexOf(whatsappFile)));
        if (whatsappFile.isVideo()) {
            MutableLiveData mutableLiveData = this.g;
            if (i != 1) {
                i2 = ((List) this.b.getValue()).indexOf(whatsappFile);
            }
            mutableLiveData.postValue(Integer.valueOf(i2));
            this.k--;
            this.i--;
        } else {
            MutableLiveData mutableLiveData2 = this.f;
            if (i != 1) {
                i2 = ((List) this.c.getValue()).indexOf(whatsappFile);
            }
            mutableLiveData2.postValue(Integer.valueOf(i2));
            this.j--;
            this.i--;
        }
        ToastUtils.s(R.string.wahtsapp_save_finish);
    }

    public final Boolean P(List list, Context context, WhatsappViewModel whatsappViewModel) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            WhatsappFile whatsappFile = (WhatsappFile) list.get(i5);
            if (whatsappFile.isVideo()) {
                i2++;
                this.k--;
                this.i--;
            } else {
                i++;
                this.j--;
                this.i--;
            }
            if (whatsappFile.isSelected) {
                q(context, whatsappFile);
                if (whatsappFile.getSavePath() != null) {
                    arrayList.add(whatsappFile.getSavePath());
                }
                p06.d0("dl_wa_content_dl_finish");
                whatsappFile.setStatus(1);
                this.h.postValue(Integer.valueOf(i5));
                if (whatsappFile.isVideo()) {
                    i4++;
                    this.g.postValue(Integer.valueOf(i2));
                } else {
                    i3++;
                    this.f.postValue(Integer.valueOf(i));
                }
                whatsappFile.isSelected = false;
            }
        }
        MediaScannerConnection.scanFile(se.a(), (String[]) arrayList.toArray(new String[arrayList.size()]), null, null);
        p06.o0("dl_wa_content_mul_cl", hb0.KEY_NAME_NUM, s16.b(i3, i4));
        return Boolean.TRUE;
    }

    public final void Q(Boolean bool) {
        MutableLiveData mutableLiveData = this.b;
        mutableLiveData.postValue((List) mutableLiveData.getValue());
        MutableLiveData mutableLiveData2 = this.a;
        mutableLiveData2.postValue((List) mutableLiveData2.getValue());
        MutableLiveData mutableLiveData3 = this.c;
        mutableLiveData3.postValue((List) mutableLiveData3.getValue());
        ToastUtils.s(R.string.wahtsapp_save_finish);
    }

    public void R() {
        MutableLiveData mutableLiveData = this.b;
        mutableLiveData.postValue((List) mutableLiveData.getValue());
        MutableLiveData mutableLiveData2 = this.a;
        mutableLiveData2.postValue((List) mutableLiveData2.getValue());
        MutableLiveData mutableLiveData3 = this.c;
        mutableLiveData3.postValue((List) mutableLiveData3.getValue());
    }

    public final void S() {
        this.a.postValue(new ArrayList());
        this.b.postValue(new ArrayList());
        this.c.postValue(new ArrayList());
    }

    public void T(LifecycleOwner lifecycleOwner, Observer observer) {
        this.a.observe(lifecycleOwner, observer);
    }

    public void U(LifecycleOwner lifecycleOwner, Observer observer, int i) {
        if (i == 0) {
            this.a.observe(lifecycleOwner, observer);
        } else if (i == 1) {
            Z(lifecycleOwner, observer);
        } else if (i == 2) {
            V(lifecycleOwner, observer);
        }
    }

    public void V(LifecycleOwner lifecycleOwner, Observer observer) {
        this.c.observe(lifecycleOwner, observer);
    }

    public void W(LifecycleOwner lifecycleOwner, int i, Observer observer) {
        if (i == 0) {
            this.h.observe(lifecycleOwner, observer);
        } else if (i == 2) {
            this.f.observe(lifecycleOwner, observer);
        } else {
            this.g.observe(lifecycleOwner, observer);
        }
    }

    public void X(LifecycleOwner lifecycleOwner, Observer observer) {
        this.e.observe(lifecycleOwner, observer);
    }

    public void Y(LifecycleOwner lifecycleOwner, Observer observer) {
        this.d.observe(lifecycleOwner, observer);
    }

    public void Z(LifecycleOwner lifecycleOwner, Observer observer) {
        this.b.observe(lifecycleOwner, observer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a0(int i) {
        b bVar = (b) this.d.getValue();
        if (bVar != null) {
            bVar.b = i == bVar.c;
            bVar.a = i;
            this.d.postValue(bVar);
        }
    }

    public void b0(LifecycleOwner lifecycleOwner) {
        this.a.removeObservers(lifecycleOwner);
        this.b.removeObservers(lifecycleOwner);
        this.c.removeObservers(lifecycleOwner);
    }

    public void c0(final Context context, final WhatsappFile whatsappFile, final int i, final int i2) {
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return WhatsappViewModel.M(context, whatsappFile, (WhatsappViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.N(i, i2, whatsappFile, (Boolean) obj);
            }
        });
    }

    public void e0(final Context context, final List list, int i) {
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.P(list, context, (WhatsappViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q((Boolean) obj);
            }
        });
    }

    public void f0(boolean z) {
        this.e.postValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l(boolean z, int i, int i2) {
        if (i == 0) {
            b bVar = (b) this.d.getValue();
            if (!z || this.a.getValue() == 0) {
                i2 = 0;
            }
            bVar.a = i2;
            bVar.b = z;
            this.d.postValue(bVar);
            return;
        }
        if (i == 1) {
            b bVar2 = (b) this.d.getValue();
            if (!z || this.b.getValue() == 0) {
                i2 = 0;
            }
            bVar2.a = i2;
            bVar2.b = z;
            this.d.postValue(bVar2);
            return;
        }
        b bVar3 = (b) this.d.getValue();
        if (!z || this.c.getValue() == 0) {
            i2 = 0;
        }
        bVar3.a = i2;
        bVar3.b = z;
        this.d.postValue(bVar3);
    }

    public void n(int i) {
        this.e.postValue(Boolean.FALSE);
        if (i == 0) {
            ((List) this.a.getValue()).stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((WhatsappFile) obj).isSelected = false;
                }
            });
        } else if (i == 1) {
            ((List) this.b.getValue()).stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((WhatsappFile) obj).isSelected = false;
                }
            });
        } else {
            ((List) this.c.getValue()).stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((WhatsappFile) obj).isSelected = false;
                }
            });
        }
    }

    public void v(final BaseActivity baseActivity, final boolean z) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.J(z, baseActivity, (WhatsappViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsappViewModel.K((Boolean) obj);
            }
        });
    }

    public List w() {
        return (List) this.a.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b x() {
        return (b) this.d.getValue();
    }

    public final int y(List list, boolean z) {
        int i = 0;
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WhatsappFile whatsappFile = (WhatsappFile) it.next();
            if (!whatsappFile.isSaved()) {
                i++;
                whatsappFile.isSelected = z;
            }
        }
        return i;
    }

    public List z() {
        return (List) this.c.getValue();
    }

    public static class b {
        public int a;
        public boolean b;
        public int c;

        public b(int i, int i2) {
            this.a = i;
            this.c = i2;
            this.b = i == i2;
        }

        public void b(int i) {
            this.c = i;
        }

        public b(int i, boolean z, int i2) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }
}
