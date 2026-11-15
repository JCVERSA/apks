.class public final synthetic Landroidx/room/coroutines/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/coroutines/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/coroutines/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/coroutines/a;->a:Landroidx/room/coroutines/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/a;->a:Landroidx/room/coroutines/b;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/coroutines/b;->b(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
