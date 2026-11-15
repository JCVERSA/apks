.class public final Lcom/hisavana/adxlibrary/excuter/AdxRewarded;
.super Lcom/hisavana/common/base/BaseVideo;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/hisavana/adxlibrary/excuter/AdxRewarded;",
        "Lcom/hisavana/common/base/BaseVideo;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V",
        "",
        "initVideo",
        "()V",
        "onVideoStartLoad",
        "Landroid/app/Activity;",
        "activity",
        "onVideoShow",
        "(Landroid/app/Activity;)V",
        "",
        "isLoaded",
        "()Z",
        "isExpired",
        "canShow",
        "destroyAd",
        "isAdxAd",
        "isEwAd",
        "isInternalAd",
        "a",
        "Lcom/hisavana/common/bean/Network;",
        "",
        "b",
        "Ljava/lang/String;",
        "tag",
        "Lb7/d;",
        "c",
        "Lb7/d;",
        "rewarded",
        "ssp_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/hisavana/common/bean/Network;

.field public final b:Ljava/lang/String;

.field public c:Lb7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->a:Lcom/hisavana/common/bean/Network;

    .line 5
    .line 6
    const-string p1, "AdxRewarded"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->b:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "rewarded ad or listener is null"

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final synthetic access$adClosed(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getRewarded$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Lb7/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onReward(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->canShow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public destroyAd()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lb7/a;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->b:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "destroy"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public initVideo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->a:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lb7/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getCodeSeatId(...)"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lb7/d;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 20
    .line 21
    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ld7/a$b;->a()Ld7/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lb7/a;->r(Ld7/a;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lb7/d;->t(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public isAdxAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public isEwAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lb7/a;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public isInternalAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public onVideoShow(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lb7/a;->g()Ld7/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmpg-double v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, v0, v1}, Ld7/a;->h(D)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lb7/a;->r(Ld7/a;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lb7/d;->u()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_1
    if-nez p1, :cond_4

    .line 42
    .line 43
    :cond_3
    new-instance p1, Lbe/a;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lbe/a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    return-void
.end method

.method public onVideoStartLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->c:Lb7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget v2, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ld7/a;->k(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "hisa-"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ld7/a;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ld7/a;->j(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x2

    .line 70
    if-lt v2, v3, :cond_1

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 75
    :goto_0
    invoke-virtual {v1, v2}, Ld7/a;->i(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lb7/a;->r(Ld7/a;)V

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lb7/a;->m(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lb7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lb7/d;->s()V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
