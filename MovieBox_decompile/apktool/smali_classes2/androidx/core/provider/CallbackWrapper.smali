.class Landroidx/core/provider/CallbackWrapper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/core/provider/k$c;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/core/provider/k$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v2, Landroidx/core/provider/CallbackWrapper$2;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWrapper$2;-><init>(Landroidx/core/provider/CallbackWrapper;Landroidx/core/provider/k$c;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v2, Landroidx/core/provider/CallbackWrapper$1;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWrapper$1;-><init>(Landroidx/core/provider/CallbackWrapper;Landroidx/core/provider/k$c;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method b(Landroidx/core/provider/i$e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/i$e;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/core/provider/i$e;->a:Landroid/graphics/Typeface;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWrapper;->c(Landroid/graphics/Typeface;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p1, Landroidx/core/provider/i$e;->b:I

    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWrapper;->a(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
