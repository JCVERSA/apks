.class public abstract Landroidx/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->i()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 22
    .line 23
    new-instance v1, Landroidx/lifecycle/z;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Landroidx/lifecycle/z;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Landroidx/lifecycle/z;

    .line 34
    .line 35
    invoke-direct {v1}, Landroidx/lifecycle/z;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v2, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;

    .line 39
    .line 40
    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;-><init>(Landroidx/lifecycle/z;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroidx/lifecycle/Transformations$a;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Landroidx/lifecycle/Transformations$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/z;->r(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method
