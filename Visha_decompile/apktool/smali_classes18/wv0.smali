.class public final Lwv0;
.super Lo95;
.source "SourceFile"

# interfaces
.implements Lvv0;


# instance fields
.field public final f:Lxv0;


# direct methods
.method public constructor <init>(Lxv0;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Lwv0;->f:Lxv0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->childCancelled(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lkotlinx/coroutines/j;
    .locals 0

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lwv0;->f:Lxv0;

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-interface {p1, p0}, Lxv0;->parentCancelled(Lnw7;)V

    return-void
.end method
