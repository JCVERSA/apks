package com.transsion.usercenter.edit;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.noober.background.view.BLConstraintLayout;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.api.RequstUserEntity;
import com.transsion.usercenter.edit.dialog.EditNameDialog;
import com.transsion.usercenter.edit.widget.ProfileEditBar;
import com.transsion.usercenter.kids.DeleteKidsProfileDialog;
import com.transsion.usercenter.kids.PinInputDialog;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import xu.k0;

@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u0095\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002\u0096\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\bJ\u0019\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\bJ\u000f\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\bJ\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0018\u0010\bJ\u000f\u0010\u0019\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0019\u0010\bJ\u000f\u0010\u001a\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001a\u0010\bJ\u000f\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\bJ\u001f\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u001cH\u0002¢\u0006\u0004\b%\u0010#J\u0017\u0010'\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001cH\u0002¢\u0006\u0004\b'\u0010#J\u0019\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010&\u001a\u00020\u001cH\u0002¢\u0006\u0004\b)\u0010*JA\u0010-\u001a\u00020\t2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010!\u001a\u00020\u001c2\b\b\u0002\u0010$\u001a\u00020(2\b\b\u0002\u0010&\u001a\u00020\u001c2\b\b\u0002\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\tH\u0002¢\u0006\u0004\b/\u0010\bJ\u000f\u00100\u001a\u00020\tH\u0002¢\u0006\u0004\b0\u0010\bJ\u000f\u00101\u001a\u00020\tH\u0002¢\u0006\u0004\b1\u0010\bJ\u000f\u00102\u001a\u00020\tH\u0002¢\u0006\u0004\b2\u0010\bJ\u0017\u00104\u001a\u00020\t2\u0006\u00103\u001a\u00020\u001cH\u0002¢\u0006\u0004\b4\u0010#J\u0017\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\u001cH\u0002¢\u0006\u0004\b5\u0010#J\u0017\u00106\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001cH\u0002¢\u0006\u0004\b6\u0010#J\u001f\u00109\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001c2\u0006\u00108\u001a\u000207H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020(2\u0006\u0010$\u001a\u00020\u001cH\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\tH\u0002¢\u0006\u0004\b=\u0010\bJ!\u0010B\u001a\u00020\t2\u0006\u0010?\u001a\u00020>2\b\u0010A\u001a\u0004\u0018\u00010@H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\tH\u0016¢\u0006\u0004\bD\u0010\bJ\u0015\u0010F\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001c¢\u0006\u0004\bF\u0010#J\r\u0010G\u001a\u00020\t¢\u0006\u0004\bG\u0010\bJ\r\u0010H\u001a\u00020\t¢\u0006\u0004\bH\u0010\bJ\u0015\u0010J\u001a\u00020\t2\u0006\u0010I\u001a\u00020+¢\u0006\u0004\bJ\u0010KJ'\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020+H\u0016¢\u0006\u0004\bP\u0010KJ\u0019\u0010S\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bS\u0010TJ#\u0010W\u001a\u00020\t2\b\u0010U\u001a\u0004\u0018\u00010\u001c2\b\u0010V\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\bW\u0010 J\u000f\u0010X\u001a\u00020\tH\u0016¢\u0006\u0004\bX\u0010\bJ\u001f\u0010[\u001a\u00020\t2\u0006\u0010Y\u001a\u00020(2\u0006\u0010Z\u001a\u00020\u001cH\u0016¢\u0006\u0004\b[\u0010\\J\u0019\u0010]\u001a\u00020\t2\b\u0010Z\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b]\u0010#J\u0017\u0010`\u001a\u00020\t2\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b`\u0010aJ\u0017\u0010b\u001a\u00020\t2\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\bb\u0010aJ\u0017\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020cH\u0016¢\u0006\u0004\be\u0010fJ!\u0010\n\u001a\u00020\t2\u0006\u0010?\u001a\u00020>2\b\u0010A\u001a\u0004\u0018\u00010@H\u0016¢\u0006\u0004\b\n\u0010CR\u0014\u0010g\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bg\u0010hR\u0014\u0010i\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bi\u0010hR\u0014\u0010j\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bj\u0010hR\u0014\u0010k\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bk\u0010hR\u0014\u0010l\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bl\u0010hR\u0016\u0010m\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010o\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010hR\u0016\u0010p\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010nR\u0016\u0010q\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010nR\u0016\u0010r\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010nR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010nR\u0016\u0010\u001e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010nR\u0016\u0010s\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010u\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010tR\u0016\u0010v\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010tR\u0016\u0010w\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010|\u001a\u00020{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0016\u0010~\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010tR\u0016\u0010\u007f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010nR\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0082\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010tR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R#\u0010\u008b\u0001\u001a\f\u0012\u0005\u0012\u00030\u008a\u0001\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R#\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008d\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006\u0097\u0001"}, d2 = {"Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/k0;", "Lcom/transsion/usercenter/edit/b;", "Lbv/b$a;", "Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initView", "iniData", "Lcom/transsion/baselib/kids/KidsProfile;", "kidsProfile", "showKidsProfileData", "(Lcom/transsion/baselib/kids/KidsProfile;)V", "setOldData", "Landroid/graphics/Bitmap;", "bitmap", "showEntity", "(Landroid/graphics/Bitmap;)V", "defaultShow", "headPortrait", "headPortraitBitmap", "formattingGender", "nickNameShow", "genderShow", "birthDayShow", "", "avatarUrl", "bucket", "editAvatar", "(Ljava/lang/String;Ljava/lang/String;)V", "name", "editNickName", "(Ljava/lang/String;)V", "gender", "editGender", "birthday", "editBirthday", "", "calcAgeFromBirthday", "(Ljava/lang/String;)Ljava/lang/Integer;", "", "newAvatarPath", "editRequest", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V", "showRequestLoading", "hideRequestLoading", "editTipsDialog", "showDeleteProfileOption", "localPath", "fastAvatar", "localAvatar", "showTimePicker", "Ljava/util/Calendar;", "calendar", "setCurrentBirthDay", "(Ljava/lang/String;Ljava/util/Calendar;)V", "buildGender", "(Ljava/lang/String;)I", "loadProfile", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "imagePath", "uploadImage", "checkBack", "confirmSubmit", "back", "checkEditSubmit", "(Z)V", "data", "onAvatarUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", NotificationCompat.CATEGORY_STATUS, "onEditProfile", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "onUserInfo", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "code", NotificationCompat.CATEGORY_MESSAGE, "onError", "onDestroyView", RequestParameters.POSITION, "result", "onDialogSelect", "(ILjava/lang/String;)V", "onDialogConfirm", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lxu/k0;", "EDIT_AVATAR", "I", "EDIT_NAME", "EDIT_GENDER", "EDIT_REGION", "EDIT_BIRTHDAY", "editText", "Ljava/lang/String;", "editType", "oldNickName", "oldGender", "oldBirth", "isChangeAvatar", "Z", "isClearBirthday", "isClearGender", "isClearRegion", "Lcom/transsion/usercenter/edit/dialog/EditNameDialog;", "editDialog", "Lcom/transsion/usercenter/edit/dialog/EditNameDialog;", "", "respDuration", "J", "retry", "cropImage", "currentKidsProfile", "Lcom/transsion/baselib/kids/KidsProfile;", "isKidsMode", "Lcom/bigkoo/pickerview/view/a;", "timePickerView", "Lcom/bigkoo/pickerview/view/a;", "Lav/b;", "presenter", "Lav/b;", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "photoLaunch", "Landroidx/activity/result/b;", "Ljo/a;", "publishApi$delegate", "Lkotlin/Lazy;", "getPublishApi", "()Ljo/a;", "publishApi", "userEntity", "Lcom/transsnet/loginapi/bean/UserInfo;", "Companion", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileEditCenterFragment extends BaseFragment<k0> implements com.transsion.usercenter.edit.b, bv.b.a, EditNameDialog.a, TRDialogListener {
    private static final String ARG_KIDS_PROFILE = "arg_kids_profile";

    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "ProfileEditCenterFragment";
    private KidsProfile currentKidsProfile;
    private EditNameDialog editDialog;
    private int editType;
    private boolean isChangeAvatar;
    private boolean isClearBirthday;
    private boolean isClearGender;
    private boolean isClearRegion;
    private boolean isKidsMode;
    private androidx.activity.result.b photoLaunch;
    private av.b presenter;
    private long respDuration;
    private boolean retry;
    private com.bigkoo.pickerview.view.a timePickerView;
    private UserInfo userEntity;
    private final int EDIT_AVATAR = 1;
    private final int EDIT_NAME = 2;
    private final int EDIT_GENDER = 3;
    private final int EDIT_REGION = 4;
    private final int EDIT_BIRTHDAY = 5;
    private String editText = "";
    private String oldNickName = "";
    private String oldGender = "";
    private String oldBirth = "";
    private String avatarUrl = "";
    private String bucket = "";
    private String cropImage = "";

    private final Lazy publishApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ProfileEditCenterFragment.publishApi_delegate$lambda$0();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ProfileEditCenterFragment a(UserInfo userInfo, KidsProfile kidsProfile) {
            ProfileEditCenterFragment profileEditCenterFragment = new ProfileEditCenterFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("user", userInfo);
            if (kidsProfile != null) {
                bundle.putParcelable(ProfileEditCenterFragment.ARG_KIDS_PROFILE, kidsProfile);
            }
            profileEditCenterFragment.setArguments(bundle);
            return profileEditCenterFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements io.reactivex.rxjava3.core.o {

        final Ref.ObjectRef f54601a;

        final ProfileEditCenterFragment f54602b;

        b(Ref.ObjectRef objectRef, ProfileEditCenterFragment profileEditCenterFragment) {
            this.f54601a = objectRef;
            this.f54602b = profileEditCenterFragment;
        }

        @Override
        public void onNext(Bitmap file) {
            ShapeableImageView shapeableImageView;
            Intrinsics.h(file, "file");
            k0 mViewBinding = this.f54602b.getMViewBinding();
            if (mViewBinding == null || (shapeableImageView = mViewBinding.f75659n) == null) {
                return;
            }
            shapeableImageView.setImageBitmap(file);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable e10) {
            Intrinsics.h(e10, "e");
            wf.a.C0922a.f(wf.a.f74274a, "localAvatar", "onError e:" + e10, false, 4, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            this.f54601a.element = d10;
        }
    }

    public static final class c implements a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            fh.b.f60176a.d(R$string.profile_saved_fail_retry);
            ProfileEditCenterFragment.this.hideRequestLoading();
        }

        @Override
        public void b(String str, boolean z10, String bucket) {
            Intrinsics.h(bucket, "bucket");
            if (str != null) {
                ProfileEditCenterFragment.this.retry = false;
                ProfileEditCenterFragment profileEditCenterFragment = ProfileEditCenterFragment.this;
                profileEditCenterFragment.onAvatarUrl(str, profileEditCenterFragment.cropImage, bucket);
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.edit.ProfileEditCenterFragment$hideRequestLoading$1", f = "ProfileEditCenterFragment.kt", l = {481}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.usercenter.edit.ProfileEditCenterFragment$hideRequestLoading$1$1", f = "ProfileEditCenterFragment.kt", l = {}, m = "invokeSuspend")
        static final class C06571 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;
            final ProfileEditCenterFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06571(ProfileEditCenterFragment profileEditCenterFragment, Continuation<? super C06571> continuation) {
                super(2, continuation);
                this.this$0 = profileEditCenterFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06571(this.this$0, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                ProgressBar progressBar;
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                k0 mViewBinding = this.this$0.getMViewBinding();
                if (mViewBinding != null && (progressBar = mViewBinding.f75653h) != null) {
                    uf.c.g(progressBar);
                }
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C06571) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ProfileEditCenterFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                a2 a2VarC = y0.c();
                C06571 c06571 = new C06571(ProfileEditCenterFragment.this, null);
                this.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, c06571, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    private final void birthDayShow() {
        String birthday;
        k0 mViewBinding;
        ProfileEditBar profileEditBar;
        UserInfo userInfo = this.userEntity;
        if (userInfo == null || (birthday = userInfo.getBirthday()) == null || (mViewBinding = getMViewBinding()) == null || (profileEditBar = mViewBinding.f75647b) == null) {
            return;
        }
        profileEditBar.setBtnRight(birthday);
    }

    private final int buildGender(String gender) {
        if (Intrinsics.c(gender, getString(R$string.profile_female))) {
            return 2;
        }
        if (Intrinsics.c(gender, getString(R$string.profile_male))) {
            return 1;
        }
        Intrinsics.c(gender, "");
        return 0;
    }

    private final Integer calcAgeFromBirthday(String birthday) {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd", Locale.US).parse(birthday);
            if (date == null) {
                return null;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            Calendar calendar2 = Calendar.getInstance();
            int i10 = calendar2.get(1) - calendar.get(1);
            if (calendar2.get(6) < calendar.get(6)) {
                i10--;
            }
            return Integer.valueOf(RangesKt.e(i10, 0));
        } catch (Exception unused) {
            return null;
        }
    }

    private final void defaultShow() {
    }

    private final void editAvatar(String avatarUrl, String bucket) {
        ProfileEditBar profileEditBar;
        this.avatarUrl = avatarUrl;
        this.bucket = bucket;
        this.editText = avatarUrl;
        this.editType = this.EDIT_AVATAR;
        k0 mViewBinding = getMViewBinding();
        editRequest(avatarUrl, this.oldNickName, buildGender(String.valueOf((mViewBinding == null || (profileEditBar = mViewBinding.f75649d) == null) ? null : profileEditBar.getBtnTextValue())), this.oldBirth, true);
    }

    private final void editBirthday(String birthday) {
        ProfileEditBar profileEditBar;
        this.editText = birthday;
        this.editType = this.EDIT_BIRTHDAY;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (profileEditBar = mViewBinding.f75647b) == null) {
            return;
        }
        profileEditBar.setBtnRight(birthday);
    }

    private final void editGender(String gender) {
        ProfileEditBar profileEditBar;
        this.editText = gender;
        this.editType = this.EDIT_GENDER;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (profileEditBar = mViewBinding.f75649d) == null) {
            return;
        }
        profileEditBar.setBtnRight(gender);
    }

    private final void editNickName(String name) {
        TextView textView;
        this.editText = name;
        this.editType = this.EDIT_NAME;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f75658m) == null) {
            return;
        }
        textView.setText(name);
    }

    private final void editRequest(String avatarUrl, String name, int gender, String birthday, boolean newAvatarPath) {
        ProgressBar progressBar;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f75653h) != null) {
            uf.c.k(progressBar);
        }
        this.respDuration = System.currentTimeMillis();
        RequstUserEntity requstUserEntity = new RequstUserEntity();
        UserInfo userInfo = this.userEntity;
        requstUserEntity.setUserId(userInfo != null ? userInfo.getUserId() : null);
        if (!TextUtils.isEmpty(avatarUrl)) {
            if (newAvatarPath) {
                requstUserEntity.setNewAvatarPath(avatarUrl);
            } else {
                requstUserEntity.setAvatar(avatarUrl);
            }
        }
        if (!TextUtils.isEmpty(name)) {
            requstUserEntity.setNickname(name);
        }
        requstUserEntity.setGender(Integer.valueOf(gender));
        if (TextUtils.isEmpty(birthday)) {
            requstUserEntity.setBirthday(this.oldBirth);
        } else if (TextUtils.equals(birthday, "null")) {
            requstUserEntity.setBirthday("");
        } else {
            requstUserEntity.setBirthday(birthday);
        }
        if (!TextUtils.isEmpty(this.bucket)) {
            requstUserEntity.setTempBucket(this.bucket);
        }
        av.b bVar = this.presenter;
        if (bVar != null) {
            bVar.e(requstUserEntity);
        }
    }

    static void editRequest$default(ProfileEditCenterFragment profileEditCenterFragment, String str, String str2, int i10, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "";
        }
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        if ((i11 & 8) != 0) {
            str3 = "";
        }
        if ((i11 & 16) != 0) {
            z10 = false;
        }
        profileEditCenterFragment.editRequest(str, str2, i10, str3, z10);
    }

    private final void editTipsDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.profile_back_edit_tips);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarG = aVar.g(string);
            String string2 = getString(R$string.profile_back_edit_yes);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string2);
            String string3 = getString(R$string.profile_back_edit_no);
            Intrinsics.g(string3, "getString(...)");
            aVarE.j(string3).d(androidx.core.content.b.getColor(requireContext(), R$color.text_01)).i(androidx.core.content.b.getColor(requireContext(), R$color.text_01)).h(R$drawable.libui_sub_btn2_normal).c(R$drawable.libui_sub_btn2_normal).f(this).a().d0(this, "edit_tips");
        } catch (Exception unused) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    private final void fastAvatar(String localPath) {
        try {
            localAvatar(localPath);
        } catch (Exception unused) {
        }
    }

    private final void formattingGender() {
        UserInfo userInfo = this.userEntity;
        Integer numValueOf = userInfo != null ? Integer.valueOf(userInfo.getGender()) : null;
        if (numValueOf != null && numValueOf.intValue() == 2) {
            String string = getString(R$string.profile_female);
            Intrinsics.g(string, "getString(...)");
            this.oldGender = string;
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            String string2 = getString(R$string.profile_male);
            Intrinsics.g(string2, "getString(...)");
            this.oldGender = string2;
        }
    }

    private final void genderShow() {
        String string;
        ProfileEditBar profileEditBar;
        UserInfo userInfo = this.userEntity;
        if (userInfo == null || userInfo.getGender() != 2) {
            UserInfo userInfo2 = this.userEntity;
            if (userInfo2 == null || userInfo2.getGender() != 1) {
                string = "";
            } else {
                string = getString(R$string.profile_male);
                Intrinsics.g(string, "getString(...)");
            }
        } else {
            string = getString(R$string.profile_female);
            Intrinsics.g(string, "getString(...)");
        }
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (profileEditBar = mViewBinding.f75649d) == null) {
            return;
        }
        profileEditBar.setBtnRight(string);
    }

    private final jo.a getPublishApi() {
        return (jo.a) this.publishApi.getValue();
    }

    private final void headPortrait() {
        k0 mViewBinding;
        ShapeableImageView shapeableImageView;
        String avatar;
        FragmentActivity activity = getActivity();
        if (activity == null || (mViewBinding = getMViewBinding()) == null || (shapeableImageView = mViewBinding.f75659n) == null) {
            return;
        }
        ni.f.b bVarM = ni.f.f67269a.m(activity);
        UserInfo userInfo = this.userEntity;
        if (userInfo == null || (avatar = userInfo.getAvatar()) == null) {
            avatar = "";
        }
        bVarM.g(avatar).i(com.transsion.usercenter.R$color.color_ff999999).d(shapeableImageView);
    }

    private final void headPortraitBitmap(Bitmap bitmap) {
        ShapeableImageView shapeableImageView;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (shapeableImageView = mViewBinding.f75659n) == null) {
            return;
        }
        shapeableImageView.setImageBitmap(bitmap);
    }

    public final void hideRequestLoading() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    private final void iniData() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProfileEditBar profileEditBar;
        ProfileEditBar profileEditBar2;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        av.b bVar = new av.b();
        this.presenter = bVar;
        bVar.a(this);
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (relativeLayout2 = mViewBinding.f75655j) != null) {
            relativeLayout2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ProfileEditCenterFragment.iniData$lambda$2(this.f54637a, view);
                }
            });
        }
        k0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (relativeLayout = mViewBinding2.f75654i) != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ProfileEditCenterFragment.iniData$lambda$5(this.f54619a, view);
                }
            });
        }
        k0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (profileEditBar2 = mViewBinding3.f75649d) != null) {
            profileEditBar2.setClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ProfileEditCenterFragment.iniData$lambda$6(this.f54620a, view);
                }
            });
        }
        k0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (profileEditBar = mViewBinding4.f75647b) != null) {
            profileEditBar.setClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ProfileEditCenterFragment.iniData$lambda$10(this.f54621a, view);
                }
            });
        }
        Bundle arguments = getArguments();
        KidsProfile kidsProfile = arguments != null ? (KidsProfile) arguments.getParcelable(ARG_KIDS_PROFILE) : null;
        if (kidsProfile != null) {
            showKidsProfileData(kidsProfile);
            showDeleteProfileOption();
            return;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null || !arguments2.containsKey("user")) {
            k0 mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (progressBar = mViewBinding5.f75653h) != null) {
                uf.c.k(progressBar);
            }
            av.b bVar2 = this.presenter;
            if (bVar2 != null) {
                bVar2.f();
                return;
            }
            return;
        }
        Bundle arguments3 = getArguments();
        Serializable serializable = arguments3 != null ? arguments3.getSerializable("user") : null;
        if (!(serializable instanceof UserInfo)) {
            k0 mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (progressBar2 = mViewBinding6.f75653h) != null) {
                uf.c.k(progressBar2);
            }
            av.b bVar3 = this.presenter;
            if (bVar3 != null) {
                bVar3.f();
                return;
            }
            return;
        }
        this.userEntity = (UserInfo) serializable;
        setOldData();
        formattingGender();
        u.a aVar = u.f54638b;
        Bitmap bitmapD = aVar.a().d();
        if (bitmapD != null) {
            aVar.a().e(null);
            showEntity(bitmapD);
        } else {
            showEntity(null);
        }
        showDeleteProfileOption();
    }

    public static final void iniData$lambda$10(ProfileEditCenterFragment profileEditCenterFragment, View view) {
        String birthday;
        ProfileEditBar profileEditBar;
        String setValue;
        ProfileEditBar profileEditBar2;
        ProfileEditBar profileEditBar3;
        String setValue2;
        if (profileEditCenterFragment.isClearBirthday) {
            k0 mViewBinding = profileEditCenterFragment.getMViewBinding();
            if (mViewBinding == null || (profileEditBar3 = mViewBinding.f75647b) == null || (setValue2 = profileEditBar3.getSetValue()) == null) {
                return;
            }
            profileEditCenterFragment.showTimePicker(setValue2);
            return;
        }
        k0 mViewBinding2 = profileEditCenterFragment.getMViewBinding();
        Boolean boolValueOf = (mViewBinding2 == null || (profileEditBar2 = mViewBinding2.f75647b) == null) ? null : Boolean.valueOf(profileEditBar2.isEmpty());
        Intrinsics.e(boolValueOf);
        if (!boolValueOf.booleanValue()) {
            k0 mViewBinding3 = profileEditCenterFragment.getMViewBinding();
            if (mViewBinding3 == null || (profileEditBar = mViewBinding3.f75647b) == null || (setValue = profileEditBar.getSetValue()) == null) {
                return;
            }
            profileEditCenterFragment.showTimePicker(setValue);
            return;
        }
        UserInfo userInfo = profileEditCenterFragment.userEntity;
        if (TextUtils.isEmpty(userInfo != null ? userInfo.getBirthday() : null)) {
            profileEditCenterFragment.showTimePicker("");
            return;
        }
        UserInfo userInfo2 = profileEditCenterFragment.userEntity;
        if (userInfo2 == null || (birthday = userInfo2.getBirthday()) == null) {
            return;
        }
        profileEditCenterFragment.showTimePicker(birthday);
    }

    public static final void iniData$lambda$2(ProfileEditCenterFragment profileEditCenterFragment, View view) {
        FragmentActivity activity;
        EditNameDialog editNameDialog;
        TextView textView;
        if (profileEditCenterFragment.editDialog == null) {
            profileEditCenterFragment.editDialog = new EditNameDialog();
        }
        EditNameDialog editNameDialog2 = profileEditCenterFragment.editDialog;
        if ((editNameDialog2 != null && editNameDialog2.isShow()) || (activity = profileEditCenterFragment.getActivity()) == null || (editNameDialog = profileEditCenterFragment.editDialog) == null) {
            return;
        }
        k0 mViewBinding = profileEditCenterFragment.getMViewBinding();
        editNameDialog.m0(activity, profileEditCenterFragment, String.valueOf((mViewBinding == null || (textView = mViewBinding.f75658m) == null) ? null : textView.getText()));
    }

    public static final void iniData$lambda$5(ProfileEditCenterFragment profileEditCenterFragment, View view) {
        androidx.activity.result.b bVar;
        FragmentActivity activity = profileEditCenterFragment.getActivity();
        if (activity != null) {
            jo.a publishApi = profileEditCenterFragment.getPublishApi();
            Intent intentH = publishApi != null ? publishApi.h(activity) : null;
            if (intentH == null || (bVar = profileEditCenterFragment.photoLaunch) == null) {
                return;
            }
            bVar.a(intentH);
        }
    }

    public static final void iniData$lambda$6(ProfileEditCenterFragment profileEditCenterFragment, View view) {
        ProfileEditBar profileEditBar;
        FragmentActivity activity = profileEditCenterFragment.getActivity();
        k0 mViewBinding = profileEditCenterFragment.getMViewBinding();
        new bv.b(activity, profileEditCenterFragment, (mViewBinding == null || (profileEditBar = mViewBinding.f75649d) == null) ? null : profileEditBar.getBtnTextValue()).b();
    }

    private final void initView() {
    }

    public static final void initView$lambda$39(ProfileEditCenterFragment profileEditCenterFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            wf.a.C0922a.f(wf.a.f74274a, "photoLaunch", "fail", false, 4, null);
            return;
        }
        Intent data = it.getData();
        String stringExtra = data != null ? data.getStringExtra("clip_result") : null;
        wf.a.C0922a.f(wf.a.f74274a, "photoLaunch", "result:" + stringExtra, false, 4, null);
        if (stringExtra != null) {
            profileEditCenterFragment.cropImage = stringExtra;
        }
        if (stringExtra != null) {
            if (profileEditCenterFragment.isKidsMode) {
                profileEditCenterFragment.fastAvatar(stringExtra);
            } else {
                profileEditCenterFragment.uploadImage(stringExtra);
            }
        }
    }

    private final void loadProfile() {
        k0 mViewBinding;
        ShapeableImageView shapeableImageView;
        String str = this.avatarUrl;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringsKt.c0(str, "http:", false, 2, null);
        FragmentActivity activity = getActivity();
        if (activity == null || (mViewBinding = getMViewBinding()) == null || (shapeableImageView = mViewBinding.f75659n) == null) {
            return;
        }
        ni.f.f67269a.m(activity).g(str).d(shapeableImageView);
    }

    private final void localAvatar(final String localPath) {
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() {
            @Override
            public final void a(io.reactivex.rxjava3.core.k kVar) {
                ProfileEditCenterFragment.localAvatar$lambda$28(localPath, kVar);
            }
        }).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(ey.a.c()).subscribe(new b(new Ref.ObjectRef(), this));
    }

    public static final void localAvatar$lambda$28(String str, io.reactivex.rxjava3.core.k emitter) {
        Intrinsics.h(emitter, "emitter");
        wf.a.C0922a.f(wf.a.f74274a, " localAvatar", "start....", false, 4, null);
        Bitmap bitmapB = qo.a.b(str);
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onNext(bitmapB);
    }

    private final void nickNameShow() {
        TextView textView;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f75658m) == null) {
            return;
        }
        UserInfo userInfo = this.userEntity;
        textView.setText(userInfo != null ? userInfo.getNickname() : null);
    }

    public static final void onAvatarUrl$lambda$27(String str, ProfileEditCenterFragment profileEditCenterFragment, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            profileEditCenterFragment.hideRequestLoading();
            fh.b.f60176a.d(R$string.profile_upload_fails);
        } else {
            profileEditCenterFragment.fastAvatar(str2);
            profileEditCenterFragment.isChangeAvatar = true;
            profileEditCenterFragment.editAvatar(str, str3);
        }
    }

    public static final void onDialogConfirm$lambda$34(ProfileEditCenterFragment profileEditCenterFragment) {
        FragmentActivity activity = profileEditCenterFragment.getActivity();
        if (activity != null) {
            KeyboardUtils.d(activity);
        }
    }

    public static final void onError$lambda$31(ProfileEditCenterFragment profileEditCenterFragment, String str) {
        if (profileEditCenterFragment.isChangeAvatar) {
            profileEditCenterFragment.isChangeAvatar = false;
            profileEditCenterFragment.respDuration = 0L;
            profileEditCenterFragment.hideRequestLoading();
            fh.b.f60176a.d(R$string.profile_upload_fails);
            return;
        }
        profileEditCenterFragment.respDuration = 0L;
        profileEditCenterFragment.isChangeAvatar = false;
        profileEditCenterFragment.hideRequestLoading();
        fh.b.f60176a.e(str);
    }

    public static final jo.a publishApi_delegate$lambda$0() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final void setCurrentBirthDay(String birthday, Calendar calendar) {
        try {
            calendar.setTime(new SimpleDateFormat("yyyy-MM-dd").parse(birthday));
            com.bigkoo.pickerview.view.a aVar = this.timePickerView;
            if (aVar != null) {
                aVar.B(calendar);
            }
        } catch (ParseException e10) {
            e10.printStackTrace();
        }
    }

    private final void setOldData() {
        UserInfo userInfo = this.userEntity;
        this.oldNickName = String.valueOf(userInfo != null ? userInfo.getNickname() : null);
        UserInfo userInfo2 = this.userEntity;
        this.oldBirth = String.valueOf(userInfo2 != null ? userInfo2.getBirthday() : null);
    }

    private final void showDeleteProfileOption() {
        BLConstraintLayout bLConstraintLayout;
        BLConstraintLayout bLConstraintLayout2;
        BLConstraintLayout bLConstraintLayout3;
        Bundle arguments = getArguments();
        final KidsProfile kidsProfile = arguments != null ? (KidsProfile) arguments.getParcelable(ARG_KIDS_PROFILE) : null;
        if (kidsProfile == null) {
            k0 mViewBinding = getMViewBinding();
            if (mViewBinding == null || (bLConstraintLayout3 = mViewBinding.f75652g) == null) {
                return;
            }
            bLConstraintLayout3.setVisibility(8);
            return;
        }
        k0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bLConstraintLayout2 = mViewBinding2.f75652g) != null) {
            bLConstraintLayout2.setVisibility(0);
        }
        k0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (bLConstraintLayout = mViewBinding3.f75652g) == null) {
            return;
        }
        bLConstraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ProfileEditCenterFragment.showDeleteProfileOption$lambda$26(this.f54623a, kidsProfile, view);
            }
        });
    }

    public static final void showDeleteProfileOption$lambda$26(ProfileEditCenterFragment profileEditCenterFragment, final KidsProfile kidsProfile, View view) {
        wf.a.C0922a.f(wf.a.f74274a, TAG, "click delete profile.", false, 4, null);
        final FragmentActivity fragmentActivityRequireActivity = profileEditCenterFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return ProfileEditCenterFragment.showDeleteProfileOption$lambda$26$lambda$25(kidsProfile, fragmentActivityRequireActivity);
            }
        };
        if (KidsAccountManager.f42144a.i()) {
            PinInputDialog.INSTANCE.c(kidsProfile.getKidsId(), true, function0).X(fragmentActivityRequireActivity, "PinInputDialog");
        } else {
            function0.invoke();
        }
    }

    public static final Unit showDeleteProfileOption$lambda$26$lambda$25(KidsProfile kidsProfile, final FragmentActivity fragmentActivity) {
        DeleteKidsProfileDialog.INSTANCE.a(kidsProfile.getKidsId(), new Function0() {
            @Override
            public final Object invoke() {
                return ProfileEditCenterFragment.showDeleteProfileOption$lambda$26$lambda$25$lambda$24(fragmentActivity);
            }
        }).X(fragmentActivity, "DeleteKidsProfileDialog");
        return Unit.f64096a;
    }

    public static final Unit showDeleteProfileOption$lambda$26$lambda$25$lambda$24(FragmentActivity fragmentActivity) {
        fragmentActivity.finish();
        return Unit.f64096a;
    }

    private final void showEntity(Bitmap bitmap) {
        if (this.userEntity == null) {
            defaultShow();
            return;
        }
        if (bitmap == null) {
            headPortrait();
        } else {
            headPortraitBitmap(bitmap);
        }
        nickNameShow();
        genderShow();
        birthDayShow();
    }

    private final void showKidsProfileData(KidsProfile kidsProfile) {
        ShapeableImageView shapeableImageView;
        k0 mViewBinding;
        ProfileEditBar profileEditBar;
        k0 mViewBinding2;
        ProfileEditBar profileEditBar2;
        ProfileEditBar profileEditBar3;
        RelativeLayout relativeLayout;
        TextView textView;
        this.isKidsMode = true;
        this.currentKidsProfile = kidsProfile;
        this.oldNickName = kidsProfile.getName();
        String avatarLocalPath = kidsProfile.getAvatarLocalPath();
        if (avatarLocalPath == null || avatarLocalPath.length() == 0) {
            k0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (shapeableImageView = mViewBinding3.f75659n) != null) {
                shapeableImageView.setImageResource(kidsProfile.getAvatarResId());
            }
        } else {
            fastAvatar(avatarLocalPath);
        }
        k0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (textView = mViewBinding4.f75658m) != null) {
            textView.setText(kidsProfile.getName());
        }
        k0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (relativeLayout = mViewBinding5.f75654i) != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ProfileEditCenterFragment.showKidsProfileData$lambda$13(this.f54622a, view);
                }
            });
        }
        Integer gender = kidsProfile.getGender();
        if (gender != null && gender.intValue() == 1) {
            k0 mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (profileEditBar3 = mViewBinding6.f75649d) != null) {
                String string = getString(R$string.profile_male);
                Intrinsics.g(string, "getString(...)");
                profileEditBar3.setBtnRight(string);
            }
        } else if (gender != null && gender.intValue() == 0 && (mViewBinding = getMViewBinding()) != null && (profileEditBar = mViewBinding.f75649d) != null) {
            String string2 = getString(R$string.profile_female);
            Intrinsics.g(string2, "getString(...)");
            profileEditBar.setBtnRight(string2);
        }
        String birthday = kidsProfile.getBirthday();
        if (birthday != null) {
            if (birthday.length() <= 0) {
                birthday = null;
            }
            if (birthday == null || (mViewBinding2 = getMViewBinding()) == null || (profileEditBar2 = mViewBinding2.f75647b) == null) {
                return;
            }
            profileEditBar2.setBtnRight(birthday);
        }
    }

    public static final void showKidsProfileData$lambda$13(ProfileEditCenterFragment profileEditCenterFragment, View view) {
        androidx.activity.result.b bVar;
        FragmentActivity activity = profileEditCenterFragment.getActivity();
        if (activity != null) {
            jo.a publishApi = profileEditCenterFragment.getPublishApi();
            Intent intentH = publishApi != null ? publishApi.h(activity) : null;
            if (intentH == null || (bVar = profileEditCenterFragment.photoLaunch) == null) {
                return;
            }
            bVar.a(intentH);
        }
    }

    private final void showRequestLoading() {
        ProgressBar progressBar;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f75653h) == null) {
            return;
        }
        uf.c.k(progressBar);
    }

    private final void showTimePicker(String birthday) {
        com.bigkoo.pickerview.view.a aVar;
        if (getContext() == null) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(1900, 0, 1);
        if (this.timePickerView == null) {
            this.timePickerView = new q5.a(getContext(), new s5.c() {
                @Override
                public final void a(Date date, View view) {
                    ProfileEditCenterFragment.showTimePicker$lambda$32(this.f54626a, date, view);
                }
            }).d(calendar, Calendar.getInstance()).e(androidx.core.content.b.getColor(requireContext(), R$color.text_01)).f(androidx.core.content.b.getColor(requireContext(), R$color.text_03)).b(androidx.core.content.b.getColor(requireContext(), R$color.line_01)).c("", "", "", "", "", "").a();
        }
        if (TextUtils.isEmpty(birthday)) {
            com.bigkoo.pickerview.view.a aVar2 = this.timePickerView;
            if (aVar2 != null) {
                aVar2.B(Calendar.getInstance());
            }
        } else {
            Intrinsics.e(calendar);
            setCurrentBirthDay(birthday, calendar);
        }
        com.bigkoo.pickerview.view.a aVar3 = this.timePickerView;
        if (aVar3 == null || aVar3.q() || (aVar = this.timePickerView) == null) {
            return;
        }
        aVar.v();
    }

    public static final void showTimePicker$lambda$32(ProfileEditCenterFragment profileEditCenterFragment, Date date, View view) {
        if (date == null) {
            profileEditCenterFragment.isClearBirthday = true;
            profileEditCenterFragment.editBirthday("");
            return;
        }
        profileEditCenterFragment.isClearBirthday = false;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        String str = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        Intrinsics.e(str);
        profileEditCenterFragment.editBirthday(str);
    }

    public final void checkBack() {
        checkEditSubmit(true);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0030  */
    /* JADX WARN: Code duplicated, block: B:50:0x0092  */
    public final void checkEditSubmit(boolean back) {
        String str;
        boolean z10;
        boolean z11;
        boolean z12;
        String strValueOf;
        ProfileEditBar profileEditBar;
        ProfileEditBar profileEditBar2;
        ProfileEditBar profileEditBar3;
        ProfileEditBar profileEditBar4;
        ProfileEditBar profileEditBar5;
        ProfileEditBar profileEditBar6;
        ProfileEditBar profileEditBar7;
        TextView textView;
        TextView textView2;
        String name;
        int gender;
        String birthday;
        Integer age;
        ProfileEditBar profileEditBar8;
        ProfileEditBar profileEditBar9;
        TextView textView3;
        CharSequence text;
        KidsProfile kidsProfile = this.currentKidsProfile;
        String strValueOf2 = "";
        if (kidsProfile != null) {
            k0 mViewBinding = getMViewBinding();
            if (mViewBinding == null || (textView3 = mViewBinding.f75658m) == null || (text = textView3.getText()) == null || (name = text.toString()) == null) {
                name = kidsProfile.getName();
            } else {
                if (name.length() <= 0) {
                    name = null;
                }
                if (name == null) {
                    name = kidsProfile.getName();
                }
            }
            String str2 = name;
            k0 mViewBinding2 = getMViewBinding();
            String btnTextValue = (mViewBinding2 == null || (profileEditBar9 = mViewBinding2.f75649d) == null) ? null : profileEditBar9.getBtnTextValue();
            strValueOf2 = btnTextValue != null ? btnTextValue : "";
            if (Intrinsics.c(strValueOf2, getString(R$string.profile_male))) {
                gender = 1;
            } else {
                gender = Intrinsics.c(strValueOf2, getString(R$string.profile_female)) ? 0 : kidsProfile.getGender();
            }
            Integer num = gender;
            k0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (profileEditBar8 = mViewBinding3.f75647b) == null || (birthday = profileEditBar8.getSetValue()) == null) {
                birthday = kidsProfile.getBirthday();
            } else {
                if (birthday.length() <= 0) {
                    birthday = null;
                }
                if (birthday == null) {
                    birthday = kidsProfile.getBirthday();
                }
            }
            String str3 = birthday;
            if (str3 == null || (age = calcAgeFromBirthday(str3)) == null) {
                age = kidsProfile.getAge();
            }
            Integer num2 = age;
            KidsAccountManager kidsAccountManager = KidsAccountManager.f42144a;
            String avatarLocalPath = this.cropImage;
            if (avatarLocalPath.length() == 0) {
                avatarLocalPath = kidsProfile.getAvatarLocalPath();
            }
            KidsAccountManager.n(kidsAccountManager, kidsProfile.copy((479 & 1) != 0 ? kidsProfile.kidsId : null, (479 & 2) != 0 ? kidsProfile.name : str2, (479 & 4) != 0 ? kidsProfile.avatarResId : 0, (479 & 8) != 0 ? kidsProfile.gender : num, (479 & 16) != 0 ? kidsProfile.birthday : str3, (479 & 32) != 0 ? kidsProfile.pinHash : null, (479 & 64) != 0 ? kidsProfile.avatarLocalPath : avatarLocalPath, (479 & 128) != 0 ? kidsProfile.favorites : null, (479 & 256) != 0 ? kidsProfile.age : num2), false, 2, null);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        String strValueOf3 = this.oldNickName;
        k0 mViewBinding4 = getMViewBinding();
        if (!TextUtils.equals((mViewBinding4 == null || (textView2 = mViewBinding4.f75658m) == null) ? null : textView2.getText(), this.oldNickName)) {
            k0 mViewBinding5 = getMViewBinding();
            strValueOf3 = String.valueOf((mViewBinding5 == null || (textView = mViewBinding5.f75658m) == null) ? null : textView.getText());
        }
        k0 mViewBinding6 = getMViewBinding();
        Boolean boolValueOf = (mViewBinding6 == null || (profileEditBar7 = mViewBinding6.f75647b) == null) ? null : Boolean.valueOf(profileEditBar7.isEmpty());
        Intrinsics.e(boolValueOf);
        if (!boolValueOf.booleanValue()) {
            k0 mViewBinding7 = getMViewBinding();
            if (!TextUtils.equals((mViewBinding7 == null || (profileEditBar6 = mViewBinding7.f75647b) == null) ? null : profileEditBar6.getBtnTextValue(), this.oldBirth)) {
                k0 mViewBinding8 = getMViewBinding();
                strValueOf2 = String.valueOf((mViewBinding8 == null || (profileEditBar5 = mViewBinding8.f75647b) == null) ? null : profileEditBar5.getBtnTextValue());
            }
        }
        k0 mViewBinding9 = getMViewBinding();
        String strValueOf4 = String.valueOf((mViewBinding9 == null || (profileEditBar4 = mViewBinding9.f75649d) == null) ? null : profileEditBar4.getBtnTextValue());
        k0 mViewBinding10 = getMViewBinding();
        if (TextUtils.equals((mViewBinding10 == null || (profileEditBar3 = mViewBinding10.f75647b) == null) ? null : profileEditBar3.getBtnTextValue(), this.oldBirth) || !this.isClearBirthday) {
            str = strValueOf2;
            z10 = false;
        } else {
            k0 mViewBinding11 = getMViewBinding();
            String btnTextValue2 = (mViewBinding11 == null || (profileEditBar2 = mViewBinding11.f75647b) == null) ? null : profileEditBar2.getBtnTextValue();
            Context context = getContext();
            if (TextUtils.equals(btnTextValue2, context != null ? context.getString(R$string.profile_empty_select) : null)) {
                z10 = true;
                str = "null";
            } else {
                str = strValueOf2;
                z10 = true;
            }
        }
        k0 mViewBinding12 = getMViewBinding();
        if (TextUtils.equals((mViewBinding12 == null || (profileEditBar = mViewBinding12.f75649d) == null) ? null : profileEditBar.getBtnTextValue(), this.oldGender) || !this.isClearGender) {
            z11 = false;
        } else {
            strValueOf4 = "null";
            z11 = true;
        }
        if (!z11 && !z10 && TextUtils.equals(strValueOf3, this.oldNickName) && TextUtils.isEmpty(strValueOf4) && TextUtils.isEmpty(str)) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
                return;
            }
            return;
        }
        if (back) {
            editTipsDialog();
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.network_fail);
            return;
        }
        if (TextUtils.isEmpty(this.avatarUrl)) {
            UserInfo userInfo = this.userEntity;
            strValueOf = String.valueOf(userInfo != null ? userInfo.getAvatar() : null);
            z12 = false;
        } else {
            z12 = true;
            strValueOf = this.avatarUrl;
        }
        editRequest(strValueOf, strValueOf3, buildGender(strValueOf4), str, z12);
    }

    public final void confirmSubmit() {
        checkEditSubmit(false);
    }

    @Override
    public void lazyLoadData() {
        initView();
        iniData();
    }

    public void onAvatarUrl(final String data, final String localPath, final String bucket) {
        Intrinsics.h(data, "data");
        Intrinsics.h(localPath, "localPath");
        Intrinsics.h(bucket, "bucket");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    ProfileEditCenterFragment.onAvatarUrl$lambda$27(data, this, localPath, bucket);
                }
            });
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        av.b bVar = this.presenter;
        if (bVar != null) {
            bVar.b();
        }
    }

    @Override
    public void onDialogConfirm(String result) {
        RelativeLayout relativeLayout;
        if (!TextUtils.isEmpty(result)) {
            if (result != null) {
                editNickName(result);
            }
        } else {
            k0 mViewBinding = getMViewBinding();
            if (mViewBinding == null || (relativeLayout = mViewBinding.f75655j) == null) {
                return;
            }
            relativeLayout.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ProfileEditCenterFragment.onDialogConfirm$lambda$34(this.f54634a);
                }
            }, 100L);
        }
    }

    @Override
    public void onDialogSelect(int position, String result) {
        Intrinsics.h(result, "result");
        if (position == 2) {
            this.isClearGender = true;
            editGender("");
        } else {
            this.isClearGender = false;
            editGender(result);
        }
    }

    @Override
    public void onEditProfile(boolean status) {
        String string;
        String string2;
        ProfileEditBar profileEditBar;
        String btnTextValue;
        String string3;
        ProfileEditBar profileEditBar2;
        String btnTextValue2;
        TextView textView;
        CharSequence text;
        FragmentActivity activity;
        qx.a aVar;
        String avatar;
        String userId;
        qx.a aVar2;
        int iO0;
        ProgressBar progressBar;
        hideRequestLoading();
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f75653h) != null) {
            uf.c.g(progressBar);
        }
        if (!status) {
            this.isChangeAvatar = false;
            return;
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            KeyboardUtils.d(activity2);
        }
        fh.b.f60176a.d(R$string.profile_saved_success);
        boolean z10 = this.isChangeAvatar;
        qx.a aVar3 = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        UserInfo userInfoI = aVar3 != null ? aVar3.i() : null;
        String str = "";
        if (this.isChangeAvatar) {
            this.isChangeAvatar = false;
            String str2 = this.editText;
            if (userInfoI == null || (avatar = userInfoI.getAvatar()) == null) {
                avatar = "";
            }
            if (!StringsKt.W(str2, "http", false, 2, null) && StringsKt.W(avatar, "http", false, 2, null) && (iO0 = StringsKt.o0(avatar, "image/", 0, false, 6, null)) > 0) {
                String strSubstring = avatar.substring(0, iO0);
                Intrinsics.g(strSubstring, "substring(...)");
                str2 = strSubstring + str2;
            }
            UserInfo userInfo = this.userEntity;
            if (userInfo != null) {
                userInfo.setAvatar(str2);
            }
            if (userInfoI != null) {
                userInfoI.setAvatar(str2);
            }
            this.editText = "";
            if (userInfoI != null && (userId = userInfoI.getUserId()) != null && (aVar2 = (qx.a) TheRouter.d(qx.a.class, new Object[0])) != null) {
                aVar2.g(userId);
            }
        } else {
            k0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (textView = mViewBinding2.f75658m) == null || (text = textView.getText()) == null || (string = text.toString()) == null) {
                string = "";
            }
            if (string.length() > 0) {
                UserInfo userInfo2 = this.userEntity;
                if (userInfo2 != null) {
                    userInfo2.setNickname(string);
                }
                if (userInfoI != null) {
                    userInfoI.setNickname(string);
                }
            }
            k0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (profileEditBar2 = mViewBinding3.f75647b) == null || (btnTextValue2 = profileEditBar2.getBtnTextValue()) == null || (string2 = btnTextValue2.toString()) == null) {
                string2 = "";
            }
            if (Intrinsics.c(string2, getString(R$string.profile_empty_select))) {
                string2 = "";
            }
            UserInfo userInfo3 = this.userEntity;
            if (userInfo3 != null) {
                userInfo3.setBirthday(string2);
            }
            if (userInfoI != null) {
                userInfoI.setBirthday(string2);
            }
            k0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (profileEditBar = mViewBinding4.f75649d) != null && (btnTextValue = profileEditBar.getBtnTextValue()) != null && (string3 = btnTextValue.toString()) != null) {
                str = string3;
            }
            int iBuildGender = buildGender(str);
            UserInfo userInfo4 = this.userEntity;
            if (userInfo4 != null) {
                userInfo4.setGender(iBuildGender);
            }
            if (userInfoI != null) {
                userInfoI.setGender(iBuildGender);
            }
        }
        if (userInfoI != null && (aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0])) != null) {
            aVar.c(userInfoI);
        }
        if (z10 || (activity = getActivity()) == null) {
            return;
        }
        activity.finish();
    }

    @Override
    public void onError(String code, final String msg) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    ProfileEditCenterFragment.onError$lambda$31(this.f54635a, msg);
                }
            });
        }
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onUserInfo(UserInfo userInfo) {
        ProgressBar progressBar;
        this.userEntity = userInfo;
        k0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f75653h) != null) {
            uf.c.g(progressBar);
        }
        setOldData();
        formattingGender();
        showEntity(null);
        showDeleteProfileOption();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("sourceType", 2)) : null;
        Intrinsics.e(numValueOf);
        numValueOf.intValue();
        super.onViewCreated(view, savedInstanceState);
    }

    public final void uploadImage(String imagePath) {
        Intrinsics.h(imagePath, "imagePath");
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.network_fail);
            return;
        }
        if (TextUtils.isEmpty(imagePath)) {
            return;
        }
        showRequestLoading();
        this.respDuration = System.currentTimeMillis();
        av.b bVar = this.presenter;
        if (bVar != null) {
            bVar.g(imagePath, new c());
        }
    }

    @Override
    public k0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        k0 k0VarC = k0.c(inflater);
        Intrinsics.g(k0VarC, "inflate(...)");
        return k0VarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        this.photoLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                ProfileEditCenterFragment.initView$lambda$39(this.f54618a, (ActivityResult) obj);
            }
        });
    }
}
