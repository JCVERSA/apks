.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v4, "context"

    .line 38
    .line 39
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "scopeName"

    .line 43
    .line 44
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "appId"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    const-string v1, "Tmcintegration:LocalAuthPermissionManager"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-void
.end method
