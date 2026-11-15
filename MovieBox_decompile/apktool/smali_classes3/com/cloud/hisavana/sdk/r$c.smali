.class Lcom/cloud/hisavana/sdk/r$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/r;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic d:Lcom/cloud/hisavana/sdk/r;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/r;ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/hisavana/sdk/r$c;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/r;->g(Lcom/cloud/hisavana/sdk/r;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/r;->i(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/r;->m(Lcom/cloud/hisavana/sdk/r;I)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/cloud/hisavana/sdk/r$c;->b:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/r;->g(Lcom/cloud/hisavana/sdk/r;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/r;->g(Lcom/cloud/hisavana/sdk/r;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/m;->e(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setIconUri(Landroid/net/Uri;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/r;->g(Lcom/cloud/hisavana/sdk/r;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    new-instance v1, Lcom/cloud/hisavana/sdk/r$c$a;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/r$c$a;-><init>(Lcom/cloud/hisavana/sdk/r$c;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 92
    .line 93
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 94
    .line 95
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/r;->i(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/r;->j(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method
