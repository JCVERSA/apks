package com.transsion.transfer.wifi.permission;

import android.content.Intent;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.activity.u;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.bean.PermissionState;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J/\u0010$\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001e2\u000e\u0010!\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0 2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020\t0&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/transfer/wifi/permission/PermissionsActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxt/a;", "<init>", "()V", "", "F0", "J0", "G0", "Lcom/transsion/transfer/wifi/permission/PermissionsBean;", WebConstants.FIELD_ITEM, "I0", "(Lcom/transsion/transfer/wifi/permission/PermissionsBean;)V", "E0", "()Lxt/a;", "", "f0", "()Ljava/lang/String;", "", "n0", "()Z", "isTranslucent", "isStatusDark", "l0", "m0", "k0", "p0", "retryLoadData", "onDestroy", "onResume", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "", "i", "Ljava/util/List;", "mPermissionsList", "Lcom/transsion/transfer/wifi/permission/c;", "j", "Lcom/transsion/transfer/wifi/permission/c;", "permissionsListAdapter", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "currentPermissions", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PermissionsActivity extends BaseNewActivity<xt.a> {

    private c permissionsListAdapter;

    private List mPermissionsList = new ArrayList();

    private String currentPermissions = "";

    public static final class a extends RecyclerView.l {

        final RecyclerView f53831a;

        a(RecyclerView recyclerView) {
            this.f53831a = recyclerView;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            RecyclerView.Adapter adapter;
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null) {
                RecyclerView recyclerView = this.f53831a;
                if (childAdapterPosition == 0 || ((adapter = recyclerView.getAdapter()) != null && adapter.getItemCount() == childAdapterPosition + 1)) {
                    outRect.top = a0.a(16.0f);
                } else {
                    outRect.top = a0.a(8.0f);
                }
            }
        }
    }

    public static final class b extends u {
        b() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            if (d.f53834a.g(PermissionsActivity.this.mPermissionsList)) {
                PermissionsActivity.this.setResult(-1);
            } else {
                PermissionsActivity.this.setResult(0);
            }
            PermissionsActivity.this.finish();
        }
    }

    private final void F0() {
        setResult(-1);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void G0() {
        RecyclerView recyclerView = ((xt.a) getMViewBinding()).f75424c;
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(this));
        recyclerView.addItemDecoration(new a(recyclerView));
        c cVar = new c();
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                PermissionsActivity.H0(this.f53833a, baseQuickAdapter, view, i10);
            }
        });
        this.permissionsListAdapter = cVar;
        ((xt.a) getMViewBinding()).f75424c.setAdapter(this.permissionsListAdapter);
    }

    public static final void H0(PermissionsActivity permissionsActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof PermissionsBean) {
            permissionsActivity.I0((PermissionsBean) item);
        }
    }

    private final void I0(PermissionsBean item) {
        PermissionState state = item.getState();
        PermissionState permissionState = PermissionState.PERMISSION_REQUEST;
        if (state == permissionState || item.getState() == PermissionState.PERMISSION_GRANTED) {
            return;
        }
        cu.c cVar = cu.c.f58656a;
        Intent intent = getIntent();
        cVar.l(intent != null ? intent.getAction() : null, item.getPermission(), permissionState);
        this.currentPermissions = item.getPermission();
        if (!TextUtils.equals("mb.permission.WIFI", item.getPermission()) && ActivityCompat.j(this, item.getPermission())) {
            g.h(g.f53898a, getClassTag() + " --> itemClick() --> 如果是不再询问，那就直接跳转到设置页面", false, 2, null);
            d.f53834a.h(this);
            return;
        }
        String permission = item.getPermission();
        if (Intrinsics.c(permission, "mb.permission.WIFI")) {
            WifiUtils.f53888a.w(this);
            return;
        }
        if (Intrinsics.c(permission, "android.permission.WRITE_SETTINGS")) {
            WifiUtils.f53888a.v(this);
            return;
        }
        d dVar = d.f53834a;
        if (dVar.f(item.getPermission())) {
            return;
        }
        dVar.i(this, item.getPermission(), 101);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    private final void J0() {
        List arrayList;
        Intent intent = getIntent();
        String action = intent != null ? intent.getAction() : null;
        if (action == null) {
            arrayList = new ArrayList();
        } else {
            int iHashCode = action.hashCode();
            if (iHashCode != -726963349) {
                if (iHashCode == -616897536 && action.equals("com.transsion.transfer.wifi.util.send")) {
                    arrayList = d.f53834a.e();
                } else {
                    arrayList = new ArrayList();
                }
            } else if (action.equals("com.transsion.transfer.wifi.util.receive")) {
                arrayList = d.f53834a.c();
            } else {
                arrayList = new ArrayList();
            }
        }
        this.mPermissionsList = arrayList;
        if (!TextUtils.isEmpty(this.currentPermissions)) {
            PermissionState permissionState = d.f53834a.f(this.currentPermissions) ? PermissionState.PERMISSION_GRANTED : PermissionState.PERMISSION_DENIED;
            cu.c cVar = cu.c.f58656a;
            Intent intent2 = getIntent();
            cVar.l(intent2 != null ? intent2.getAction() : null, this.currentPermissions, permissionState);
            this.currentPermissions = "";
        }
        c cVar2 = this.permissionsListAdapter;
        if (cVar2 != null) {
            cVar2.n1(this.mPermissionsList);
        }
        Iterator it = this.mPermissionsList.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            if (((PermissionsBean) it.next()).getState() == PermissionState.PERMISSION_DENIED) {
                z10 = false;
            }
        }
        if (z10) {
            F0();
        }
    }

    @Override
    public xt.a getViewBinding() {
        xt.a aVarC = xt.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        TitleLayout titleLayout = ((xt.a) getMViewBinding()).f75425d;
        String string = getResources().getString(R$string.transfer_wifi_preparations);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        G0();
    }

    @Override
    public void m0() {
        getOnBackPressedDispatcher().i(this, new b());
    }

    @Override
    public boolean n0() {
        return false;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        cu.c cVar = cu.c.f58656a;
        Intent intent = getIntent();
        cVar.m(intent != null ? intent.getAction() : null);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 101) {
            if ((grantResults.length == 0) || grantResults[0] != 0) {
                return;
            }
            if (d.f53834a.g(this.mPermissionsList)) {
                F0();
            } else {
                setResult(0);
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        J0();
    }

    @Override
    public void p0() {
    }

    @Override
    public void retryLoadData() {
    }
}
