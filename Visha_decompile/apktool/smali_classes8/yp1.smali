.class public Lyp1;
.super Lxq1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lxq1;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public d()Lyp1;
    .locals 0

    return-object p0
.end method

.method public l([Lx0;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lx0;->j()Lp1;

    move-result-object v2

    invoke-virtual {v2}, Lp1;->u()Lp1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lp1;->n(Lo1;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lp1;Z)V
    .locals 0

    invoke-virtual {p1}, Lp1;->u()Lp1;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lp1;->n(Lo1;Z)V

    return-void
.end method

.method public x([Lp1;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lp1;->u()Lp1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lp1;->n(Lo1;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
