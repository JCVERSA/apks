.class public final Lkotlinx/coroutines/JobSupport$c;
.super Lo95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final f:Lxa9;

.field public final synthetic g:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lxa9;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$c;->g:Lkotlinx/coroutines/JobSupport;

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$c;->f:Lxa9;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$c;->g:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lvb1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lq95;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$c;->f:Lxa9;

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$c;->g:Lkotlinx/coroutines/JobSupport;

    invoke-interface {v0, p0, p1}, Lxa9;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
