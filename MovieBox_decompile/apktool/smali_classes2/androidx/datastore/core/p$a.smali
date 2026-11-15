.class public final Landroidx/datastore/core/p$a;
.super Landroidx/datastore/core/p;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function2;

.field private final b:Lkotlinx/coroutines/w;

.field private final c:Landroidx/datastore/core/v;

.field private final d:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/w;Landroidx/datastore/core/v;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callerContext"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Landroidx/datastore/core/p;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/datastore/core/p$a;->a:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/datastore/core/p$a;->b:Lkotlinx/coroutines/w;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/datastore/core/p$a;->c:Landroidx/datastore/core/v;

    .line 25
    .line 26
    iput-object p4, p0, Landroidx/datastore/core/p$a;->d:Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/p$a;->b:Lkotlinx/coroutines/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/p$a;->d:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroidx/datastore/core/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/p$a;->c:Landroidx/datastore/core/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/p$a;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method
