.class public final Lcom/cloud/hisavana/sdk/u0$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/u0$a;-><init>()V

    return-void
.end method

.method private final a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIconUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getIconUrl(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/u0$a$b;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/cloud/hisavana/sdk/u0$a$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/u0$a;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MiniApp"

    .line 28
    .line 29
    const-string v3, "Popup mini app guide."

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p3, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/cloud/hisavana/sdk/u0$a$c;

    .line 39
    .line 40
    move-object v0, v6

    .line 41
    move-object v1, p3

    .line 42
    move-object v3, p4

    .line 43
    move-object v4, p2

    .line 44
    move-object v5, p5

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u0$a$c;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p4, p1, v6}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->V(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;ILcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final b(ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "MiniApp"

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "Existed in homescreen."

    .line 20
    .line 21
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget p1, Lcom/cloud/hisavana/sdk/R$string;->already_exists:I

    .line 25
    .line 26
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v3, "Succeed to add to homescreen."

    .line 35
    .line 36
    invoke-virtual {p1, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 43
    .line 44
    .line 45
    sget p1, Lcom/cloud/hisavana/sdk/R$string;->got_successfully:I

    .line 46
    .line 47
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v2, "Cancel to add to homescreen."

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x3

    .line 64
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "Failed to add to homescreen."

    .line 73
    .line 74
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget p1, Lcom/cloud/hisavana/sdk/R$string;->failed_to_get:I

    .line 78
    .line 79
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->e(I)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/cloud/hisavana/sdk/u0$a;ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u0$a;->b(ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/u0$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/cloud/hisavana/sdk/u0$a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    const/16 p2, 0xd

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v2, p2, v1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    if-eqz p2, :cond_8

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const-string v1, "launcherdlt://"

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/J0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const-string v4, "{\""

    .line 26
    .line 27
    invoke-static {p1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    :try_start_0
    const-class v4, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 35
    .line 36
    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    move-object v8, p1

    .line 41
    check-cast v8, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    if-eqz v8, :cond_7

    .line 44
    .line 45
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDeepLinkUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v4, "getDeepLinkUrl(...)"

    .line 50
    .line 51
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDeepLinkUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIntGuideMode()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    if-eq p1, v0, :cond_5

    .line 73
    .line 74
    if-eq p1, v2, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    move-object v4, p0

    .line 82
    move-object v6, p2

    .line 83
    move-object v7, p3

    .line 84
    invoke-direct/range {v4 .. v9}, Lcom/cloud/hisavana/sdk/u0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    move-object v4, p0

    .line 93
    move-object v6, p2

    .line 94
    move-object v7, p3

    .line 95
    invoke-direct/range {v4 .. v9}, Lcom/cloud/hisavana/sdk/u0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return v0

    .line 99
    :cond_6
    invoke-static {p2, v9}, Lcom/cloud/hisavana/sdk/J0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1

    .line 104
    :cond_7
    :goto_1
    return v0

    .line 105
    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "MiniApp"

    .line 110
    .line 111
    const-string p3, "Parse mini app info failed."

    .line 112
    .line 113
    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    :goto_2
    return v0
.end method
