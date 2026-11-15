.class public final Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;
.super Lcom/hisavana/common/interfacz/TAdditionalListener;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ!\u0010\u000f\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ!\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000bJ!\u0010\u0017\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J!\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001b\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;",
        "Lcom/hisavana/common/interfacz/TAdditionalListener;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "jsAdHolder",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V",
        "Lcom/hisavana/common/bean/AdditionalInfo;",
        "additionalInfo",
        "",
        "onTrigger",
        "(Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onLoadSuccess",
        "Lcom/hisavana/common/bean/TAdErrorCode;",
        "tAdErrorCode",
        "onLoadFailure",
        "(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onTriggerShow",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "nativeInfo",
        "onShow",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onShowed",
        "onShowError",
        "onClick",
        "",
        "source",
        "onClosed",
        "(I)V",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;)V",
        "onRewarded",
        "()V",
        "a",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "b",
        "Ljava/lang/String;",
        "tag",
        "",
        "c",
        "Z",
        "isRewarded",
        "mediation_release"
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
.field public final a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "jsAdHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 10
    .line 11
    const-string p1, "BridgeMediationAdListener"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    .line 1
    const-string p1, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onClick, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    :goto_0
    move-wide v6, p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-wide/16 p1, 0x0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/4 v8, 0x0

    .line 50
    const/4 v3, 0x3

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onClosed(I)V
    .locals 9

    .line 2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed, source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 7
    iget-boolean v5, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->c:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 8
    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onLoadFailure,additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", errorCode: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    move v5, p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/16 p1, -0x2710

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    :goto_2
    move-wide v7, p1

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const-wide/16 p1, 0x0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_3
    const/4 v9, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 p2, 0x2

    .line 81
    if-eq p1, p2, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onLoadSuccess, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    :goto_0
    move-wide v7, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/4 v9, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 v0, 0x2

    .line 63
    if-ne p1, v0, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->showAd()V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public onRewarded()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "onRewarded"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->c:Z

    .line 14
    .line 15
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    .line 1
    const-string p1, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onShow, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    :goto_0
    move-wide v6, p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-wide/16 p1, 0x0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/4 v8, 0x0

    .line 50
    const/4 v3, 0x2

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onShowError, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", errorCode: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    move v5, p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/16 p1, -0x2710

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    :goto_2
    move-wide v7, p1

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const-wide/16 p1, 0x0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_3
    const/4 v9, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 p2, 0x2

    .line 81
    if-eq p1, p2, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onShowed, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onTrigger(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onTrigger, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onTriggerShow(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onTriggerShow, additionalInfo: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
