.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/edit/b;
.implements Lbv/b$a;
.implements Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lxu/k0;",
        ">;",
        "Lcom/transsion/usercenter/edit/b;",
        "Lbv/b$a;",
        "Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u0095\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002\u0096\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u0019\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u000f\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0008J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0008J\u000f\u0010\u0019\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u000f\u0010\u001a\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0008J\u000f\u0010\u001b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u001f\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008%\u0010#J\u0017\u0010\'\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\'\u0010#J\u0019\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010&\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008)\u0010*JA\u0010-\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u0010!\u001a\u00020\u001c2\u0008\u0008\u0002\u0010$\u001a\u00020(2\u0008\u0008\u0002\u0010&\u001a\u00020\u001c2\u0008\u0008\u0002\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008/\u0010\u0008J\u000f\u00100\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00080\u0010\u0008J\u000f\u00101\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00081\u0010\u0008J\u000f\u00102\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00082\u0010\u0008J\u0017\u00104\u001a\u00020\t2\u0006\u00103\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00084\u0010#J\u0017\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00085\u0010#J\u0017\u00106\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00086\u0010#J\u001f\u00109\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u001c2\u0006\u00108\u001a\u000207H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010;\u001a\u00020(2\u0006\u0010$\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008=\u0010\u0008J!\u0010B\u001a\u00020\t2\u0006\u0010?\u001a\u00020>2\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0008J\u0015\u0010F\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u001c\u00a2\u0006\u0004\u0008F\u0010#J\r\u0010G\u001a\u00020\t\u00a2\u0006\u0004\u0008G\u0010\u0008J\r\u0010H\u001a\u00020\t\u00a2\u0006\u0004\u0008H\u0010\u0008J\u0015\u0010J\u001a\u00020\t2\u0006\u0010I\u001a\u00020+\u00a2\u0006\u0004\u0008J\u0010KJ\'\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008P\u0010KJ\u0019\u0010S\u001a\u00020\t2\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ#\u0010W\u001a\u00020\t2\u0008\u0010U\u001a\u0004\u0018\u00010\u001c2\u0008\u0010V\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008W\u0010 J\u000f\u0010X\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008X\u0010\u0008J\u001f\u0010[\u001a\u00020\t2\u0006\u0010Y\u001a\u00020(2\u0006\u0010Z\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u0019\u0010]\u001a\u00020\t2\u0008\u0010Z\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008]\u0010#J\u0017\u0010`\u001a\u00020\t2\u0006\u0010_\u001a\u00020^H\u0016\u00a2\u0006\u0004\u0008`\u0010aJ\u0017\u0010b\u001a\u00020\t2\u0006\u0010_\u001a\u00020^H\u0016\u00a2\u0006\u0004\u0008b\u0010aJ\u0017\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020cH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ!\u0010\n\u001a\u00020\t2\u0006\u0010?\u001a\u00020>2\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008\n\u0010CR\u0014\u0010g\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0014\u0010i\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008i\u0010hR\u0014\u0010j\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008j\u0010hR\u0014\u0010k\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008k\u0010hR\u0014\u0010l\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008l\u0010hR\u0016\u0010m\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0016\u0010o\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010hR\u0016\u0010p\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010nR\u0016\u0010q\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010nR\u0016\u0010r\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010nR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010nR\u0016\u0010\u001e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010nR\u0016\u0010s\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0016\u0010u\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010tR\u0016\u0010v\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010tR\u0016\u0010w\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010|\u001a\u00020{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0016\u0010~\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010tR\u0016\u0010\u007f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010nR\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0082\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010tR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R#\u0010\u008b\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u008a\u0001\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R#\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008d\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lxu/k0;",
        "Lcom/transsion/usercenter/edit/b;",
        "Lbv/b$a;",
        "Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initView",
        "iniData",
        "Lcom/transsion/baselib/kids/KidsProfile;",
        "kidsProfile",
        "showKidsProfileData",
        "(Lcom/transsion/baselib/kids/KidsProfile;)V",
        "setOldData",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "showEntity",
        "(Landroid/graphics/Bitmap;)V",
        "defaultShow",
        "headPortrait",
        "headPortraitBitmap",
        "formattingGender",
        "nickNameShow",
        "genderShow",
        "birthDayShow",
        "",
        "avatarUrl",
        "bucket",
        "editAvatar",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "name",
        "editNickName",
        "(Ljava/lang/String;)V",
        "gender",
        "editGender",
        "birthday",
        "editBirthday",
        "",
        "calcAgeFromBirthday",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "",
        "newAvatarPath",
        "editRequest",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V",
        "showRequestLoading",
        "hideRequestLoading",
        "editTipsDialog",
        "showDeleteProfileOption",
        "localPath",
        "fastAvatar",
        "localAvatar",
        "showTimePicker",
        "Ljava/util/Calendar;",
        "calendar",
        "setCurrentBirthDay",
        "(Ljava/lang/String;Ljava/util/Calendar;)V",
        "buildGender",
        "(Ljava/lang/String;)I",
        "loadProfile",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "imagePath",
        "uploadImage",
        "checkBack",
        "confirmSubmit",
        "back",
        "checkEditSubmit",
        "(Z)V",
        "data",
        "onAvatarUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "status",
        "onEditProfile",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "onUserInfo",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "code",
        "msg",
        "onError",
        "onDestroyView",
        "position",
        "result",
        "onDialogSelect",
        "(ILjava/lang/String;)V",
        "onDialogConfirm",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lxu/k0;",
        "EDIT_AVATAR",
        "I",
        "EDIT_NAME",
        "EDIT_GENDER",
        "EDIT_REGION",
        "EDIT_BIRTHDAY",
        "editText",
        "Ljava/lang/String;",
        "editType",
        "oldNickName",
        "oldGender",
        "oldBirth",
        "isChangeAvatar",
        "Z",
        "isClearBirthday",
        "isClearGender",
        "isClearRegion",
        "Lcom/transsion/usercenter/edit/dialog/EditNameDialog;",
        "editDialog",
        "Lcom/transsion/usercenter/edit/dialog/EditNameDialog;",
        "",
        "respDuration",
        "J",
        "retry",
        "cropImage",
        "currentKidsProfile",
        "Lcom/transsion/baselib/kids/KidsProfile;",
        "isKidsMode",
        "Lcom/bigkoo/pickerview/view/a;",
        "timePickerView",
        "Lcom/bigkoo/pickerview/view/a;",
        "Lav/b;",
        "presenter",
        "Lav/b;",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "photoLaunch",
        "Landroidx/activity/result/b;",
        "Ljo/a;",
        "publishApi$delegate",
        "Lkotlin/Lazy;",
        "getPublishApi",
        "()Ljo/a;",
        "publishApi",
        "userEntity",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "Companion",
        "a",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final ARG_KIDS_PROFILE:Ljava/lang/String; = "arg_kids_profile"

