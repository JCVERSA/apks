.class public final synthetic Landroidx/room/coroutines/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/coroutines/ConnectionPoolImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/coroutines/g;->a:Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/room/coroutines/g;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/g;->a:Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/room/coroutines/g;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/room/coroutines/ConnectionPoolImpl;->b(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
