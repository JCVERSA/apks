package com.transsion.tools.filetrans.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.LocationManager;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.c;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.dbdata.markpoint.MarkFileTransferInfo;
import com.transsion.dbdata.markpoint.a;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.activities.FileTransPermissionSheetDialogActivity;
import com.transsion.tools.filetrans.adapter.FileTransPermissionAdapter;
import com.transsion.vishatransfer.manager.WifiTransferManager;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetslib.dialog.d;
import defpackage.pp3;
import defpackage.t08;
import defpackage.v34;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@RequiresApi(29)
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 22\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0016\u0010\u0003R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010'\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\b\u0012\u0004\u0012\u00020#`$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u0018R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u0018R\u0016\u0010-\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010\u0018R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "y0", "", "isPermission", "D0", "(Z)V", "x0", "v0", "w0", "Q0", "z0", "L0", "P0", "initView", "isFixedHeight", "()Z", "showNotificationPermissionDialog", "onResume", "onDestroy", "N", "Z", "mConfirmClick", "O", "mInitResume", "P", "mNewPermission", "Landroid/view/View;", "Q", "Landroid/view/View;", "mView", "Ljava/util/ArrayList;", "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;", "Lkotlin/collections/ArrayList;", "R", "Ljava/util/ArrayList;", "mPermissionList", ExifInterface.LATITUDE_SOUTH, "mNotificationSystemDialogCanUse", "T", "mLocationSystemDialogCanUse", "U", "mNearBySystemDialogCanUse", "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;", "mPermissionAdapter", ExifInterface.LONGITUDE_WEST, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransPermissionSheetDialogActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public boolean mConfirmClick;

    public boolean mInitResume = true;

    public final boolean mNewPermission;

    public View mView;

    public final ArrayList mPermissionList;

    public boolean mNotificationSystemDialogCanUse;

    public boolean mLocationSystemDialogCanUse;

    public boolean mNearBySystemDialogCanUse;

    public final FileTransPermissionAdapter mPermissionAdapter;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            y45.j(context, "context");
            return c.d() && t08.f(context) && t08.i(context) && (Build.VERSION.SDK_INT >= 33 || b(context)) && !WifiTransferManager.INSTANCE.isHotspotEnabled();
        }

        public final boolean b(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService("location");
            LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
            return locationManager != null && locationManager.isProviderEnabled(DownloadFacadeEnum.USER_GPS);
        }

        public final Intent c(Context context) {
            y45.j(context, "context");
            Intent intent = new Intent();
            intent.putExtra("data", false);
            intent.setClass(context, FileTransPermissionSheetDialogActivity.class);
            return intent;
        }

        public final Intent d(Context context, ArrayList arrayList) {
            y45.j(context, "context");
            y45.j(arrayList, "dataList");
            Intent intent = new Intent();
            intent.putExtra("data", true);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
            intent.setClass(context, FileTransPermissionSheetDialogActivity.class);
            return intent;
        }

        public Companion() {
        }
    }

    public FileTransPermissionSheetDialogActivity() {
        boolean z = Build.VERSION.SDK_INT >= 33;
        this.mNewPermission = z;
        ArrayList arrayListG = y71.g(new FileTransPermissionAdapter.Companion.C0254a(R.drawable.ic_file_trans_notification, R.string.visha_notification_permission, R.string.visha_notification_permission_of_file_trans_info));
        if (z) {
            arrayListG.add(0, new FileTransPermissionAdapter.Companion.C0254a(R.drawable.ic_file_trans_location_device, R.string.visha_location_device, R.string.visha_location_device_info));
        } else {
            arrayListG.add(0, new FileTransPermissionAdapter.Companion.C0254a(R.drawable.ic_file_trans_location, R.string.visha_location_data, R.string.visha_location_data_info));
        }
        this.mPermissionList = new ArrayList(arrayListG);
        this.mNotificationSystemDialogCanUse = true;
        this.mLocationSystemDialogCanUse = true;
        this.mNearBySystemDialogCanUse = true;
        this.mPermissionAdapter = new FileTransPermissionAdapter();
    }

    public static final void A0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransPermissionSheetDialogActivity.animateDismiss();
    }

    public static final void B0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        v34.i();
        try {
            fileTransPermissionSheetDialogActivity.startActivity(new Intent("android.settings.TETHER_SETTINGS"));
        } catch (Exception unused) {
            fileTransPermissionSheetDialogActivity.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        }
    }

    public static final void C0(DialogInterface dialogInterface) {
    }

    public static void E0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        fileTransPermissionSheetDialogActivity.D0(z);
    }

    public static final void F0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransPermissionSheetDialogActivity.animateDismiss();
        MarkFileTransferInfo.a.n(null);
    }

    public static final void G0(boolean z, FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        if (z) {
            fileTransPermissionSheetDialogActivity.x0();
        } else {
            fileTransPermissionSheetDialogActivity.v0();
        }
    }

    public static final void H0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface) {
        MarkFileTransferInfo.a.n(null);
        fileTransPermissionSheetDialogActivity.permissionDialog = null;
    }

    public static final void I0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        try {
            t08.k(fileTransPermissionSheetDialogActivity);
        } catch (Exception unused) {
            PermissionUtils.i();
        }
    }

    public static final void J0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface) {
        fileTransPermissionSheetDialogActivity.permissionDialog = null;
        MarkFileTransferInfo.a.n(null);
    }

    public static final void K0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransPermissionSheetDialogActivity.animateDismiss();
        MarkFileTransferInfo.a.n(null);
    }

    public static final void M0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransPermissionSheetDialogActivity.animateDismiss();
    }

    public static final void N0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransPermissionSheetDialogActivity.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
    }

    public static final void O0(DialogInterface dialogInterface) {
    }

    public static final void t0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, View view) {
        fileTransPermissionSheetDialogActivity.animateDismiss();
    }

    public static final void u0(FileTransPermissionSheetDialogActivity fileTransPermissionSheetDialogActivity, View view) {
        fileTransPermissionSheetDialogActivity.mConfirmClick = true;
        fileTransPermissionSheetDialogActivity.y0();
    }

    public final void D0(final boolean isPermission) {
        TextView textView;
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
            if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
                textView.setText(getString((isPermission && this.mNewPermission && ContextCompat.checkSelfPermission(this, "android.permission.NEARBY_WIFI_DEVICES") != 0) ? R.string.visha_file_trans_location_devices_permission_tips : R.string.visha_file_trans_location_data_permission_tips));
            }
            aVar.E(viewInflate);
            aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.F0(this.b, dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(R.string.continue_with_toast, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.G0(isPermission, this, dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    FileTransPermissionSheetDialogActivity.H0(this.b, dialogInterface);
                }
            });
            this.permissionDialog.show();
        }
    }

    public final void L0() {
        TextView textView;
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
            if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
                textView.setText(getString(R.string.visha_file_trans_wifi_tips, "Wi-Fi"));
            }
            aVar.E(viewInflate);
            aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.M0(this.b, dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(R.string.continue_with_toast, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.N0(this.b, dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    FileTransPermissionSheetDialogActivity.O0(dialogInterface);
                }
            });
            this.permissionDialog.show();
        }
    }

    public final void P0() {
        getIntent().setClass(this, FileTransSheetDialogActivity.class);
        startActivity(getIntent());
        animateDismiss();
    }

    public final void Q0() {
        if (!c.d()) {
            L0();
        } else if (WifiTransferManager.INSTANCE.isHotspotEnabled()) {
            z0();
        } else {
            P0();
        }
    }

    @Override
    public void initView() {
        RecyclerView recyclerView;
        TextView textView;
        TextView textView2;
        super.initView();
        this.mView = View.inflate(this, R.layout.activity_file_trans_permission_sheet_dialog, null);
        FileTransPermissionAdapter fileTransPermissionAdapter = this.mPermissionAdapter;
        ArrayList arrayList = this.mPermissionList;
        y45.h(arrayList, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.tools.filetrans.adapter.FileTransPermissionAdapter.Companion.PermissionItem>");
        fileTransPermissionAdapter.setNewData(arrayList);
        View view = this.mView;
        if (view != null) {
            OSPageView oSPageViewAddPage = addPage(view);
            oSPageViewAddPage.showTitle(true).setCloseIconVisibility(false);
            oSPageViewAddPage.setTitle(R.string.visha_request_permission);
            TextView textView3 = (TextView) view.findViewById(R.id.tv_file_trans_send_info);
            if (textView3 != null) {
                textView3.setText(pp3.c ? R.string.visha_file_trans_send_info_pre : R.string.visha_file_trans_send_info);
            }
        }
        if (view != null && (textView2 = (TextView) view.findViewById(R.id.tv_cancel)) != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    FileTransPermissionSheetDialogActivity.t0(this.b, view2);
                }
            });
        }
        if (view != null && (textView = (TextView) view.findViewById(R.id.tv_confirm)) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    FileTransPermissionSheetDialogActivity.u0(this.b, view2);
                }
            });
        }
        if (view == null || (recyclerView = (RecyclerView) view.findViewById(R.id.rv_file_trans_permission)) == null) {
            return;
        }
        recyclerView.setAdapter(this.mPermissionAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        MarkFileTransferInfo.a.n(null);
        d dVar = this.permissionDialog;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    @Override
    public void onResume() {
        boolean zH;
        super.onResume();
        boolean z = false;
        if (this.mInitResume) {
            this.mInitResume = false;
            return;
        }
        if (this.mConfirmClick) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MarkFileTransferInfo markFileTransferInfo = MarkFileTransferInfo.a;
            Log.i("FileTransPermissionSheetDialogActivity", "[TEST] onResume : " + (jCurrentTimeMillis - markFileTransferInfo.g()));
            boolean z2 = System.currentTimeMillis() - markFileTransferInfo.g() < 200;
            MarkFileTransferInfo.PermissionType permissionTypeF = markFileTransferInfo.f();
            if (permissionTypeF != null) {
                String permission = permissionTypeF.getPermission();
                int iHashCode = permission.hashCode();
                if (iHashCode != -1049482625) {
                    if (iHashCode != 595233003) {
                        if (iHashCode == 1901043637 && permission.equals("location")) {
                            if (z2) {
                                this.mLocationSystemDialogCanUse = false;
                            } else {
                                zH = t08.g(this);
                                z = !zH;
                            }
                        }
                    } else if (permission.equals("notification")) {
                        if (z2) {
                            this.mNotificationSystemDialogCanUse = false;
                        } else {
                            zH = t08.i(this);
                            z = !zH;
                        }
                    }
                } else if (permission.equals("nearby")) {
                    if (z2) {
                        this.mNearBySystemDialogCanUse = false;
                    } else if (this.mNewPermission) {
                        zH = t08.h(this);
                        z = !zH;
                    }
                }
            }
            Log.i("FileTransPermissionSheetDialogActivity", "[TEST] onResume : " + this.mNotificationSystemDialogCanUse);
            a.a.l();
            if (z) {
                animateDismiss();
                return;
            }
            if (!t08.i(this)) {
                y0();
            } else if (t08.f(this) && (this.mNewPermission || INSTANCE.b(this))) {
                Q0();
            } else {
                w0();
            }
        }
    }

    @Override
    public void showNotificationPermissionDialog() {
        TextView textView;
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
            if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
                textView.setText(getString(R.string.visha_file_trans_notification_permission_tips));
            }
            aVar.E(viewInflate);
            aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.K0(this.b, dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(R.string.continue_with_toast, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.I0(this.b, dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    FileTransPermissionSheetDialogActivity.J0(this.b, dialogInterface);
                }
            });
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.NOTIFICATION);
            this.permissionDialog.show();
        }
    }

    public final void v0() {
        startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    public final void w0() {
        if (t08.f(this)) {
            if (this.mNewPermission || INSTANCE.b(this)) {
                Q0();
                return;
            } else {
                D0(false);
                return;
            }
        }
        boolean z = this.mNewPermission;
        if (z && this.mNearBySystemDialogCanUse) {
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.NEARBY);
            requestPermissions(new String[]{"android.permission.NEARBY_WIFI_DEVICES"}, 0);
        } else if (z || !this.mLocationSystemDialogCanUse) {
            E0(this, false, 1, null);
        } else {
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.LOCATION);
            requestPermissions(Build.VERSION.SDK_INT >= 31 ? new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"} : new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 0);
        }
    }

    public final void x0() {
        if (!this.mNewPermission || t08.h(this)) {
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.LOCATION);
            startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        } else {
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.NEARBY);
            PermissionUtils.i();
        }
    }

    public final void y0() {
        if (t08.i(this)) {
            w0();
        } else if (!this.mNewPermission || !this.mNotificationSystemDialogCanUse) {
            showNotificationPermissionDialog();
        } else {
            MarkFileTransferInfo.a.n(MarkFileTransferInfo.PermissionType.NOTIFICATION);
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
        }
    }

    public final void z0() {
        TextView textView;
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
            if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
                textView.setText(getString(R.string.visha_file_trans_need_stop_hot_spot));
            }
            aVar.E(viewInflate);
            aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.A0(this.b, dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(R.string.go_setting, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FileTransPermissionSheetDialogActivity.B0(this.b, dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    FileTransPermissionSheetDialogActivity.C0(dialogInterface);
                }
            });
            this.permissionDialog.show();
        }
    }
}
