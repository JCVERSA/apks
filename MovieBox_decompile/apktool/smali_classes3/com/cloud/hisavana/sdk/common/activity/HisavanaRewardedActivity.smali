.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;
.super Landroid/app/Activity;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/z3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;,
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;,
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 a2\u00020\u00012\u00020\u0002:\u0003TQYB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008&\u0010$J\u000f\u0010\'\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0004J\'\u0010-\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00080\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00082\u00103J\u0019\u00106\u001a\u00020\u00052\u0008\u00105\u001a\u0004\u0018\u000104H\u0002\u00a2\u0006\u0004\u00086\u00107J!\u0010;\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008>\u00103J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008@\u0010 J!\u0010C\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001d2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010G\u001a\u00020\u00052\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0014\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008M\u0010\u0004J\u000f\u0010N\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008N\u0010\u0004J\u000f\u0010O\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008O\u0010\u0004J\u000f\u0010P\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008P\u0010\u0004J!\u0010Q\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008Q\u0010<J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020RH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u000f\u0010Y\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008Y\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008T\u00103J\u000f\u0010[\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008[\u0010\u0004J\u000f\u0010T\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008T\u0010\u0004J\u000f\u0010\\\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\\\u0010\u0004J\u0019\u0010T\u001a\u00020\u00052\u0008\u0010]\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008T\u0010^J\u000f\u0010Q\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0004R\u0014\u0010`\u001a\u00020\u001d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008T\u0010_R\u0014\u0010b\u001a\u00020R8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Q\u0010aR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010eR\u0016\u0010g\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010_R\u0016\u0010h\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010cR\u0016\u0010j\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010aR\u0018\u0010m\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010rR\u0018\u0010v\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010uR\u0018\u0010y\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010rR\u0018\u0010}\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010rR\u0018\u0010\u007f\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010rR\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008C\u0010\u0099\u0001R\u0017\u0010\u009c\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010cR\u0018\u0010\u009e\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009d\u0001\u0010cR\u001a\u0010\u00a2\u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0017\u0010\u00a3\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010aR,\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\"\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R,\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0018\u0010\u00b5\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b4\u0001\u0010@R\u0017\u0010\u00b6\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010@R\u0017\u0010\u00b7\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010@R\u0017\u0010\u00b8\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010@\u00a8\u0006\u00b9\u0001"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;",
        "Landroid/app/Activity;",
        "Lcom/cloud/hisavana/sdk/z3;",
        "<init>",
        "()V",
        "",
        "j",
        "Y",
        "S",
        "U",
        "n0",
        "g0",
        "p0",
        "",
        "q0",
        "()Z",
        "c0",
        "i0",
        "j0",
        "t0",
        "l0",
        "",
        "volume",
        "k",
        "(F)V",
        "s0",
        "a0",
        "r0",
        "e0",
        "",
        "videoUrl",
        "w",
        "(Ljava/lang/String;)V",
        "",
        "duration",
        "B",
        "(J)V",
        "remainingDuration",
        "l",
        "h",
        "w0",
        "i",
        "title",
        "message",
        "buttonText",
        "y",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "u0",
        "v0",
        "isShowToast",
        "L",
        "(Z)V",
        "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;",
        "adErrorCode",
        "v",
        "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V",
        "isClose",
        "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
        "downUpPointBean",
        "H",
        "(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V",
        "isSentEvent",
        "G",
        "event",
        "F",
        "",
        "params",
        "x",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onResume",
        "onPause",
        "onBackPressed",
        "onDestroy",
        "b",
        "",
        "psClickType",
        "a",
        "(I)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "f",
        "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "c",
        "status",
        "d",
        "e",
        "pointBean",
        "(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V",
        "Ljava/lang/String;",
        "tag",
        "I",
        "defaultDuration",
        "J",
        "rewardDuration",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adBean",
        "prefix",
        "observerId",
        "g",
        "adMediaType",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "adMainLayout",
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/FrameLayout;",
        "adContainer",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "adVolume",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "adChronometer",
        "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;",
        "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;",
        "adVideoView",
        "m",
        "adImageView",
        "n",
        "adIcon",
        "o",
        "adChoicesView",
        "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;",
        "p",
        "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;",
        "adBadgeView",
        "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;",
        "q",
        "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;",
        "adCloseView",
        "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;",
        "r",
        "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;",
        "storeMarkView",
        "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;",
        "s",
        "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;",
        "adDisclaimerView",
        "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;",
        "t",
        "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;",
        "interactiveWebView",
        "Lcom/cloud/hisavana/sdk/common/util/v;",
        "u",
        "Lcom/cloud/hisavana/sdk/common/util/v;",
        "retainDialog",
        "ruDialog",
        "Z",
        "isLandscape",
        "isNeedRuMargin",
        "lastClickTime",
        "z",
        "triggerMillis",
        "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
        "A",
        "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
        "state",
        "closeDelayTimeDuration",
        "Lcom/cloud/hisavana/sdk/k0;",
        "C",
        "Lcom/cloud/hisavana/sdk/k0;",
        "V",
        "()Lcom/cloud/hisavana/sdk/k0;",
        "setRewardStyle",
        "(Lcom/cloud/hisavana/sdk/k0;)V",
        "rewardStyle",
        "Lg7/i;",
        "D",
        "Lg7/i;",
        "getHsConfirmPopUpWindow",
        "()Lg7/i;",
        "setHsConfirmPopUpWindow",
        "(Lg7/i;)V",
        "hsConfirmPopUpWindow",
        "E",
        "downX",
        "downY",
        "upX",
        "upY",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