.field public static final Companion:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;

.field public static final TAG:Ljava/lang/String; = "ProfileEditCenterFragment"


# instance fields
.field private final EDIT_AVATAR:I

.field private final EDIT_BIRTHDAY:I

.field private final EDIT_GENDER:I

.field private final EDIT_NAME:I

.field private final EDIT_REGION:I

.field private avatarUrl:Ljava/lang/String;

.field private bucket:Ljava/lang/String;

.field private cropImage:Ljava/lang/String;

.field private currentKidsProfile:Lcom/transsion/baselib/kids/KidsProfile;

.field private editDialog:Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

.field private editText:Ljava/lang/String;

.field private editType:I

.field private isChangeAvatar:Z

.field private isClearBirthday:Z

.field private isClearGender:Z

.field private isClearRegion:Z

.field private isKidsMode:Z

.field private oldBirth:Ljava/lang/String;

.field private oldGender:Ljava/lang/String;

.field private oldNickName:Ljava/lang/String;

.field private photoLaunch:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field

.field private presenter:Lav/b;

.field private final publishApi$delegate:Lkotlin/Lazy;

.field private respDuration:J

.field private retry:Z

.field private timePickerView:Lcom/bigkoo/pickerview/view/a;

.field private userEntity:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->Companion:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_AVATAR:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_NAME:I

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_GENDER:I

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_REGION:I

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_BIRTHDAY:I

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldGender:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->avatarUrl:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->bucket:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->cropImage:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/transsion/usercenter/edit/q;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/transsion/usercenter/edit/q;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->publishApi$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->onError$lambda$31(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCropImage$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->cropImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$hideRequestLoading(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->hideRequestLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setRetry$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->retry:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->onDialogConfirm$lambda$34(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final birthDayShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getBirthday()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lxu/k0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final buildGender(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, ""

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_0
    return p1
.end method

.method public static synthetic c0()Ljo/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->publishApi_delegate$lambda$0()Ljo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final calcAgeFromBirthday(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v2, "yyyy-MM-dd"

    .line 5
    .line 6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sub-int/2addr v3, v2

    .line 39
    const/4 v2, 0x6

    .line 40
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ge p1, v1, :cond_1

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    return-object v0
.end method

.method public static synthetic d0(Ljava/lang/String;Lio/reactivex/rxjava3/core/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->localAvatar$lambda$28(Ljava/lang/String;Lio/reactivex/rxjava3/core/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final defaultShow()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showKidsProfileData$lambda$13(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final editAvatar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->avatarUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->bucket:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 6
    .line 7
    iget p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_AVATAR:I

    .line 8
    .line 9
    iput p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editType:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lxu/k0;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p2, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {p0, p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->buildGender(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    move-object v0, p0

    .line 43
    move-object v1, p1

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final editBirthday(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_BIRTHDAY:I

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editType:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lxu/k0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final editGender(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_GENDER:I

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editType:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lxu/k0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final editNickName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->EDIT_NAME:I

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editType:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lxu/k0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lxu/k0;->m:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final editRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/k0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->respDuration:J

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setUserId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    if-eqz p5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setNewAvatarPath(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setAvatar(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setNickname(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setGender(Ljava/lang/Integer;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    const-string p1, "null"

    .line 78
    .line 79
    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    const-string p1, ""

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setBirthday(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v0, p4}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setBirthday(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setBirthday(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->bucket:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->bucket:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->setTempBucket(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lav/b;->e(Lcom/transsion/usercenter/edit/api/RequstUserEntity;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    return-void
.end method

.method static synthetic editRequest$default(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V
    .locals 2

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 9
    .line 10
    if-eqz p7, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p7, :cond_2

    .line 17
    .line 18
    move p3, v1

    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    move-object p4, v0

    .line 24
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 25
    .line 26
    if-eqz p6, :cond_4

    .line 27
    .line 28
    move p5, v1

    .line 29
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final editTipsDialog()V
    .locals 3

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/transsion/usercenter/R$string;->profile_back_edit_tips:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/transsion/usercenter/R$string;->profile_back_edit_yes:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lcom/transsion/usercenter/R$string;->profile_back_edit_no:I

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->d(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_sub_btn2_normal:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget v1, Lcom/tn/lib/widget/R$drawable;->libui_sub_btn2_normal:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "edit_tips"

    .line 96
    .line 97
    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    .line 109
    .line 110
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->iniData$lambda$2(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final fastAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->localAvatar(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method private final formattingGender()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "getString(...)"

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    sget v0, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldGender:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    sget v0, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldGender:Ljava/lang/String;

    .line 59
    .line 60
    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic g0(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption$lambda$26$lambda$25$lambda$24(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final genderShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    const-string v1, "getString(...)"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    sget v0, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, ""

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lxu/k0;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, v1, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private final getPublishApi()Ljo/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->publishApi$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljo/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->iniData$lambda$6(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final headPortrait()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lxu/k0;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, v1, Lxu/k0;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :cond_0
    const-string v2, ""

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v2, Lcom/transsion/usercenter/R$color;->color_ff999999:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lni/f$b;->i(I)Lni/f$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private final headPortraitBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/k0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxu/k0;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final hideRequestLoading()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$hideRequestLoading$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$hideRequestLoading$1;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic i0(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->onAvatarUrl$lambda$27(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final iniData()V
    .locals 4

    .line 1
    new-instance v0, Lav/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lav/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lav/a;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lxu/k0;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lxu/k0;->j:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/transsion/usercenter/edit/s;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/s;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lxu/k0;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lxu/k0;->i:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v1, Lcom/transsion/usercenter/edit/f;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/f;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lxu/k0;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, v0, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    new-instance v1, Lcom/transsion/usercenter/edit/g;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/g;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lxu/k0;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v1, Lcom/transsion/usercenter/edit/h;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/h;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const-string v2, "arg_kids_profile"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/transsion/baselib/kids/KidsProfile;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move-object v0, v1

    .line 108
    :goto_0
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showKidsProfileData(Lcom/transsion/baselib/kids/KidsProfile;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    const-string v2, "user"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const/4 v3, 0x1

    .line 130
    if-ne v0, v3, :cond_a

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    move-object v0, v1

    .line 144
    :goto_1
    instance-of v2, v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 145
    .line 146
    if-eqz v2, :cond_8

    .line 147
    .line 148
    check-cast v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 151
    .line 152
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->setOldData()V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->formattingGender()V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lcom/transsion/usercenter/edit/u;->b:Lcom/transsion/usercenter/edit/u$a;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/usercenter/edit/u$a;->a()Lcom/transsion/usercenter/edit/u;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/transsion/usercenter/edit/u;->d()Landroid/graphics/Bitmap;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/transsion/usercenter/edit/u$a;->a()Lcom/transsion/usercenter/edit/u;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/u;->e(Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showEntity(Landroid/graphics/Bitmap;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    invoke-direct {p0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showEntity(Landroid/graphics/Bitmap;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption()V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lxu/k0;

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    iget-object v0, v0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 204
    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    invoke-virtual {v0}, Lav/b;->f()V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lxu/k0;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    iget-object v0, v0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 227
    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    invoke-virtual {v0}, Lav/b;->f()V

    .line 231
    .line 232
    .line 233
    :cond_c
    :goto_3
    return-void
.end method

.method private static final iniData$lambda$10(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearBirthday:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lxu/k0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getSetValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showTimePicker(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lxu/k0;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p1, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object p1, v0

    .line 50
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lxu/k0;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p1, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getSetValue()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showTimePicker(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getBirthday()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    const-string p1, ""

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showTimePicker(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getBirthday()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showTimePicker(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_1
    return-void
.end method

.method private static final iniData$lambda$2(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editDialog:Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/transsion/usercenter/edit/dialog/EditNameDialog;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editDialog:Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editDialog:Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->isShow()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editDialog:Lcom/transsion/usercenter/edit/dialog/EditNameDialog;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lxu/k0;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, v1, Lxu/k0;->m:Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/usercenter/edit/dialog/EditNameDialog;->m0(Landroid/content/Context;Lcom/transsion/usercenter/edit/dialog/EditNameDialog$a;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method private static final iniData$lambda$5(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->getPublishApi()Ljo/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljo/a;->h(Landroid/content/Context;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->photoLaunch:Landroidx/activity/result/b;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private static final iniData$lambda$6(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lbv/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lxu/k0;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-direct {p1, v0, p0, v1}, Lbv/b;-><init>(Landroid/app/Activity;Lbv/b$a;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lbv/b;->b()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final initView()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final initView$lambda$39(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "clip_result"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "result:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x4

    .line 47
    const/4 v5, 0x0

    .line 48
    const-string v1, "photoLaunch"

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->cropImage:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isKidsMode:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->fastAvatar(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->uploadImage(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 73
    .line 74
    const/4 v5, 0x4

    .line 75
    const/4 v6, 0x0

    .line 76
    const-string v2, "photoLaunch"

    .line 77
    .line 78
    const-string v3, "fail"

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/baselib/kids/KidsProfile;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption$lambda$26$lambda$25(Lcom/transsion/baselib/kids/KidsProfile;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/util/Date;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showTimePicker$lambda$32(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/util/Date;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->iniData$lambda$10(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final loadProfile()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->avatarUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "http:"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lxu/k0;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, v2, Lxu/k0;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method private final localAvatar(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/usercenter/edit/k;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/transsion/usercenter/edit/k;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lio/reactivex/rxjava3/core/j;->g(Lio/reactivex/rxjava3/core/l;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/b;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$b;

    .line 32
    .line 33
    invoke-direct {v1, v0, p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final localAvatar$lambda$28(Ljava/lang/String;Lio/reactivex/rxjava3/core/k;)V
    .locals 7

    .line 1
    const-string v0, "emitter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, " localAvatar"

    .line 11
    .line 12
    const-string v3, "start...."

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lqo/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/k;->isDisposed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->initView$lambda$39(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->iniData$lambda$5(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final nickNameShow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/k0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lxu/k0;->m:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption$lambda$26(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onAvatarUrl$lambda$27(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->hideRequestLoading()V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 11
    .line 12
    sget p1, Lcom/transsion/usercenter/R$string;->profile_upload_fails:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-direct {p1, p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->fastAvatar(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p1, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 23
    .line 24
    invoke-direct {p1, p0, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editAvatar(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final onDialogConfirm$lambda$34(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final onError$lambda$31(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean v3, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->respDuration:J

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->hideRequestLoading()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 16
    .line 17
    sget p1, Lcom/transsion/usercenter/R$string;->profile_upload_fails:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-wide v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->respDuration:J

    .line 24
    .line 25
    iput-boolean v3, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->hideRequestLoading()V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static final publishApi_delegate$lambda$0()Ljo/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Ljo/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljo/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final setCurrentBirthDay(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/view/a;->B(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method private final setOldData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getBirthday()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method private final showDeleteProfileOption()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "arg_kids_profile"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/baselib/kids/KidsProfile;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lxu/k0;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lxu/k0;->g:Lcom/noober/background/view/BLConstraintLayout;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lxu/k0;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v1, v1, Lxu/k0;->g:Lcom/noober/background/view/BLConstraintLayout;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lxu/k0;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v1, v1, Lxu/k0;->g:Lcom/noober/background/view/BLConstraintLayout;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    new-instance v2, Lcom/transsion/usercenter/edit/j;

    .line 66
    .line 67
    invoke-direct {v2, p0, v0}, Lcom/transsion/usercenter/edit/j;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void
.end method

.method private static final showDeleteProfileOption$lambda$26(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ProfileEditCenterFragment"

    .line 6
    .line 7
    const-string v2, "click delete profile."

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p2, "requireActivity(...)"

    .line 18
    .line 19
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/transsion/usercenter/edit/o;

    .line 23
    .line 24
    invoke-direct {p2, p1, p0}, Lcom/transsion/usercenter/edit/o;-><init>(Lcom/transsion/baselib/kids/KidsProfile;Landroidx/fragment/app/FragmentActivity;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getKidsId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p1, v1, p2}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "PinInputDialog"

    .line 47
    .line 48
    invoke-virtual {p1, p0, p2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private static final showDeleteProfileOption$lambda$26$lambda$25(Lcom/transsion/baselib/kids/KidsProfile;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->b:Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsProfile;->getKidsId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Lcom/transsion/usercenter/edit/n;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/transsion/usercenter/edit/n;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "DeleteKidsProfileDialog"

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final showDeleteProfileOption$lambda$26$lambda$25$lambda$24(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final showEntity(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->defaultShow()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->headPortrait()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->headPortraitBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->nickNameShow()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->genderShow()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->birthDayShow()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final showKidsProfileData(Lcom/transsion/baselib/kids/KidsProfile;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isKidsMode:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->currentKidsProfile:Lcom/transsion/baselib/kids/KidsProfile;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarLocalPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->fastAvatar(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lxu/k0;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, v1, Lxu/k0;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarResId()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lxu/k0;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, v1, Lxu/k0;->m:Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lxu/k0;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v1, v1, Lxu/k0;->i:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    new-instance v2, Lcom/transsion/usercenter/edit/i;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/edit/i;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "getString(...)"

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v3, v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lxu/k0;

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget-object v0, v0, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    sget v1, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lxu/k0;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    iget-object v0, v0, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    sget v1, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getBirthday()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-lez v0, :cond_9

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const/4 p1, 0x0

    .line 174
    :goto_4
    if-eqz p1, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lxu/k0;

    .line 181
    .line 182
    if-eqz v0, :cond_a

    .line 183
    .line 184
    iget-object v0, v0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->setBtnRight(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    return-void
.end method

.method private static final showKidsProfileData$lambda$13(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->getPublishApi()Ljo/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljo/a;->h(Landroid/content/Context;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->photoLaunch:Landroidx/activity/result/b;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final showRequestLoading()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/k0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final showTimePicker(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x76c

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lq5/a;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/transsion/usercenter/edit/l;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/transsion/usercenter/edit/l;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Lq5/a;-><init>(Landroid/content/Context;Ls5/c;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v0, v2}, Lq5/a;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Lq5/a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget v3, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Lq5/a;->e(I)Lq5/a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 64
    .line 65
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v2}, Lq5/a;->f(I)Lq5/a;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    sget v3, Lcom/tn/lib/widget/R$color;->line_01:I

    .line 78
    .line 79
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Lq5/a;->b(I)Lq5/a;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v8, ""

    .line 88
    .line 89
    const-string v9, ""

    .line 90
    .line 91
    const-string v4, ""

    .line 92
    .line 93
    const-string v5, ""

    .line 94
    .line 95
    const-string v6, ""

    .line 96
    .line 97
    const-string v7, ""

    .line 98
    .line 99
    invoke-virtual/range {v3 .. v9}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lq5/a;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lq5/a;->a()Lcom/bigkoo/pickerview/view/a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 108
    .line 109
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/view/a;->B(Ljava/util/Calendar;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->setCurrentBirthDay(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 134
    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->q()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->timePickerView:Lcom/bigkoo/pickerview/view/a;

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->v()V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method private static final showTimePicker$lambda$32(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/util/Date;Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearBirthday:Z

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editBirthday(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearBirthday:Z

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    const-string v0, "yyyy-MM-dd"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editBirthday(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final checkBack()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkEditSubmit(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final checkEditSubmit(Z)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v7, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->currentKidsProfile:Lcom/transsion/baselib/kids/KidsProfile;

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v7, :cond_e

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lxu/k0;

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    iget-object v4, v4, Lxu/k0;->m:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-lez v5, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v4, v3

    .line 44
    :goto_0
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    move-object v9, v4

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :goto_2
    invoke-virtual {v7}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_1

    .line 54
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lxu/k0;

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iget-object v4, v4, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_4

    .line 71
    :cond_3
    move-object v4, v3

    .line 72
    :goto_4
    if-nez v4, :cond_4

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_4
    move-object v0, v4

    .line 76
    :goto_5
    sget v4, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 77
    .line 78
    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_6
    move-object v11, v0

    .line 93
    goto :goto_7

    .line 94
    :cond_5
    sget v1, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 95
    .line 96
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {v7}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    goto :goto_6

    .line 116
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lxu/k0;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget-object v0, v0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 125
    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getSetValue()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-lez v1, :cond_7

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_7
    move-object v0, v3

    .line 142
    :goto_8
    if-nez v0, :cond_8

    .line 143
    .line 144
    goto :goto_a

    .line 145
    :cond_8
    :goto_9
    move-object v12, v0

    .line 146
    goto :goto_b

    .line 147
    :cond_9
    :goto_a
    invoke-virtual {v7}, Lcom/transsion/baselib/kids/KidsProfile;->getBirthday()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_9

    .line 152
    :goto_b
    if-eqz v12, :cond_b

    .line 153
    .line 154
    invoke-direct {v6, v12}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->calcAgeFromBirthday(Ljava/lang/String;)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_a

    .line 159
    .line 160
    goto :goto_d

    .line 161
    :cond_a
    :goto_c
    move-object/from16 v16, v0

    .line 162
    .line 163
    goto :goto_e

    .line 164
    :cond_b
    :goto_d
    invoke-virtual {v7}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    goto :goto_c

    .line 169
    :goto_e
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 170
    .line 171
    iget-object v1, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->cropImage:Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_c

    .line 178
    .line 179
    invoke-virtual {v7}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarLocalPath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    :cond_c
    move-object v14, v1

    .line 184
    const/16 v17, 0xa5

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v15, 0x0

    .line 192
    invoke-static/range {v7 .. v18}, Lcom/transsion/baselib/kids/KidsProfile;->copy$default(Lcom/transsion/baselib/kids/KidsProfile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/baselib/kids/KidsProfile;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const/4 v4, 0x2

    .line 197
    invoke-static {v0, v1, v2, v4, v3}, Lcom/transsion/baselib/kids/KidsAccountManager;->n(Lcom/transsion/baselib/kids/KidsAccountManager;Lcom/transsion/baselib/kids/KidsProfile;ZILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 207
    .line 208
    .line 209
    :cond_d
    return-void

    .line 210
    :cond_e
    iget-object v4, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Lxu/k0;

    .line 217
    .line 218
    if-eqz v5, :cond_f

    .line 219
    .line 220
    iget-object v5, v5, Lxu/k0;->m:Landroid/widget/TextView;

    .line 221
    .line 222
    if-eqz v5, :cond_f

    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    goto :goto_f

    .line 229
    :cond_f
    move-object v5, v3

    .line 230
    :goto_f
    iget-object v7, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v5, :cond_11

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Lxu/k0;

    .line 243
    .line 244
    if-eqz v4, :cond_10

    .line 245
    .line 246
    iget-object v4, v4, Lxu/k0;->m:Landroid/widget/TextView;

    .line 247
    .line 248
    if-eqz v4, :cond_10

    .line 249
    .line 250
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    goto :goto_10

    .line 255
    :cond_10
    move-object v4, v3

    .line 256
    :goto_10
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Lxu/k0;

    .line 265
    .line 266
    if-eqz v5, :cond_12

    .line 267
    .line 268
    iget-object v5, v5, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 269
    .line 270
    if-eqz v5, :cond_12

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    goto :goto_11

    .line 281
    :cond_12
    move-object v5, v3

    .line 282
    :goto_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-nez v5, :cond_15

    .line 290
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    check-cast v5, Lxu/k0;

    .line 296
    .line 297
    if-eqz v5, :cond_13

    .line 298
    .line 299
    iget-object v5, v5, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 300
    .line 301
    if-eqz v5, :cond_13

    .line 302
    .line 303
    invoke-virtual {v5}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    goto :goto_12

    .line 308
    :cond_13
    move-object v5, v3

    .line 309
    :goto_12
    iget-object v7, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-nez v5, :cond_15

    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lxu/k0;

    .line 322
    .line 323
    if-eqz v0, :cond_14

    .line 324
    .line 325
    iget-object v0, v0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 326
    .line 327
    if-eqz v0, :cond_14

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    goto :goto_13

    .line 334
    :cond_14
    move-object v0, v3

    .line 335
    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v5, Lxu/k0;

    .line 344
    .line 345
    if-eqz v5, :cond_16

    .line 346
    .line 347
    iget-object v5, v5, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 348
    .line 349
    if-eqz v5, :cond_16

    .line 350
    .line 351
    invoke-virtual {v5}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    goto :goto_14

    .line 356
    :cond_16
    move-object v5, v3

    .line 357
    :goto_14
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    check-cast v7, Lxu/k0;

    .line 366
    .line 367
    if-eqz v7, :cond_17

    .line 368
    .line 369
    iget-object v7, v7, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 370
    .line 371
    if-eqz v7, :cond_17

    .line 372
    .line 373
    invoke-virtual {v7}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    goto :goto_15

    .line 378
    :cond_17
    move-object v7, v3

    .line 379
    :goto_15
    iget-object v8, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldBirth:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    const-string v8, "null"

    .line 386
    .line 387
    if-nez v7, :cond_1b

    .line 388
    .line 389
    iget-boolean v7, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearBirthday:Z

    .line 390
    .line 391
    if-eqz v7, :cond_1b

    .line 392
    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    check-cast v7, Lxu/k0;

    .line 398
    .line 399
    if-eqz v7, :cond_18

    .line 400
    .line 401
    iget-object v7, v7, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 402
    .line 403
    if-eqz v7, :cond_18

    .line 404
    .line 405
    invoke-virtual {v7}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    goto :goto_16

    .line 410
    :cond_18
    move-object v7, v3

    .line 411
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    if-eqz v9, :cond_19

    .line 416
    .line 417
    sget v10, Lcom/transsion/usercenter/R$string;->profile_empty_select:I

    .line 418
    .line 419
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    goto :goto_17

    .line 424
    :cond_19
    move-object v9, v3

    .line 425
    :goto_17
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-eqz v7, :cond_1a

    .line 430
    .line 431
    move v0, v1

    .line 432
    move-object v7, v8

    .line 433
    goto :goto_18

    .line 434
    :cond_1a
    move-object v7, v0

    .line 435
    move v0, v1

    .line 436
    goto :goto_18

    .line 437
    :cond_1b
    move-object v7, v0

    .line 438
    move v0, v2

    .line 439
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 440
    .line 441
    .line 442
    move-result-object v9

    .line 443
    check-cast v9, Lxu/k0;

    .line 444
    .line 445
    if-eqz v9, :cond_1c

    .line 446
    .line 447
    iget-object v9, v9, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 448
    .line 449
    if-eqz v9, :cond_1c

    .line 450
    .line 451
    invoke-virtual {v9}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    goto :goto_19

    .line 456
    :cond_1c
    move-object v9, v3

    .line 457
    :goto_19
    iget-object v10, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldGender:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-nez v9, :cond_1d

    .line 464
    .line 465
    iget-boolean v9, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearGender:Z

    .line 466
    .line 467
    if-eqz v9, :cond_1d

    .line 468
    .line 469
    move-object v5, v8

    .line 470
    move v8, v1

    .line 471
    goto :goto_1a

    .line 472
    :cond_1d
    move v8, v2

    .line 473
    :goto_1a
    if-nez v8, :cond_1f

    .line 474
    .line 475
    if-nez v0, :cond_1f

    .line 476
    .line 477
    iget-object v0, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->oldNickName:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1f

    .line 484
    .line 485
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_1f

    .line 490
    .line 491
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_1f

    .line 496
    .line 497
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_1e

    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 504
    .line 505
    .line 506
    :cond_1e
    return-void

    .line 507
    :cond_1f
    if-eqz p1, :cond_20

    .line 508
    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editTipsDialog()V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_20
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 514
    .line 515
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-nez v0, :cond_21

    .line 520
    .line 521
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 522
    .line 523
    sget v1, Lcom/transsion/usercenter/R$string;->network_fail:I

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_21
    iget-object v0, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->avatarUrl:Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_23

    .line 536
    .line 537
    iget-object v0, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 538
    .line 539
    if-eqz v0, :cond_22

    .line 540
    .line 541
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    :cond_22
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    move-object v1, v0

    .line 550
    move v8, v2

    .line 551
    goto :goto_1b

    .line 552
    :cond_23
    iget-object v0, v6, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->avatarUrl:Ljava/lang/String;

    .line 553
    .line 554
    move v8, v1

    .line 555
    move-object v1, v0

    .line 556
    :goto_1b
    invoke-direct {v6, v5}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->buildGender(Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    move-object/from16 v0, p0

    .line 561
    .line 562
    move-object v2, v4

    .line 563
    move-object v4, v7

    .line 564
    move v5, v8

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 566
    .line 567
    .line 568
    return-void
.end method

.method public final confirmSubmit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkEditSubmit(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lxu/k0;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lxu/k0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lxu/k0;->c(Landroid/view/LayoutInflater;)Lxu/k0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    new-instance p2, Lcom/transsion/usercenter/edit/e;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/edit/e;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->photoLaunch:Landroidx/activity/result/b;

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->initView()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->iniData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAvatarUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "localPath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bucket"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/transsion/usercenter/edit/m;

    .line 23
    .line 24
    invoke-direct {v1, p1, p0, p2, p3}, Lcom/transsion/usercenter/edit/m;-><init>(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lav/b;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDialogConfirm(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lxu/k0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lxu/k0;->j:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/usercenter/edit/p;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/edit/p;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x64

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editNickName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public onDialogSelect(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearGender:Z

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editGender(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isClearGender:Z

    .line 20
    .line 21
    invoke-direct {p0, p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editGender(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onEditProfile(Z)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->hideRequestLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lxu/k0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_17

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 32
    .line 33
    sget v1, Lcom/transsion/usercenter/R$string;->profile_saved_success:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lfh/b$a;->d(I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 39
    .line 40
    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    const-class v2, Lqx/a;

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lqx/a;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v1, v3

    .line 59
    :goto_0
    iget-boolean v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    if-eqz v4, :cond_8

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 66
    .line 67
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    :cond_3
    move-object v6, v5

    .line 78
    :cond_4
    const-string v7, "http"

    .line 79
    .line 80
    const/4 v8, 0x2

    .line 81
    invoke-static {v4, v7, v0, v8, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-nez v9, :cond_5

    .line 86
    .line 87
    invoke-static {v6, v7, v0, v8, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    const/4 v11, 0x6

    .line 94
    const/4 v12, 0x0

    .line 95
    const-string v8, "image/"

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    move-object v7, v6

    .line 100
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-lez v3, :cond_5

    .line 105
    .line 106
    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v6, "substring(...)"

    .line 111
    .line 112
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_5
    iget-object v3, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    if-eqz v1, :cond_7

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    iput-object v5, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->editText:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v1, :cond_15

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_15

    .line 151
    .line 152
    new-array v4, v0, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v2, v4}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lqx/a;

    .line 159
    .line 160
    if-eqz v4, :cond_15

    .line 161
    .line 162
    invoke-interface {v4, v3}, Lqx/a;->g(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lxu/k0;

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    iget-object v3, v3, Lxu/k0;->m:Landroid/widget/TextView;

    .line 176
    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_9

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-nez v3, :cond_a

    .line 190
    .line 191
    :cond_9
    move-object v3, v5

    .line 192
    :cond_a
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-lez v4, :cond_c

    .line 197
    .line 198
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 199
    .line 200
    if-eqz v4, :cond_b

    .line 201
    .line 202
    invoke-virtual {v4, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    if-eqz v1, :cond_c

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Lxu/k0;

    .line 215
    .line 216
    if-eqz v3, :cond_d

    .line 217
    .line 218
    iget-object v3, v3, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 219
    .line 220
    if-eqz v3, :cond_d

    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-eqz v3, :cond_d

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-nez v3, :cond_e

    .line 233
    .line 234
    :cond_d
    move-object v3, v5

    .line 235
    :cond_e
    sget v4, Lcom/transsion/usercenter/R$string;->profile_empty_select:I

    .line 236
    .line 237
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_f

    .line 246
    .line 247
    move-object v3, v5

    .line 248
    :cond_f
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 249
    .line 250
    if-eqz v4, :cond_10

    .line 251
    .line 252
    invoke-virtual {v4, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_10
    if-eqz v1, :cond_11

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lxu/k0;

    .line 265
    .line 266
    if-eqz v3, :cond_13

    .line 267
    .line 268
    iget-object v3, v3, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 269
    .line 270
    if-eqz v3, :cond_13

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;->getBtnTextValue()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v3, :cond_13

    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    if-nez v3, :cond_12

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_12
    move-object v5, v3

    .line 286
    :cond_13
    :goto_1
    invoke-direct {p0, v5}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->buildGender(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 291
    .line 292
    if-eqz v4, :cond_14

    .line 293
    .line 294
    invoke-virtual {v4, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setGender(I)V

    .line 295
    .line 296
    .line 297
    :cond_14
    if-eqz v1, :cond_15

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/transsnet/loginapi/bean/UserInfo;->setGender(I)V

    .line 300
    .line 301
    .line 302
    :cond_15
    :goto_2
    if-eqz v1, :cond_16

    .line 303
    .line 304
    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lqx/a;

    .line 311
    .line 312
    if-eqz v0, :cond_16

    .line 313
    .line 314
    invoke-interface {v0, v1}, Lqx/a;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 315
    .line 316
    .line 317
    :cond_16
    if-nez p1, :cond_18

    .line 318
    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    if-eqz p1, :cond_18

    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_17
    iput-boolean v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->isChangeAvatar:Z

    .line 330
    .line 331
    :cond_18
    :goto_3
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/usercenter/edit/r;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lcom/transsion/usercenter/edit/r;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->userEntity:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lxu/k0;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->setOldData()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->formattingGender()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showEntity(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showDeleteProfileOption()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "sourceType"

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final uploadImage(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "imagePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 15
    .line 16
    sget v0, Lcom/transsion/usercenter/R$string;->network_fail:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->showRequestLoading()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->respDuration:J

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->presenter:Lav/b;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v1, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lav/b;->g(Ljava/lang/String;Lcom/transsion/usercenter/edit/a;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
