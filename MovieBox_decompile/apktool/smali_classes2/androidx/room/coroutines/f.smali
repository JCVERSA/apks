.class public final synthetic Landroidx/room/coroutines/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ly3/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ly3/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/coroutines/f;->a:Ly3/c;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/coroutines/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/f;->a:Ly3/c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/coroutines/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/room/coroutines/ConnectionPoolImpl;->h(Ly3/c;Ljava/lang/String;)Ly3/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
