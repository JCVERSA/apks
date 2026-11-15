package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$string;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DocumentsUtils;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import java.io.File;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u0005J\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0005J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0004¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0004¢\u0006\u0004\b \u0010\u0005R\"\u0010'\u001a\n \"*\u0004\u0018\u00010!0!8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00102\u001a\u00020\u001b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u0010\u001f\"\u0004\b3\u00104R\"\u00108\u001a\u00020\u001b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b5\u00101\u001a\u0004\b6\u0010\u001f\"\u0004\b7\u00104R\u0016\u0010:\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010$R\u0016\u0010<\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00101R\u0016\u0010>\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00101R\u001b\u0010D\u001a\u00020?8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR$\u0010L\u001a\u0004\u0018\u00010E8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR4\u0010S\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020! \"*\n\u0012\u0004\u0012\u00020!\u0018\u00010N0N0M8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\"\u0010V\u001a\u0010\u0012\f\u0012\n \"*\u0004\u0018\u00010T0T0M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010P¨\u0006W"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lf4/a;", "T", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "<init>", "()V", "", "v0", "x0", "w0", "y0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "m0", "", "q0", "()I", "o0", "", "downloadSze", "", "u0", "(J)Z", "G0", "()Z", "F0", "", "kotlin.jvm.PlatformType", "a", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "s0", "()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "E0", "(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)V", "viewModel", "c", "Z", "isRequestPermissionSetting", "D0", "(Z)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "t0", "C0", "isRequestPermissionFirst", "e", "curSDRootPath", "f", "isDocumentTreePermissionChecked", "g", "isDocumentTreePermissionGranted", "Lcom/transsnet/downloader/manager/g;", "h", "Lkotlin/Lazy;", "p0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lyw/b;", "i", "Lyw/b;", "getCurPathInfo", "()Lyw/b;", "B0", "(Lyw/b;)V", "curPathInfo", "Landroidx/activity/result/b;", "", "j", "Landroidx/activity/result/b;", "r0", "()Landroidx/activity/result/b;", "requestStoragePermission", "Landroid/content/Intent;", CampaignEx.JSON_KEY_AD_K, "permissionDocumentBeforeQ", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class DownloadReDetectorBaseFragment<T extends f4.a> extends PageStatusFragment<T> {

    private DownloadResourcesDetectorViewModel viewModel;

    private boolean isRequestPermissionSetting;

    private boolean isDocumentTreePermissionChecked;

    private boolean isDocumentTreePermissionGranted;

    private yw.b curPathInfo;

    private final androidx.activity.result.b requestStoragePermission;

    private final androidx.activity.result.b permissionDocumentBeforeQ;

    private final String TAG = getClass().getSimpleName();

    private boolean isRequestPermissionFirst = true;

    private String curSDRootPath = "";

    private final Lazy downloadManager = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadReDetectorBaseFragment.n0();
        }
    });

    public DownloadReDetectorBaseFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                DownloadReDetectorBaseFragment.A0(this.f57087a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestStoragePermission = bVarRegisterForActivityResult;
        androidx.activity.result.b bVarRegisterForActivityResult2 = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                DownloadReDetectorBaseFragment.z0(this.f57096a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult2, "registerForActivityResult(...)");
        this.permissionDocumentBeforeQ = bVarRegisterForActivityResult2;
    }

    public static final void A0(DownloadReDetectorBaseFragment downloadReDetectorBaseFragment, Map permissions) {
        Intrinsics.h(permissions, "permissions");
        boolean z10 = true;
        for (Map.Entry entry : permissions.entrySet()) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = downloadReDetectorBaseFragment.TAG;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "registerForActivityResult Granted = " + entry.getValue(), false, 4, null);
            if (!((Boolean) entry.getValue()).booleanValue()) {
                z10 = false;
            }
        }
        if (z10) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = downloadReDetectorBaseFragment.TAG;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.f(c0922a2, TAG2, "授权成功", false, 4, null);
            downloadReDetectorBaseFragment.x0();
            return;
        }
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        String TAG3 = downloadReDetectorBaseFragment.TAG;
        Intrinsics.g(TAG3, "TAG");
        wf.a.C0922a.f(c0922a3, TAG3, "授权失败", false, 4, null);
        downloadReDetectorBaseFragment.w0();
    }

    public static final com.transsnet.downloader.manager.g n0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public static final void z0(DownloadReDetectorBaseFragment downloadReDetectorBaseFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            if (it.getData() != null) {
                Intent data = it.getData();
                Intrinsics.e(data);
                if (data.getData() != null) {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    String TAG = downloadReDetectorBaseFragment.TAG;
                    Intrinsics.g(TAG, "TAG");
                    Intent data2 = it.getData();
                    Intrinsics.e(data2);
                    wf.a.C0922a.f(c0922a, TAG, "onStoragePermissionGranted------- uri = " + data2.getData(), false, 4, null);
                    DocumentsUtils documentsUtils = DocumentsUtils.f57670a;
                    Application applicationA = Utils.a();
                    String str = downloadReDetectorBaseFragment.curSDRootPath;
                    Intent data3 = it.getData();
                    Intrinsics.e(data3);
                    Uri data4 = data3.getData();
                    Intrinsics.e(data4);
                    documentsUtils.m(applicationA, str, data4);
                    FragmentActivity fragmentActivityRequireActivity = downloadReDetectorBaseFragment.requireActivity();
                    String packageName = downloadReDetectorBaseFragment.requireActivity().getPackageName();
                    Intent data5 = it.getData();
                    Intrinsics.e(data5);
                    Uri data6 = data5.getData();
                    Intrinsics.e(data6);
                    fragmentActivityRequireActivity.grantUriPermission(packageName, data6, 3);
                    ContentResolver contentResolver = downloadReDetectorBaseFragment.requireActivity().getContentResolver();
                    Intent data7 = it.getData();
                    Intrinsics.e(data7);
                    Uri data8 = data7.getData();
                    Intrinsics.e(data8);
                    contentResolver.takePersistableUriPermission(data8, 3);
                    downloadReDetectorBaseFragment.isDocumentTreePermissionGranted = true;
                    downloadReDetectorBaseFragment.v0();
                    return;
                }
            }
            downloadReDetectorBaseFragment.isDocumentTreePermissionGranted = false;
        }
    }

    protected final void B0(yw.b bVar) {
        this.curPathInfo = bVar;
    }

    protected final void C0(boolean z10) {
        this.isRequestPermissionFirst = z10;
    }

    protected final void D0(boolean z10) {
        this.isRequestPermissionSetting = z10;
    }

    protected final void E0(DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel) {
        this.viewModel = downloadResourcesDetectorViewModel;
    }

    protected final void F0() {
        try {
            Intent intent = null;
            if (Build.VERSION.SDK_INT >= 24) {
                FragmentActivity activity = getActivity();
                Intrinsics.e(activity);
                StorageVolume storageVolume = ((StorageManager) activity.getSystemService(StorageManager.class)).getStorageVolume(new File(this.curSDRootPath));
                if (storageVolume != null) {
                    intent = storageVolume.createAccessIntent(null);
                }
            }
            if (intent == null) {
                intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            }
            this.permissionDocumentBeforeQ.a(intent);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    protected final boolean G0() {
        int i10 = Build.VERSION.SDK_INT;
        if (this.isDocumentTreePermissionChecked) {
            return !this.isDocumentTreePermissionGranted;
        }
        this.isDocumentTreePermissionChecked = true;
        if (i10 <= 28) {
            String strB = "";
            for (yw.f fVar : DownloadSDCardUtil.f57674a.b()) {
                if (fVar.c()) {
                    strB = fVar.b();
                    this.curSDRootPath = strB;
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.TAG;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "onStoragePermissionGranted，1  sdRootPath = " + strB, false, 4, null);
            if (strB.length() > 0) {
                DocumentsUtils documentsUtils = DocumentsUtils.f57670a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                boolean zD = documentsUtils.d(applicationA, strB);
                String TAG2 = this.TAG;
                Intrinsics.g(TAG2, "TAG");
                wf.a.C0922a.f(c0922a, TAG2, " check other permission, showOpenDocumentTree = " + zD, false, 4, null);
                if (zD) {
                    this.isDocumentTreePermissionGranted = false;
                    return true;
                }
            }
        }
        this.isDocumentTreePermissionGranted = true;
        return false;
    }

    protected final String getTAG() {
        return this.TAG;
    }

    public void m0() {
        Fragment parentFragment = getParentFragment();
        DownloadReDetectorMainDialog downloadReDetectorMainDialog = parentFragment instanceof DownloadReDetectorMainDialog ? (DownloadReDetectorMainDialog) parentFragment : null;
        if (downloadReDetectorMainDialog != null) {
            downloadReDetectorMainDialog.dismissAllowingStateLoss();
        }
    }

    public int o0() {
        return getResources().getDisplayMetrics().heightPixels - ((com.blankj.utilcode.util.y.e() * 9) / 16);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.isRequestPermissionFirst = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("download_root_path_permission_first", true);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (this.isRequestPermissionSetting) {
            this.isRequestPermissionSetting = false;
            y0();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        DownloadReDetectorMainDialog downloadReDetectorMainDialog = parentFragment instanceof DownloadReDetectorMainDialog ? (DownloadReDetectorMainDialog) parentFragment : null;
        if (downloadReDetectorMainDialog != null) {
            this.viewModel = (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(downloadReDetectorMainDialog).a(DownloadResourcesDetectorViewModel.class);
        }
        super.onViewCreated(view, savedInstanceState);
    }

    protected final com.transsnet.downloader.manager.g p0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    public int q0() {
        return o0() - com.blankj.utilcode.util.a0.a(116.0f);
    }

    protected final androidx.activity.result.b getRequestStoragePermission() {
        return this.requestStoragePermission;
    }

    protected final DownloadResourcesDetectorViewModel getViewModel() {
        return this.viewModel;
    }

    protected final boolean getIsRequestPermissionFirst() {
        return this.isRequestPermissionFirst;
    }

    public boolean u0(long downloadSze) {
        long jA;
        yw.b bVar = this.curPathInfo;
        if (bVar == null) {
            DownloadEsHelper.a aVar = DownloadEsHelper.f57201m;
            aVar.a().i();
            String strT = aVar.a().t();
            if (strT.length() == 0) {
                return false;
            }
            try {
                jA = com.blankj.utilcode.util.n.j(strT);
            } catch (Throwable unused) {
                return false;
            }
        } else {
            Intrinsics.e(bVar);
            jA = bVar.a();
        }
        Long lW = p0().w();
        if (downloadSze + (lW != null ? lW.longValue() : 0L) < jA) {
            return false;
        }
        fh.b.f60176a.d(R$string.insufficient_storage_available);
        wf.a.f74274a.o("--- 可用存储空间不足，释放空间并重试 ---", true);
        return true;
    }

    public void v0() {
    }

    public void w0() {
    }

    public void x0() {
    }

    public void y0() {
    }
}
