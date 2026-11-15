package com.transsion.cloud.share;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.provider.FontsContractCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud.share.CloudDriveBottomShareActivity;
import com.transsion.cloud_drive.base.api.model.FileShareLink;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.netdisk.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.share.ShareManager;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.share.model.SharePlatformInfo;
import com.transsion.playercommon.share.view.SocialPlatformAdapter;
import defpackage.bz5;
import defpackage.c74;
import defpackage.db3;
import defpackage.dy0;
import defpackage.e74;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.enums.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@RequiresApi(26)
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 Y2\u00020\u0001:\u0002Z[B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0018\u0010\u0003J\u001d\u0010\u001c\u001a\u00020\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010-\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010(R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010>R\u0016\u0010E\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010>R\u0016\u0010H\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010N\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010FR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W¨\u0006\\"}, d2 = {"Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Landroid/view/View;", "view", "Lzfb;", "t0", "(Landroid/view/View;)V", "E0", "initView", "onResume", "onPause", "onDestroy", "onBackgroundLayoutInit", "y0", "u0", "C0", "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;", "selectedOption", "s0", "(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;)V", "B0", "p0", "D0", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;", "response", "r0", "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V", "", "isLoading", "A0", "(Z)V", "Lnk1;", "N", "Lnk1;", "activityScope", "Landroid/widget/TextView;", "O", "Landroid/widget/TextView;", "tvValidityPeriod", "P", "tvSharingScope", "Q", "tvShareLink", "Landroid/widget/ImageView;", "R", "Landroid/widget/ImageView;", "ivCopyLink", "Landroid/widget/LinearLayout;", ExifInterface.LATITUDE_SOUTH, "Landroid/widget/LinearLayout;", "llValidityPeriod", "T", "llSharingScope", "Landroidx/recyclerview/widget/RecyclerView;", "U", "Landroidx/recyclerview/widget/RecyclerView;", "rvSharePlatforms", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Ljava/lang/String;", "fileId", ExifInterface.LONGITUDE_WEST, Progress.FILE_NAME, "X", "shareId", "Y", "shareUrl", "Z", "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;", "validityPeriod", "", "a0", "I", "validityPeriodDays", "b0", "hasCopiedLink", "Lcom/transsion/playercommon/share/model/ShareContent;", "c0", "Lcom/transsion/playercommon/share/model/ShareContent;", "shareContent", "Landroid/widget/PopupMenu;", "d0", "Lyi5;", "q0", "()Landroid/widget/PopupMenu;", "validityPopupMenu", "e0", "ValidityPeriodOption", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudDriveBottomShareActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public TextView tvValidityPeriod;

    public TextView tvSharingScope;

    public TextView tvShareLink;

    public ImageView ivCopyLink;

    public LinearLayout llValidityPeriod;

    public LinearLayout llSharingScope;

    public RecyclerView rvSharePlatforms;

    public String fileId;

    public String fileName;

    public String shareId;

    public boolean hasCopiedLink;

    public ShareContent shareContent;

    public final nk1 activityScope = d.a(v6a.b(null, 1, null).plus(mc2.c()));

    public String shareUrl = "";

    public ValidityPeriodOption validityPeriod = ValidityPeriodOption.ONE_WEEK;

    public int validityPeriodDays = 7;

    public final yi5 validityPopupMenu = b.a(new c74() {
        @Override
        public final Object invoke() {
            return CloudDriveBottomShareActivity.F0(this.b);
        }
    });

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;", "", "days", "", "stringResId", MethodDecl.initName, "(Ljava/lang/String;III)V", "getDays", "()I", "getStringResId", "ONE_WEEK", "ONE_MONTH", "PERMANENT", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum ValidityPeriodOption {
        ONE_WEEK(7, R.string.visha_one_week),
        ONE_MONTH(30, R.string.visha_one_month),
        PERMANENT(0, R.string.visha_permanent_valid);

        public static final db3 c = a.a(a());
        private final int days;
        private final int stringResId;

        ValidityPeriodOption(int i, int i2) {
            this.days = i;
            this.stringResId = i2;
        }

        public static db3 getEntries() {
            return c;
        }

        public final int getDays() {
            return this.days;
        }

        public final int getStringResId() {
            return this.stringResId;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String str, String str2) {
            y45.j(context, "context");
            y45.j(str, "fileId");
            y45.j(str2, Progress.FILE_NAME);
            Intent intent = new Intent(context, (Class<?>) CloudDriveBottomShareActivity.class);
            intent.putExtra(FontsContractCompat.Columns.FILE_ID, str);
            intent.putExtra("file_name", str2);
            context.startActivity(intent);
        }

        public Companion() {
        }
    }

    private final void E0() {
        TextView textView = this.tvValidityPeriod;
        TextView textView2 = null;
        if (textView == null) {
            y45.B("tvValidityPeriod");
            textView = null;
        }
        textView.setText(getString(this.validityPeriod.getStringResId()));
        TextView textView3 = this.tvShareLink;
        if (textView3 == null) {
            y45.B("tvShareLink");
        } else {
            textView2 = textView3;
        }
        textView2.setText(this.shareUrl);
        p0();
    }

    public static final PopupMenu F0(final CloudDriveBottomShareActivity cloudDriveBottomShareActivity) {
        LinearLayout linearLayout = cloudDriveBottomShareActivity.llValidityPeriod;
        if (linearLayout == null) {
            y45.B("llValidityPeriod");
            linearLayout = null;
        }
        PopupMenu popupMenu = new PopupMenu(cloudDriveBottomShareActivity, linearLayout);
        int i = 0;
        for (Object obj : ValidityPeriodOption.getEntries()) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            popupMenu.getMenu().add(0, i, 0, cloudDriveBottomShareActivity.getString(((ValidityPeriodOption) obj).getStringResId()));
            i = i2;
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return CloudDriveBottomShareActivity.G0(this.a, menuItem);
            }
        });
        return popupMenu;
    }

    public static final boolean G0(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, MenuItem menuItem) {
        cloudDriveBottomShareActivity.s0((ValidityPeriodOption) ValidityPeriodOption.getEntries().get(menuItem.getItemId()));
        return true;
    }

    private final void t0(View view) {
        this.tvValidityPeriod = (TextView) view.findViewById(R.id.tv_validity_period);
        this.tvSharingScope = (TextView) view.findViewById(R.id.tv_sharing_scope);
        this.tvShareLink = (TextView) view.findViewById(R.id.tv_share_link);
        this.ivCopyLink = (ImageView) view.findViewById(R.id.iv_copy_link);
        this.llValidityPeriod = (LinearLayout) view.findViewById(R.id.ll_validity_period);
        this.llSharingScope = (LinearLayout) view.findViewById(R.id.ll_sharing_scope);
        this.rvSharePlatforms = (RecyclerView) view.findViewById(R.id.rv_share_platforms);
        y0();
    }

    public static final void v0(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, View view) {
        dy0.a(cloudDriveBottomShareActivity.shareUrl);
        cloudDriveBottomShareActivity.hasCopiedLink = true;
        bz5.a.c(cloudDriveBottomShareActivity.validityPeriod.getDays());
    }

    public static final void w0(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, View view) {
        cloudDriveBottomShareActivity.C0();
    }

    public static final void x0(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, View view) {
        cloudDriveBottomShareActivity.B0();
    }

    public static final zfb z0(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, SharePlatformInfo sharePlatformInfo) {
        y45.j(sharePlatformInfo, "it");
        ShareContent shareContent = cloudDriveBottomShareActivity.shareContent;
        if (shareContent != null) {
            ShareManager shareManager = ShareManager.a;
            Context baseContext = cloudDriveBottomShareActivity.getBaseContext();
            y45.i(baseContext, "getBaseContext(...)");
            shareManager.e(baseContext, shareContent, sharePlatformInfo.getOption());
        }
        return zfb.a;
    }

    public final void A0(boolean isLoading) {
        ImageView imageView = this.ivCopyLink;
        RecyclerView recyclerView = null;
        if (imageView == null) {
            y45.B("ivCopyLink");
            imageView = null;
        }
        imageView.setEnabled(!isLoading);
        RecyclerView recyclerView2 = this.rvSharePlatforms;
        if (recyclerView2 == null) {
            y45.B("rvSharePlatforms");
        } else {
            recyclerView = recyclerView2;
        }
        recyclerView.setEnabled(!isLoading);
    }

    public final void B0() {
    }

    public final void C0() {
        q0().show();
    }

    public final void D0() {
        String str = this.shareId;
        if (str != null) {
            el0.d(this.activityScope, null, null, new CloudDriveBottomShareActivity$updateShareLink$1$1(this, str, null), 3, null);
        }
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_cloud_drive_share, (ViewGroup) null);
        y45.g(viewInflate);
        addPage(viewInflate).setTitleLayoutVisible(false).setCloseIconVisibility(false);
        this.fileId = getIntent().getStringExtra(FontsContractCompat.Columns.FILE_ID);
        this.fileName = getIntent().getStringExtra("file_name");
        t0(viewInflate);
        u0();
        E0();
    }

    @Override
    public void onBackgroundLayoutInit() {
        super.onBackgroundLayoutInit();
        getRealContainerView().setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.os_altitude_primary_color)));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        d.f(this.activityScope, null, 1, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.hasCopiedLink) {
            KtShareLinkHandleManager.a.m();
            LogUtils.j("CloudDriveBottomShareActivity", "Recorded internal copy timestamp on destroy");
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        bz5.a.f();
    }

    public final void p0() {
        String str = this.fileId;
        if (str != null) {
            el0.d(this.activityScope, null, null, new CloudDriveBottomShareActivity$generateShareLink$1$1(this, str, null), 3, null);
        }
    }

    public final PopupMenu q0() {
        return (PopupMenu) this.validityPopupMenu.getValue();
    }

    public final void r0(ApiResponse response) {
        if (!(response instanceof ApiResponse.Success)) {
            LogUtils.l("CloudDriveBottomShareActivity", "generateShareLink error:");
            return;
        }
        A0(false);
        LogUtils.j("CloudDriveBottomShareActivity", "generateShareLink success: " + response);
        FileShareLink fileShareLink = (FileShareLink) ((ApiResponse.Success) response).getData();
        if (fileShareLink != null) {
            this.shareUrl = fileShareLink.getShareUrl();
            this.shareId = fileShareLink.getShareId();
            TextView textView = this.tvShareLink;
            if (textView == null) {
                y45.B("tvShareLink");
                textView = null;
            }
            textView.setText(this.shareUrl);
            this.shareContent = new ShareContent(this.shareUrl, null, null, null, null, 30, null);
        }
    }

    public final void s0(ValidityPeriodOption selectedOption) {
        this.validityPeriod = selectedOption;
        this.validityPeriodDays = selectedOption.getDays();
        TextView textView = this.tvValidityPeriod;
        if (textView == null) {
            y45.B("tvValidityPeriod");
            textView = null;
        }
        textView.setText(getString(selectedOption.getStringResId()));
        String str = this.shareId;
        if (str == null || str.length() == 0) {
            return;
        }
        D0();
    }

    public final void u0() {
        ImageView imageView = this.ivCopyLink;
        LinearLayout linearLayout = null;
        if (imageView == null) {
            y45.B("ivCopyLink");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CloudDriveBottomShareActivity.v0(this.b, view);
            }
        });
        LinearLayout linearLayout2 = this.llValidityPeriod;
        if (linearLayout2 == null) {
            y45.B("llValidityPeriod");
            linearLayout2 = null;
        }
        linearLayout2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CloudDriveBottomShareActivity.w0(this.b, view);
            }
        });
        LinearLayout linearLayout3 = this.llSharingScope;
        if (linearLayout3 == null) {
            y45.B("llSharingScope");
        } else {
            linearLayout = linearLayout3;
        }
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CloudDriveBottomShareActivity.x0(this.b, view);
            }
        });
    }

    public final void y0() {
        SocialPlatformAdapter socialPlatformAdapter = new SocialPlatformAdapter(ShareManager.a.b(this), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudDriveBottomShareActivity.z0(this.b, (SharePlatformInfo) obj);
            }
        });
        RecyclerView recyclerView = this.rvSharePlatforms;
        if (recyclerView == null) {
            y45.B("rvSharePlatforms");
            recyclerView = null;
        }
        recyclerView.setAdapter(socialPlatformAdapter);
    }
}
