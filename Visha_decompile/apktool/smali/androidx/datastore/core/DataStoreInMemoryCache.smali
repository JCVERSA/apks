.class public final Landroidx/datastore/core/DataStoreInMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R&\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\t8\u0002X\u0082\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u000c\u0010\u0004R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/datastore/core/DataStoreInMemoryCache;",
        "T",
        "",
        "<init>",
        "()V",
        "Landroidx/datastore/core/State;",
        "newState",
        "tryUpdate",
        "(Landroidx/datastore/core/State;)Landroidx/datastore/core/State;",
        "Lmw6;",
        "cachedValue",
        "Lmw6;",
        "getCachedValue$annotations",
        "getCurrentState",
        "()Landroidx/datastore/core/State;",
        "currentState",
        "Lnz3;",
        "getFlow",
        "()Lnz3;",
        "flow",
        "datastore-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cachedValue:Lmw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmw6;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    const-string v1, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lhx9;->a(Ljava/lang/Object;)Lmw6;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lmw6;

    return-void
.end method

.method private static synthetic getCachedValue$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCurrentState()Landroidx/datastore/core/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/State<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lmw6;

    invoke-interface {p0}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/State;

    return-object p0
.end method

.method public final getFlow()Lnz3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz3;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lmw6;

    return-object p0
.end method

.method public final tryUpdate(Landroidx/datastore/core/State;)Landroidx/datastore/core/State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/State<",
            "TT;>;)",
            "Landroidx/datastore/core/State<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "newState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->cachedValue:Lmw6;

    :cond_0
    invoke-interface {p0}, Lmw6;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/datastore/core/State;

    instance-of v2, v1, Landroidx/datastore/core/ReadException;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, v1, Landroidx/datastore/core/Data;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/datastore/core/State;->getVersion()I

    move-result v2

    invoke-virtual {v1}, Landroidx/datastore/core/State;->getVersion()I

    move-result v3

    if-le v2, v3, :cond_4

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_3
    instance-of v2, v1, Landroidx/datastore/core/Final;

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    invoke-interface {p0, v0, v1}, Lmw6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