.field private static J:Ljava/lang/ref/WeakReference;


# instance fields
.field private A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

.field private B:I

.field private C:Lcom/cloud/hisavana/sdk/k0;

.field private D:Lg7/i;

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

.field private l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private u:Lcom/cloud/hisavana/sdk/common/util/v;

.field private v:Lcom/cloud/hisavana/sdk/common/util/v;

.field private w:Z

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Rewarded"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    mul-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 22
    .line 23
    const/16 v12, 0x1ff

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v13}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;-><init>(JFZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 41
    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    .line 43
    .line 44
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    .line 45
    .line 46
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    .line 47
    .line 48
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    .line 49
    .line 50
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    .line 51
    .line 52
    return-void
.end method

.method public static final synthetic A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method private final B(J)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "-----------> startCountdown "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/k0;->c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i()V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->disclaimer:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "getString(...)"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/e0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "getDisclaimerText(...)"

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget v4, Lcom/cloud/hisavana/sdk/R$string;->ok:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    const/4 v0, 0x0

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 145
    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 149
    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/k0;->j()V

    .line 153
    .line 154
    .line 155
    :cond_6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->getFinishedString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    if-nez v0, :cond_8

    .line 164
    .line 165
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;

    .line 170
    .line 171
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 179
    .line 180
    if-eqz p1, :cond_9

    .line 181
    .line 182
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->countdownText(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    new-instance p2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;

    .line 196
    .line 197
    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setTickListener(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    :goto_2
    return-void
.end method

.method public static final synthetic C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    .line 2
    .line 3
    return-void
.end method

.method private static final D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->toggleVolume()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static final synthetic E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->L(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final G(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "_close"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private final H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y:J

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Lkotlin/Pair;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "_click"

    .line 33
    .line 34
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static final synthetic I(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/HSChronometer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    .line 2
    .line 3
    return-void
.end method

.method private static final K(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->isTimeUp()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i()V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void
.end method

.method private final L(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/k0;->l()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerShowSpend()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_0
    const-string v0, "_rewarded"

    .line 34
    .line 35
    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setRewarded(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic M(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    .line 2
    .line 3
    return p0
.end method

.method private final S()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "R02"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v2, "getDecorView(...)"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_1
    new-instance v0, Lcom/cloud/hisavana/sdk/o1;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/o1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v1, "R01"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Lcom/cloud/hisavana/sdk/l1;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/l1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/l1;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/l1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 84
    .line 85
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k0;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    :try_start_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_LAYOUT_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 94
    .line 95
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    .line 100
    .line 101
    :catchall_1
    :cond_3
    :goto_2
    return-void
.end method

.method public static final synthetic T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    .line 2
    .line 3
    return p0
.end method

.method private final U()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/d;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v0, v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static final synthetic W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic X(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->S()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->n0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic Z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    return-object p0
.end method

.method private final a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static final synthetic b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->K(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    return-void
.end method

.method private final c0()V
    .locals 5

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_icon:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x4

    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3, v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-static {v1, v3, v4, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_name:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static synthetic f(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g0()V
    .locals 4

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;

    .line 15
    .line 16
    invoke-direct {v2, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_container:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x4

    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v2, 0x2

    .line 54
    if-ne v0, v2, :cond_2

    .line 55
    .line 56
    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ne v2, v1, :cond_3

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r0()V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t0()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 v2, 0x0

    .line 89
    :goto_1
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s0()V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 95
    .line 96
    if-eqz v2, :cond_a

    .line 97
    .line 98
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ne v0, v1, :cond_9

    .line 126
    .line 127
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 131
    .line 132
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 137
    .line 138
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;

    .line 139
    .line 140
    invoke-direct {v3, p0, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, v0, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 144
    .line 145
    .line 146
    :cond_a
    return-void
.end method

.method private final h()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "-----------> onResume "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->resumeCountdown(J)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->resume()V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPaused(Z)V

    .line 83
    .line 84
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x1

    .line 94
    if-ne v0, v1, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    :catchall_0
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k0;->i()V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method public static final synthetic h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    .line 2
    .line 3
    return p0
.end method

.method private final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    .line 6
    .line 7
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/cloud/hisavana/sdk/R$string;->not_reward_title:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getString(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v3, Lcom/cloud/hisavana/sdk/R$string;->not_reward_content:I

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget v3, Lcom/cloud/hisavana/sdk/R$string;->continue_txt:I

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->i(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRetainDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "showRetainDialog error: "

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void
.end method

.method private final i0()V
    .locals 5

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/i;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x4

    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-static {v2, v0, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-static {v0, v2, v4, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v2, v1

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/util/e0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_5
    sget-object v2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 118
    .line 119
    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/cloud/hisavana/sdk/s2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 120
    .line 121
    .line 122
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 139
    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    if-eqz v0, :cond_8

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    const/16 v0, 0x8

    .line 148
    .line 149
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    const/high16 v1, 0x40c00000    # 6.0f

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 159
    .line 160
    .line 161
    :cond_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    const v1, -0x878788

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    :cond_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 172
    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 178
    .line 179
    .line 180
    :cond_b
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    const-string v3, "adBean"

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-static {v0, v3, v1}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 29
    .line 30
    :goto_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    const-string v1, "prefix"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "observerId"

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f:J

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    const-string v3, "triggerTs"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->z:J

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->g:I

    .line 91
    .line 92
    const/4 v2, -0x1

    .line 93
    if-ne v0, v2, :cond_4

    .line 94
    .line 95
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 100
    .line 101
    const-string v3, "adMediaType is INVALID_TYPE"

    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADMEDIATYPE_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->U()V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->Y()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 123
    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_7

    .line 137
    .line 138
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_MATERIAL_STYLE_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_3
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method private final j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ad_disclaimer_view:I

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/e;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/activity/e;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/f;

    .line 51
    .line 52
    invoke-direct {v2, v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private final k(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/k0;->b(Landroid/widget/ImageView;F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final synthetic k0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(J)V
    .locals 5

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v3, p1, v3

    .line 15
    .line 16
    if-gtz v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    .line 20
    .line 21
    sub-long/2addr v3, p1

    .line 22
    long-to-float p1, v3

    .line 23
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 24
    .line 25
    div-float/2addr p1, p2

    .line 26
    int-to-float p2, v1

    .line 27
    cmpl-float p1, p1, p2

    .line 28
    .line 29
    if-ltz p1, :cond_2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void

    .line 38
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method private final l0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v1, "getApplicationContext(...)"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x11

    .line 32
    .line 33
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;

    .line 41
    .line 42
    invoke-direct {v2, v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/c4;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 49
    .line 50
    return-void
.end method

.method private static final m(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    const-string v0, "$container"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$bean"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget-object v0, p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/e0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/e0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v0, v1, v2, p2, p0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 40
    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public static final synthetic m0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "rewarded adBean is null"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->g0()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p0()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i0()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j0()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "getApplicationContext(...)"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :catchall_0
    return-void
.end method

.method public static final synthetic o(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0()V
    .locals 8

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_volume:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getVideoVolume()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k(F)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ne v4, v2, :cond_0

    .line 35
    .line 36
    move v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v1

    .line 39
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/g;

    .line 43
    .line 44
    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_chronometer:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-direct {p0, v4, v5}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V

    .line 77
    .line 78
    .line 79
    :cond_2
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close:I

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/h;

    .line 88
    .line 89
    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move v4, v3

    .line 105
    :goto_1
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-ne v5, v2, :cond_6

    .line 114
    .line 115
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    move v2, v4

    .line 137
    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v7, "current close delay time duration is: "

    .line 153
    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v2, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B:I

    .line 168
    .line 169
    if-lez v4, :cond_9

    .line 170
    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q0()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    if-nez v0, :cond_8

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 207
    .line 208
    const-string v4, "current close delay time is 0 or video or image is null, do not count down."

    .line 209
    .line 210
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    if-nez v0, :cond_a

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    :catchall_0
    :cond_b
    :goto_5
    return-void
.end method

.method private static final q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/J0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final q0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getMediaResource()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v2, 0x0

    .line 60
    :cond_4
    :goto_0
    return v2
.end method

.method public static final synthetic r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r0()V
    .locals 7

    .line 1
    const/16 v0, 0xbbd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    if-nez v2, :cond_3

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v2, v3

    .line 47
    :goto_2
    if-nez v2, :cond_3

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    :cond_3
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    move-object v4, v3

    .line 68
    :goto_3
    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 69
    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-lez v5, :cond_6

    .line 77
    .line 78
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 79
    .line 80
    iput-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 81
    .line 82
    :cond_6
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e0()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 90
    .line 91
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .line 93
    const/4 v6, -0x1

    .line 94
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 101
    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_8
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 109
    .line 110
    if-eqz v2, :cond_c

    .line 111
    .line 112
    if-eqz v3, :cond_c

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_9

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_9
    new-instance v2, Ljava/io/File;

    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_a

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_a
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 134
    .line 135
    if-nez v2, :cond_b

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :goto_4
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 142
    .line 143
    if-eqz v2, :cond_d

    .line 144
    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "file://"

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_c
    :goto_5
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 170
    .line 171
    const-string v3, "interactive file not exists "

    .line 172
    .line 173
    invoke-direct {v2, v0, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :goto_6
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-direct {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 193
    .line 194
    .line 195
    :cond_d
    :goto_7
    return-void
.end method

.method private static final s(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->isTimeUp()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final s0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x4

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-static {v0, v2, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-static {v0, v2, v4, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_1
    if-nez v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_IMG_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public static final synthetic t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/w2$a;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l0()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v0, v2

    .line 39
    :goto_1
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_3
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 50
    .line 51
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    return-void

    .line 71
    :cond_6
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_VIDEO_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static final synthetic u(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setAlreadyMeasure(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->z:J

    .line 12
    .line 13
    sub-long/2addr v2, v4

    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const-string v0, "_show"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getRewardDuration()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_2
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    .line 47
    .line 48
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v2, v0

    .line 53
    const-wide/16 v4, 0x3e8

    .line 54
    .line 55
    mul-long/2addr v2, v4

    .line 56
    iput-wide v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/O;->k(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x4

    .line 86
    if-ne v2, v3, :cond_3

    .line 87
    .line 88
    sget-object v1, Lcom/cloud/hisavana/sdk/Y;->a:Lcom/cloud/hisavana/sdk/Y;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "getAdCreativeId(...)"

    .line 95
    .line 96
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v3, "getCodeSeatId(...)"

    .line 104
    .line 105
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/Y;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-int/2addr v2, v1

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowNum(Ljava/lang/Integer;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/cloud/hisavana/sdk/p;->F()Lcom/cloud/hisavana/sdk/p;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/p;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_3
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_hollow_rounded_rect:I

    .line 155
    .line 156
    invoke-static {v1, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .line 162
    .line 163
    :goto_4
    return-void
.end method

.method private final v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    const-string v0, "_error"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final v0()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    .line 37
    .line 38
    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/cloud/hisavana/sdk/g3;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/F;->v()Lcom/cloud/hisavana/sdk/F0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 57
    .line 58
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final w(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->seekTo(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "-----------> video set media data."

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    const/4 v0, 0x2

    .line 48
    const/4 v1, 0x0

    .line 49
    const-string v2, "http"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getVideoVolume()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x0

    .line 69
    cmpg-float v4, v4, v5

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    :cond_4
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setCompanionUrl(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method private final w0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPaused(Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "----------> onPause "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k0;->h()V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method private final x(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/r1;->a:Lcom/cloud/hisavana/sdk/r1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f:J

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/cloud/hisavana/sdk/r1;->d(JLjava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    .line 7
    .line 8
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$i;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/common/util/v;->g(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->j(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRuDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "showRuDialog error: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method public static final synthetic z(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final V()Lcom/cloud/hisavana/sdk/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->tickComplete(Landroid/widget/Chronometer;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/k0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k0;->l()V

    :cond_1
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 4
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v1, "pslink half setClickType, click_install"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v1

    :cond_5
    const/4 p1, 0x1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 6
    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 7
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v1, "pslink half setClickType, click_img"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 8

    .line 12
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lg7/i;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lg7/i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v1}, Lg7/i;->h(Lg7/i$a;)V

    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lg7/i;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const-string v0, "getDecorView(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownX()F

    move-result v1

    float-to-int v1, v1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownY()F

    move-result p1

    float-to-int p1, p1

    move v7, p1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    move-object v3, p0

    .line 20
    invoke-virtual/range {v2 .. v7}, Lg7/i;->j(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;II)V

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x:Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->L(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method public f()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->Y()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    .line 38
    .line 39
    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->n:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x1

    .line 72
    if-ne v0, v1, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Lg7/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :catchall_0
    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
