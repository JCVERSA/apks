.class public final Lcom/cloud/tmc/integration/processor/BackPressedProcessor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/processor/BackPressedProcessor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/BackPressedProcessor;",
        "Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;",
        "()V",
        "intercepts",
        "",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "addInterceptors",
        "",
        "intercept",
        "getInterceptors",
        "removeInterceptors",
        "startBackPressedInterceptorChain",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "params",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;",
        "checkContains",
        "",
        "",
        "element",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/processor/BackPressedProcessor$Companion;

.field private static final TAG:Ljava/lang/String; = "BackPressedProcessor"


# instance fields
.field private final intercepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->Companion:Lcom/cloud/tmc/integration/processor/BackPressedProcessor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private final checkContains(Ljava/util/List;Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 48
    :goto_2
    return p1
.end method


# virtual methods
.method public addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
    .locals 5

    .line 1
    const-string v0, "intercept"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->checkContains(Ljava/util/List;Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    add-int/lit8 v3, v1, 0x1

    .line 34
    .line 35
    if-gez v1, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 38
    .line 39
    .line 40
    :cond_0
    check-cast v2, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getPriority()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getPriority()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ge v4, v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    move v1, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 60
    .line 61
    check-cast v0, Ljava/util/Collection;

    .line 62
    .line 63
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public getInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public removeInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
    .locals 4

    .line 1
    const-string v0, "intercept"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->checkContains(Ljava/util/List;Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    check-cast v1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->intercepts:Ljava/util/List;

    .line 56
    .line 57
    check-cast p1, Ljava/util/Collection;

    .line 58
    .line 59
    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public startBackPressedInterceptorChain(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 6

    .line 1
    const-string v0, "BackPressedProcessor"

    .line 2
    .line 3
    const-string v1, "params"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 10
    .line 11
    const-string v3, "miniBackInterceptorEnable"

    .line 12
    .line 13
    invoke-virtual {v2, v3, v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v2

    .line 19
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    move v2, v1

    .line 23
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "enable: "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    new-instance p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 48
    .line 49
    invoke-direct {p1, v4, v1, v3}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;->getInterceptors()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;

    .line 68
    .line 69
    invoke-direct {v5, v2, v4, p1}, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;-><init>(Ljava/util/List;ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)V

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v5, p1}, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->proceed(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 82
    .line 83
    invoke-direct {p1, v4, v1, v3}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-object p1
.end method
