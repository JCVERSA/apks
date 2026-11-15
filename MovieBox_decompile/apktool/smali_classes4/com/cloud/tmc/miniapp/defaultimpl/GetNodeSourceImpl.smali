.class public final Lcom/cloud/tmc/miniapp/defaultimpl/GetNodeSourceImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/node/IGetNodeSource;


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
.method public getNodeSource(Lcom/cloud/tmc/kernel/node/Node;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "otherPage"

    .line 2
    .line 3
    const-string v1, "node"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/structure/Page;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v0, "normalPage"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v0, "h5MixedPage"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const-string v0, "miniShellPage"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    :cond_2
    :goto_0
    return-object v0

    .line 41
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "Tmc"

    .line 46
    .line 47
    invoke-static {v2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-object v0
.end method
