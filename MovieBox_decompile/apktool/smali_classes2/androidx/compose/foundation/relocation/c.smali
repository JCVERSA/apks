.class abstract synthetic Landroidx/compose/foundation/relocation/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/layout/l;Landroidx/compose/ui/layout/l;Ly/i;)Ly/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/relocation/c;->c(Landroidx/compose/ui/layout/l;Landroidx/compose/ui/layout/l;Ly/i;)Ly/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/node/f;)Landroidx/compose/foundation/relocation/a;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->q:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$a;

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/compose/ui/node/n1;->a(Landroidx/compose/ui/node/f;Ljava/lang/Object;)Landroidx/compose/ui/node/m1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/compose/foundation/relocation/a;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/foundation/relocation/e;->b(Landroidx/compose/ui/node/f;)Landroidx/compose/foundation/relocation/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    return-object v0
.end method

.method private static final c(Landroidx/compose/ui/layout/l;Landroidx/compose/ui/layout/l;Ly/i;)Ly/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/layout/l;->O(Landroidx/compose/ui/layout/l;Z)Ly/i;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ly/i;->j()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    invoke-virtual {p2, p0, p1}, Ly/i;->q(J)Ly/i;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
