package com.transsion.room.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.widget.NestedScrollView;
import androidx.p009lifecycle.c0;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.a0;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.R$drawable;
import com.transsion.room.R$string;
import com.transsion.room.activity.CreateRoomActivity;
import com.transsion.room.bean.CheckNameBean;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f.j;
import fp.a;
import ij.y;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ni.f;
import yg.l;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u001d8\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0016\u0010%\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001d\u00100\u001a\u0004\u0018\u00010+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010-\u001a\u0004\b3\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010:\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00107R$\u0010H\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00107\u001a\u0004\bE\u0010F\"\u0004\bG\u0010\nR$\u0010L\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u00107\u001a\u0004\bJ\u0010F\"\u0004\bK\u0010\n¨\u0006N"}, d2 = {"Lcom/transsion/room/activity/CreateRoomActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfp/a;", "<init>", "()V", "", "u0", "", "groupId", "t0", "(Ljava/lang/String;)V", "initView", "n0", "path", "C0", "p0", "", "isTranslucent", "()Z", "isStatusDark", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "s0", "()Lfp/a;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "a", "I", "TITLE_MAX", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "DESC_MAX", "c", "Z", "nameExist", "Landroidx/activity/result/b;", "Landroid/content/Intent;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/activity/result/b;", "photoLaunch", "Ljo/a;", "e", "Lkotlin/Lazy;", "q0", "()Ljo/a;", "publishApi", "Lcom/transsion/room/viewmodel/d;", "f", "r0", "()Lcom/transsion/room/viewmodel/d;", "roomCreateModel", "g", "Ljava/lang/String;", "avatorUrl", "h", "bucket", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "i", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "roomItem", "j", "Ljava/lang/Boolean;", "FROM_EDIT", CampaignEx.JSON_KEY_AD_K, "currentGroupId", "l", "getName", "()Ljava/lang/String;", "setName", "name", "m", "getDesc", "setDesc", CampaignEx.JSON_KEY_DESC, "n", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CreateRoomActivity extends BaseActivity<a> {

    private static final String f49337o = "field_from";

    private boolean nameExist;

    private androidx.activity.result.b photoLaunch;

    private RoomItem roomItem;

    private String currentGroupId;

    private String name;

    private String desc;

    private final int TITLE_MAX = 50;

    private final int DESC_MAX = 1000;

    private final Lazy publishApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CreateRoomActivity.A0();
        }
    });

    private final Lazy roomCreateModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CreateRoomActivity.B0();
        }
    });

    private String avatorUrl = "";

    private String bucket = "";

    private Boolean FROM_EDIT = Boolean.FALSE;

    public static final class b implements TextWatcher {
        b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            CreateRoomActivity.this.n0();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            Integer numValueOf = editable != null ? Integer.valueOf(editable.length()) : null;
            if (numValueOf == null || numValueOf.intValue() < CreateRoomActivity.this.DESC_MAX) {
                return;
            }
            h.f40484a.l(CreateRoomActivity.this.getString(R$string.str_community_desc_limit));
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class d implements c0, FunctionAdapter {

        private final Function1 f49353a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49353a = function;
        }

        @Override
        public final Function a() {
            return this.f49353a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f49353a.invoke(obj);
        }
    }

    public static final class e implements uu.a {
        e() {
        }

        @Override
        public void a(String localFilePath, long j10, long j11) {
            Intrinsics.h(localFilePath, "localFilePath");
        }

        @Override
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            CreateRoomActivity.this.avatorUrl = url;
            CreateRoomActivity.this.bucket = bucket;
            CreateRoomActivity.this.n0();
        }

        @Override
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            wf.a.C0922a.g(wf.a.f74274a, "uploadKey: " + str + "; clientMessage:" + str2 + "; serviceMessage: " + str3, false, 2, null);
        }
    }

    public static final jo.a A0() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    public static final com.transsion.room.viewmodel.d B0() {
        return new com.transsion.room.viewmodel.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void C0(String path) {
        f.b bVarC = f.f67269a.m(this).g(path).i(R$drawable.ic_avatar_default).m(a0.a(96.0f)).c(a0.a(96.0f));
        ShapeableImageView ivAvatar = ((a) getMViewBinding()).f60285d;
        Intrinsics.g(ivAvatar, "ivAvatar");
        bVarC.d(ivAvatar);
        uu.c.f73250a.f(path, UploadFileType.OBJECT_NAME_IMAGE, true, new e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        String avatar;
        Bundle extras = getIntent().getExtras();
        RoomItem roomItem = extras != null ? (RoomItem) extras.getParcelable("field_key") : null;
        this.roomItem = roomItem;
        this.currentGroupId = roomItem != null ? roomItem.getGroupId() : null;
        RoomItem roomItem2 = this.roomItem;
        if (roomItem2 != null && (avatar = roomItem2.getAvatar()) != null) {
            f.b bVarC = f.f67269a.m(this).g(avatar).i(R$drawable.ic_avatar_default).m(a0.a(96.0f)).c(a0.a(96.0f));
            ShapeableImageView ivAvatar = ((a) getMViewBinding()).f60285d;
            Intrinsics.g(ivAvatar, "ivAvatar");
            bVarC.d(ivAvatar);
            this.avatorUrl = avatar;
        }
        AppCompatEditText appCompatEditText = ((a) getMViewBinding()).f60284c;
        RoomItem roomItem3 = this.roomItem;
        appCompatEditText.setText(roomItem3 != null ? roomItem3.getName() : null);
        AppCompatEditText appCompatEditText2 = ((a) getMViewBinding()).f60283b;
        RoomItem roomItem4 = this.roomItem;
        appCompatEditText2.setText(roomItem4 != null ? roomItem4.getDescription() : null);
        if (this.roomItem != null) {
            this.FROM_EDIT = Boolean.TRUE;
            ((a) getMViewBinding()).f60287f.setEnabled(true);
        }
        this.photoLaunch = registerForActivityResult(new j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                CreateRoomActivity.y0(this.f59053a, (ActivityResult) obj);
            }
        });
        ((a) getMViewBinding()).f60285d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CreateRoomActivity.z0(this.f59054a, view);
            }
        });
        ((a) getMViewBinding()).f60284c.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.TITLE_MAX)});
        ((a) getMViewBinding()).f60283b.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.DESC_MAX)});
        ((a) getMViewBinding()).f60284c.addTextChangedListener(new b());
        ((a) getMViewBinding()).f60283b.addTextChangedListener(new c());
        ((a) getMViewBinding()).f60287f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CreateRoomActivity.x0(this.f59055a, view);
            }
        });
    }

    public final void n0() {
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                CreateRoomActivity.o0(this.f59056a);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void o0(CreateRoomActivity createRoomActivity) {
        Editable text = ((a) createRoomActivity.getMViewBinding()).f60284c.getText();
        int length = String.valueOf(text != null ? StringsKt.n1(text) : null).length();
        if (length <= 0 || TextUtils.isEmpty(createRoomActivity.avatorUrl)) {
            ((a) createRoomActivity.getMViewBinding()).f60287f.setEnabled(false);
            return;
        }
        ((a) createRoomActivity.getMViewBinding()).f60287f.setEnabled(true);
        if (length >= createRoomActivity.TITLE_MAX) {
            h.f40484a.l(createRoomActivity.getString(R$string.str_community_title_limit));
        }
    }

    private final void p0() {
        if (!Intrinsics.c(this.FROM_EDIT, Boolean.TRUE)) {
            String str = this.name;
            if (str != null) {
                com.transsion.room.viewmodel.d dVarR0 = r0();
                String strValueOf = String.valueOf(this.avatorUrl);
                String str2 = this.desc;
                dVarR0.g(str, strValueOf, str2 != null ? str2 : "", this.bucket);
                return;
            }
            return;
        }
        RoomItem roomItem = this.roomItem;
        String groupId = roomItem != null ? roomItem.getGroupId() : null;
        this.currentGroupId = groupId;
        String str3 = this.name;
        if (str3 == null || groupId == null) {
            return;
        }
        com.transsion.room.viewmodel.d dVarR1 = r0();
        String strValueOf2 = String.valueOf(this.avatorUrl);
        String str4 = this.desc;
        dVarR1.o(groupId, str3, strValueOf2, str4 == null ? "" : str4, this.bucket);
    }

    private final jo.a q0() {
        return (jo.a) this.publishApi.getValue();
    }

    private final com.transsion.room.viewmodel.d r0() {
        return (com.transsion.room.viewmodel.d) this.roomCreateModel.getValue();
    }

    private final void t0(String groupId) {
        Navigator.x(TheRouter.c("/room/detail").K("id", groupId), this, null, 2, null);
    }

    private final void u0() {
        r0().j().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return CreateRoomActivity.v0(this.f59051a, (RoomNet) obj);
            }
        }));
        r0().h().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return CreateRoomActivity.w0(this.f59052a, (CheckNameBean) obj);
            }
        }));
    }

    public static final Unit v0(CreateRoomActivity createRoomActivity, RoomNet roomNet) {
        if (roomNet != null) {
            qi.b logViewConfig = createRoomActivity.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            if (Intrinsics.c(roomNet.getGroupId(), "update")) {
                createRoomActivity.setResult(-1);
                createRoomActivity.finish();
            } else {
                String groupId = roomNet.getGroupId();
                if (groupId != null) {
                    createRoomActivity.t0(groupId);
                    createRoomActivity.setResult(-1);
                    createRoomActivity.finish();
                }
            }
        }
        return Unit.f64096a;
    }

    public static final Unit w0(CreateRoomActivity createRoomActivity, CheckNameBean checkNameBean) {
        if (checkNameBean != null) {
            boolean zIsExist = checkNameBean.isExist();
            createRoomActivity.nameExist = zIsExist;
            if (!zIsExist || TextUtils.equals(checkNameBean.getGroupId(), createRoomActivity.currentGroupId)) {
                createRoomActivity.p0();
            } else {
                fh.b.f60176a.e(createRoomActivity.getString(R$string.str_rooms_duplicate));
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void x0(CreateRoomActivity createRoomActivity, View view) {
        if (!com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) && ((a) createRoomActivity.getMViewBinding()).f60287f.isEnabled()) {
            Editable text = ((a) createRoomActivity.getMViewBinding()).f60284c.getText();
            createRoomActivity.name = String.valueOf(text != null ? StringsKt.n1(text) : null);
            Editable text2 = ((a) createRoomActivity.getMViewBinding()).f60283b.getText();
            createRoomActivity.desc = String.valueOf(text2 != null ? StringsKt.n1(text2) : null);
            if (!l.f76264a.e()) {
                h.f40484a.l(createRoomActivity.getString(com.tn.lib.widget.R$string.no_network_toast));
                return;
            }
            String str = createRoomActivity.name;
            if (str != null) {
                createRoomActivity.r0().e(str);
            }
        }
    }

    public static final void y0(CreateRoomActivity createRoomActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            wf.a.C0922a.f(wf.a.f74274a, "photoLaunch", "fail", false, 4, null);
            return;
        }
        Intent data = it.getData();
        String stringExtra = data != null ? data.getStringExtra("clip_result") : null;
        wf.a.C0922a.f(wf.a.f74274a, "photoLaunch", "result:" + stringExtra, false, 4, null);
        if (stringExtra != null) {
            createRoomActivity.C0(stringExtra);
        }
    }

    public static final void z0(CreateRoomActivity createRoomActivity, View view) {
        Intent intentH;
        androidx.activity.result.b bVar;
        jo.a aVarQ0 = createRoomActivity.q0();
        if (aVarQ0 == null || (intentH = aVarQ0.h(createRoomActivity)) == null || (bVar = createRoomActivity.photoLaunch) == null) {
            return;
        }
        bVar.a(intentH);
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
    public qi.b newLogViewConfig() {
        return new qi.b("createaroom", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        NestedScrollView root = ((a) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
        initView();
        u0();
    }

    @Override
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }
}
