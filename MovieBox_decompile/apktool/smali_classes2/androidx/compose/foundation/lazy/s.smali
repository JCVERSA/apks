.class public abstract Landroidx/compose/foundation/lazy/s;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(I)Landroidx/compose/foundation/lazy/r;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/lazy/s;->a(I)Landroidx/compose/foundation/lazy/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
