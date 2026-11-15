package com.transsnet.downloader.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.UtilsTransActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

public final class DocumentsUtils {

    public static final DocumentsUtils f57670a = new DocumentsUtils();

    private static final String f57671b = DocumentsUtils.class.getSimpleName();

    private static final List f57672c = new ArrayList();

    private static Function1 f57673d;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ1\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;", "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;", "<init>", "()V", "Lcom/blankj/utilcode/util/UtilsTransActivity;", "activity", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreated", "(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V", "onDestroy", "(Lcom/blankj/utilcode/util/UtilsTransActivity;)V", "Landroid/net/Uri;", "uri", "Landroid/net/Uri;", "Companion", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DocumentsPermissionTransActivityImpl extends UtilsTransActivity.TransActivityDelegate {
        private static final String ROOT_PATH = "extra_root_path";
        private Uri uri;

        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<DocumentsPermissionTransActivityImpl> instance$delegate = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DocumentsUtils.DocumentsPermissionTransActivityImpl.instance_delegate$lambda$2();
            }
        });

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static final void d(String str, Intent intent) {
                intent.putExtra(DocumentsPermissionTransActivityImpl.ROOT_PATH, str);
            }

            public final DocumentsPermissionTransActivityImpl b() {
                return (DocumentsPermissionTransActivityImpl) DocumentsPermissionTransActivityImpl.instance$delegate.getValue();
            }

            public final void c(final String rootPath) {
                Intrinsics.h(rootPath, "rootPath");
                UtilsTransActivity.P(new Utils.b() {
                    @Override
                    public final void accept(Object obj) {
                        DocumentsUtils.DocumentsPermissionTransActivityImpl.Companion.d(rootPath, (Intent) obj);
                    }
                }, b());
            }

            private Companion() {
            }
        }

        public static final DocumentsPermissionTransActivityImpl instance_delegate$lambda$2() {
            return new DocumentsPermissionTransActivityImpl();
        }

        @Override
        public void onActivityResult(UtilsTransActivity activity, int requestCode, int resultCode, Intent data) {
            Intrinsics.h(activity, "activity");
            this.uri = data != null ? data.getData() : null;
            activity.finish();
        }

        @Override
        public void onCreated(UtilsTransActivity activity, Bundle savedInstanceState) {
            Object objM453constructorimpl;
            StorageVolume storageVolume;
            Intrinsics.h(activity, "activity");
            activity.getWindow().addFlags(262160);
            String stringExtra = activity.getIntent().getStringExtra(ROOT_PATH);
            if (stringExtra == null || stringExtra.length() == 0) {
                activity.finish();
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    Intent intent = null;
                    if (Build.VERSION.SDK_INT >= 24 && (storageVolume = ((StorageManager) activity.getSystemService(StorageManager.class)).getStorageVolume(new File(stringExtra))) != null) {
                        intent = storageVolume.createAccessIntent(null);
                    }
                    if (intent == null) {
                        intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
                    }
                    activity.startActivityForResult(intent, 10011);
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                    if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                        activity.finish();
                    }
                }
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
        }

        @Override
        public void onDestroy(UtilsTransActivity activity) {
            Intrinsics.h(activity, "activity");
            Function1 function1 = DocumentsUtils.f57673d;
            if (function1 != null) {
                function1.invoke(this.uri);
            }
        }
    }

    private DocumentsUtils() {
    }

    private final String f(File file, Context context) {
        String[] strArrG = g();
        try {
            int length = strArrG.length;
            for (int i10 = 0; i10 < length; i10++) {
                String canonicalPath = file.getCanonicalPath();
                Intrinsics.g(canonicalPath, "getCanonicalPath(...)");
                if (StringsKt.W(canonicalPath, strArrG[i10], false, 2, null)) {
                    return strArrG[i10];
                }
            }
        } catch (IOException unused) {
        }
        return null;
    }

    private final String[] g() {
        List list = f57672c;
        if (list.size() > 0) {
            return (String[]) list.toArray(new String[0]);
        }
        Iterator it = DownloadSDCardUtil.f57674a.b().iterator();
        while (it.hasNext()) {
            f57672c.add(((yw.f) it.next()).b());
        }
        return (String[]) f57672c.toArray(new String[0]);
    }

    public static final Unit l(Function1 function1, Uri uri) {
        function1.invoke(uri);
        f57673d = null;
        return Unit.f64096a;
    }

    public final boolean c(File file) {
        Intrinsics.h(file, "file");
        boolean z10 = true;
        boolean z11 = false;
        boolean z12 = file.exists() && file.canWrite();
        if (z12 || file.exists()) {
            return z12;
        }
        try {
            try {
                if (file.isDirectory()) {
                    if (!file.mkdirs() || !file.delete()) {
                        z10 = false;
                    }
                } else if (!file.createNewFile() || !file.delete()) {
                    z10 = false;
                }
                z11 = z10;
            } catch (Throwable unused) {
            }
            return z11;
        } catch (IOException e10) {
            e10.printStackTrace();
            return z12;
        }
    }

    public final boolean d(Context context, String rootPath) {
        k1.a aVarH;
        Intrinsics.h(context, "context");
        Intrinsics.h(rootPath, "rootPath");
        File file = new File(rootPath);
        if (file.canWrite()) {
            return false;
        }
        if (j(file, context)) {
            k1.a aVarE = e(file, true, context);
            if (aVarE != null && aVarE.a()) {
                return false;
            }
        } else {
            String string = com.transsion.baselib.report.launch.b.f42221a.b().getString(rootPath, "");
            if (string != null && string.length() != 0 && (aVarH = k1.a.h(context, Uri.parse(string))) != null && aVarH.a()) {
                return false;
            }
        }
        return true;
    }

    public final k1.a e(File file, boolean z10, Context context) {
        String strSubstring;
        boolean z11;
        List listL;
        Intrinsics.h(file, "file");
        Intrinsics.h(context, "context");
        String strF = f(file, context);
        if (strF == null) {
            return null;
        }
        try {
            String canonicalPath = file.getCanonicalPath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getDocumentFile, fullPath = ");
            sb2.append(canonicalPath);
            sb2.append(", baseFolder = ");
            sb2.append(strF);
            if (Intrinsics.c(strF, canonicalPath)) {
                strSubstring = null;
                z11 = true;
            } else {
                Intrinsics.e(canonicalPath);
                strSubstring = canonicalPath.substring(strF.length() + 1);
                Intrinsics.g(strSubstring, "substring(...)");
                z11 = false;
            }
        } catch (IOException unused) {
            return null;
        } catch (Exception unused2) {
        }
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString(strF, "");
        Uri uri = (string == null || string.length() <= 0) ? null : Uri.parse(string);
        if (uri == null) {
            return null;
        }
        k1.a aVarH = k1.a.h(context, uri);
        if (z11) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("originalDirectory, treeUri = ");
            sb3.append(uri);
            return aVarH;
        }
        Intrinsics.e(strSubstring);
        List<String> listSplit = new Regex("/").split(strSubstring, 0);
        if (listSplit.isEmpty()) {
            listL = CollectionsKt.l();
            break;
        }
        ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                listL = CollectionsKt.l();
                break;
            }
            if (listIterator.previous().length() != 0) {
                listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                break;
            }
        }
        String[] strArr = (String[]) listL.toArray(new String[0]);
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            StringBuilder sb4 = new StringBuilder();
            sb4.append("----- = ");
            sb4.append(str);
            Intrinsics.e(aVarH);
            k1.a aVarF = aVarH.f(strArr[i10]);
            if (aVarF != null) {
                aVarH = aVarF;
            } else if (i10 < strArr.length - 1 || z10) {
                String str2 = strArr[i10];
                StringBuilder sb5 = new StringBuilder();
                sb5.append("createDirector DES = ");
                sb5.append(str2);
                aVarH = aVarH.b(strArr[i10]);
            } else {
                String str3 = strArr[i10];
                StringBuilder sb6 = new StringBuilder();
                sb6.append("createFile DES = ");
                sb6.append(str3);
                aVarH = aVarH.c("video", strArr[i10]);
            }
        }
        return aVarH;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003b -> B:19:0x003c). Please report as a decompilation issue!!! */
    public final InputStream h(Context context, File destFile) {
        InputStream inputStreamOpenInputStream;
        Intrinsics.h(context, "context");
        Intrinsics.h(destFile, "destFile");
        try {
            if (c(destFile) || !j(destFile, context)) {
                inputStreamOpenInputStream = new FileInputStream(destFile);
            } else {
                k1.a aVarE = e(destFile, false, context);
                inputStreamOpenInputStream = (aVarE == null || !aVarE.a()) ? null : context.getContentResolver().openInputStream(aVarE.j());
            }
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        }
        return inputStreamOpenInputStream;
    }

    public final OutputStream i(Context context, File destFile, Function1 function1) {
        Intrinsics.h(context, "context");
        Intrinsics.h(destFile, "destFile");
        try {
            if (c(destFile) || !j(destFile, context)) {
                return new FileOutputStream(destFile);
            }
            k1.a aVarE = e(destFile, false, context);
            if (aVarE != null && aVarE.a()) {
                Uri uriJ = aVarE.j();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getOutputStream, file.uri = ");
                sb2.append(uriJ);
                if (function1 != null) {
                    String string = aVarE.j().toString();
                    Intrinsics.g(string, "toString(...)");
                    function1.invoke(string);
                }
                return context.getContentResolver().openOutputStream(aVarE.j());
            }
            return null;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public final boolean j(File file, Context c10) {
        Intrinsics.h(file, "file");
        Intrinsics.h(c10, "c");
        return f(file, c10) != null;
    }

    public final void k(String rootPath, final Function1 callback) {
        Intrinsics.h(rootPath, "rootPath");
        Intrinsics.h(callback, "callback");
        f57673d = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DocumentsUtils.l(callback, (Uri) obj);
            }
        };
        DocumentsPermissionTransActivityImpl.INSTANCE.c(rootPath);
    }

    public final boolean m(Context context, String rootPath, Uri uri) {
        Intrinsics.h(rootPath, "rootPath");
        Intrinsics.h(uri, "uri");
        Intrinsics.e(context);
        k1.a aVarH = k1.a.h(context, uri);
        if (aVarH == null || !aVarH.a()) {
            Log.e(f57671b, "no write permission: " + rootPath);
            return false;
        }
        Log.e(f57671b, "saveTreeUri: rootPath = " + rootPath + "， uri = " + uri);
        com.transsion.baselib.report.launch.b.f42221a.b().putString(rootPath, uri.toString());
        return true;
    }
}
