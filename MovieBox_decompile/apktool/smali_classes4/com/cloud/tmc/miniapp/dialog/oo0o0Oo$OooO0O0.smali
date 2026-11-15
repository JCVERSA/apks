.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 28
    .line 29
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnRightClick(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_2
    return-void
.end method
