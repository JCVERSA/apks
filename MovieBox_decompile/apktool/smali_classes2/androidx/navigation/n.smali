.class public abstract Landroidx/navigation/n;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/l;
    .locals 1

    .line 1
    const-string v0, "optionsBuilder"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/m;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/navigation/m;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/navigation/m;->b()Landroidx/navigation/l;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
