.class public abstract Landroidx/compose/foundation/v;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;Lp/i;Z)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroidx/compose/foundation/HoverableElement;

    .line 4
    .line 5
    invoke-direct {p2, p1}, Landroidx/compose/foundation/HoverableElement;-><init>(Lp/i;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 10
    .line 11
    :goto_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;Lp/i;ZILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/v;->a(Landroidx/compose/ui/f;Lp/i;Z)Landroidx/compose/ui/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
