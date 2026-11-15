.class public Lcom/cloud/hisavana/sdk/Y0$d;
.super Lcom/cloud/hisavana/sdk/manager/g$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/Y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/16 v2, 0x1e0

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isDownloadAd()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-lt p2, v2, :cond_2

    .line 34
    .line 35
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdxAscribeRetryEnable()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/g;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    if-lt p2, v2, :cond_2

    .line 70
    .line 71
    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/g;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method
