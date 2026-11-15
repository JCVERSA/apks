.class public Lee/n;
.super Lee/c;
.source "source.java"


# instance fields
.field public B:I


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lee/c;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lee/n;->B:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public G()Lcom/hisavana/common/bean/AdCache;
    .locals 1

    .line 1
    iget v0, p0, Lee/c;->q:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lee/n;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lee/n;->s0(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0(IIZZ)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lee/n;->G()Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lee/c;->q:I

    .line 8
    .line 9
    const/4 v3, 0x6

    .line 10
    const/4 v7, 0x0

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    move v4, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v7

    .line 17
    :goto_0
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move v5, p1

    .line 20
    move v6, p4

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZIZ)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "*---->get ad from cache,size:"

    .line 35
    .line 36
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    :goto_1
    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    const-string v0, "NativeCacheHandler"

    .line 54
    .line 55
    invoke-virtual {p2, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lee/n;->u0(Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-object p1

    .line 73
    :cond_4
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "get 0 native ad from cache"

    .line 78
    .line 79
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method

.method public r0(Lcom/hisavana/common/bean/TAdNativeInfo;Lee/s;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "NativeCacheHandler"

    .line 35
    .line 36
    const-string v2, "NativeCacheHandler setAdListener"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public s0(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final t0(Lcom/hisavana/common/bean/TAdNativeInfo;Lee/s;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, v0, v1}, Lee/c;->c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, p2}, Lee/c;->i(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lee/s;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public u0(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getShowId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->setShowId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lee/c;->b:Lee/s;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lee/n;->t0(Lcom/hisavana/common/bean/TAdNativeInfo;Lee/s;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method
