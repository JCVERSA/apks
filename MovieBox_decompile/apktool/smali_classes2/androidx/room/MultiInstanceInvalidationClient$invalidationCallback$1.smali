.class public final Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;
.super Landroidx/room/i$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;->a:Landroidx/room/MultiInstanceInvalidationClient;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public o([Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "tables"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;->a:Landroidx/room/MultiInstanceInvalidationClient;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/room/MultiInstanceInvalidationClient;->b(Landroidx/room/MultiInstanceInvalidationClient;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v4, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;->a:Landroidx/room/MultiInstanceInvalidationClient;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v4, p1, v0, v2}, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1;-><init>([Ljava/lang/String;Landroidx/room/MultiInstanceInvalidationClient;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method
