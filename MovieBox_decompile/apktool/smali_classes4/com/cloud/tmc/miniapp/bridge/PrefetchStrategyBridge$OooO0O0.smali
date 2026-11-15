.class public final Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;->getPreStrategy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
        "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 2
    .line 3
    check-cast p2, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v0

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :cond_1
    sub-int/2addr p1, v0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
