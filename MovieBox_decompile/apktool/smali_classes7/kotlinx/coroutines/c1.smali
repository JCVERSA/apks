.class final Lkotlinx/coroutines/c1;
.super Lkotlinx/coroutines/w1;
.source "source.java"


# instance fields
.field private final e:Lkotlinx/coroutines/a1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/a1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/a1;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlinx/coroutines/a1;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
