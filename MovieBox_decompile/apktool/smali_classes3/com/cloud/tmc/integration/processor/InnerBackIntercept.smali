.class public final Lcom/cloud/tmc/integration/processor/InnerBackIntercept;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/processor/InnerBackIntercept$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/InnerBackIntercept;",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "()V",
        "mCallback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "getMCallback",
        "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "setMCallback",
        "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "getInterceptName",
        "",
        "getPriority",
        "",
        "intercept",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "chain",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/processor/InnerBackIntercept$Companion;

.field public static final TAG:Ljava/lang/String; = "InnerBackIntercept"


# instance fields
.field private mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/processor/InnerBackIntercept$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept;->Companion:Lcom/cloud/tmc/integration/processor/InnerBackIntercept$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public backResult(Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getInterceptName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "InnerBackIntercept"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method public intercept(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 7

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "InnerBackIntercept: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "InnerBackIntercept"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object p1, p0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    :goto_0
    move v2, p1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    goto :goto_0

    .line 66
    :goto_1
    const/16 v5, 0x8

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v3, p0

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;->params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    move-object v0, p0

    .line 91
    move-object v3, p0

    .line 92
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$DefaultImpls;->backResult$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;Lcom/cloud/tmc/integration/structure/App;ZLcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public final setMCallback(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/InnerBackIntercept;->mCallback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-void
.end method
