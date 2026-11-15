.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AuthorityProxyImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/AuthorityProxy;


# direct methods
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
.method public checkFullScreenAuthority(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO00o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO00o;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public clearPermissionData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    const-string p2, "AuthorityProxyImpl"

    .line 19
    .line 20
    const-string v0, "clearPermissionData"

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
