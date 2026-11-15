.class public final Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/mediation/bridge/listener/BridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bridge/MediationJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BridgeListenerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JW\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "bridge",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V",
        "",
        "callbackId",
        "",
        "eventType",
        "codeSeatId",
        "adType",
        "errorCode",
        "rewardStatus",
        "",
        "price",
        "",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adInfos",
        "",
        "callBackToJs",
        "(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "jsBannerAdHolder",
        "showBanner",
        "(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V",
        "Ljava/lang/ref/WeakReference;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "weakBridge",
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
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 1

    .line 1
    const-string v0, "bridge"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public callBackToJs(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIID",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "codeSeatId"

    .line 8
    .line 9
    move-object v4, p3

    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v0, p0

    .line 14
    iget-object v1, v0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    move v3, p2

    .line 26
    move-object v4, p3

    .line 27
    move v5, p4

    .line 28
    move/from16 v6, p5

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    move-wide/from16 v8, p7

    .line 33
    .line 34
    move-object/from16 v10, p9

    .line 35
    .line 36
    invoke-static/range {v1 .. v10}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->access$callBackToJS(Lcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public showBanner(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V
    .locals 1

    .line 1
    const-string v0, "jsBannerAdHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->access$showBanner(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
