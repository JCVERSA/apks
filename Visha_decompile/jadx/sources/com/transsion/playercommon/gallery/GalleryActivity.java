package com.transsion.playercommon.gallery;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.gallery.GalleryActivity;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.CustomViewPager;
import com.transsion.widgetslib.dialog.d;
import defpackage.p06;
import defpackage.pp3;
import defpackage.t08;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.List;

public class GalleryActivity extends BaseActivity implements View.OnClickListener {
    public ImageView N;
    public CustomTabLayout O;
    public CustomViewPager P;
    public List Q;
    public RtlPageAdapter R;
    public View S;
    public View T;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            w6c.r(GalleryActivity.this, "file_permission_show", false);
        }
    }

    private void initView() {
        ImageView imageView = (ImageView) findViewById(R.id.iv_close);
        this.N = imageView;
        imageView.setOnClickListener(this);
        this.O = (CustomTabLayout) findViewById(R.id.tab_layout);
        this.P = (CustomViewPager) findViewById(R.id.vp_content);
        this.T = findViewById(R.id.ll_content);
    }

    private void s0() {
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getSupportFragmentManager(), this.Q, getResources().getStringArray(R.array.image_tabs));
        this.R = rtlPageAdapter;
        this.P.setAdapter(rtlPageAdapter);
        this.P.setOffscreenPageLimit(this.R.getCount());
        this.O.setupWithViewPager(this.P);
        this.O.setTabTextSize(getResources().getDimensionPixelOffset(R.dimen.image_tab_text_size));
    }

    public static void u0(DialogInterface dialogInterface) {
    }

    public void checkFilePermission() {
        if (t08.c(this)) {
            return;
        }
        if (t08.n(this)) {
            showRequestPermissionDialog();
        } else {
            t08.l(this);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1094) {
            return;
        }
        v0(((Boolean) objArr[0]).booleanValue());
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1094);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 69) {
            setResult(-1, intent);
            finish();
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            finish();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_gallery);
        initView();
        r0();
        s0();
        checkFilePermission();
    }

    public final void r0() {
        this.Q = new ArrayList();
        int intExtra = getIntent() != null ? getIntent().getIntExtra("crop_type", 1) : 1;
        this.Q.add((ImageFragment) ImageFragment.U(39, -1L, intExtra).setBaseActivity(this));
        this.Q.add((ImageFolderFragment) ImageFolderFragment.V(intExtra).setBaseActivity(this));
    }

    public void showRequestPermissionDialog() {
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_permission_remind, (ViewGroup) null, false);
            if (Build.VERSION.SDK_INT < 30) {
                ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.permission_only_media_R);
            } else if (pp3.j) {
                ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.permission_all_file_access);
            }
            viewInflate.findViewById(R.id.description).setVisibility(8);
            aVar.E(viewInflate);
            aVar.f(false);
            aVar.m(R.string.cancel, new a());
            aVar.u(R.string.permission_go, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.t0(dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    GalleryActivity.u0(dialogInterface);
                }
            });
            if (this.permissionDialog.isShowing()) {
                return;
            }
            this.permissionDialog.show();
            p06.e0(null, "popup_mediafile2");
        }
    }

    public final void t0(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION);
        if (pp3.j) {
            intent = new Intent(BasePermissionActivity.PERMISSION_ACTION_ALL);
            intent.setData(Uri.parse("package:" + getPackageName()));
        }
        intent.putExtra("packagename", getPackageName());
        try {
            startActivityForResult(intent, BasePermissionActivity.PERMISSION_REQUESTCODE);
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
            intent2.setData(Uri.fromParts("package", getPackageName(), null));
            try {
                startActivityForResult(intent2, BasePermissionActivity.PERMISSION_REQUESTCODE);
            } catch (ActivityNotFoundException e) {
                Log.e("GalleryActivity", e.getMessage());
            }
        }
        p06.f0(null, "popup_mediafile2_y", 9324L);
    }

    public void v0(boolean z) {
        if (z && this.S == null) {
            this.S = ((ViewStub) findViewById(R.id.activity_empty_view)).inflate();
        }
        View view = this.S;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        View view2 = this.T;
        if (view2 != null) {
            view2.setVisibility(z ? 8 : 0);
        }
    }
}
