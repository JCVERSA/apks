.class public final Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge;->downloadNew(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/io/IOException;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0OO;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0OO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p3, Ljava/io/IOException;

    .line 6
    .line 7
    const-string p2, "<anonymous parameter 0>"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "<anonymous parameter 2>"

    .line 13
    .line 14
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0OO;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    const-string p2, "miniAppHasUpdateDownloading"

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooO0OO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 26
    .line 27
    const-string p2, "errMsg"

    .line 28
    .line 29
    const-string p3, "Failed to download the applet package, please try later: MAU10007"

    .line 30
    .line 31
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/miniapp/bridge/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p1
.end method
