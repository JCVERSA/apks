.class public final Landroidx/work/k$a;
.super Landroidx/work/r$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "workerClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/work/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/work/r$a;->h()Lj4/u;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-class v0, Landroidx/work/OverwritingInputMerger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, Lj4/u;->d:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/work/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/k$a;->m()Landroidx/work/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic g()Landroidx/work/r$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/k$a;->n()Landroidx/work/k$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Landroidx/work/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/work/r$a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/work/r$a;->h()Lj4/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lj4/u;->j:Landroidx/work/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/work/b;->h()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Cannot set backoff criteria on an idle mode job"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Landroidx/work/k;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/work/k;-><init>(Landroidx/work/k$a;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public n()Landroidx/work/k$a;
    .locals 0

    .line 1
    return-object p0
.end method
