.class public Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;->mCache:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected hasRemoteAnnotation(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public isRemoteExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;->hasRemoteAnnotation(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
