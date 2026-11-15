.class public abstract Lcom/transsion/ad/bidding/base/x;
.super Lcom/hisavana/common/interfacz/TAdditionalListener;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "ew\u6ca1\u6709\u4f20\u9012\u8fc7\u6765\u5305\u540d"

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setECPM(Ljava/lang/Double;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "EW"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getImageUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setHorizontalImageUrl(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v2, "getApp(...)"

    .line 47
    .line 48
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
