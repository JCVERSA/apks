.class public abstract Ly/j;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(JJ)Ly/i;
    .locals 5

    .line 1
    new-instance v0, Ly/i;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ly/g;->m(J)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, p1}, Ly/g;->n(J)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {p0, p1}, Ly/g;->m(J)F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p2, p3}, Ly/m;->i(J)F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-float/2addr v3, v4

    .line 20
    invoke-static {p0, p1}, Ly/g;->n(J)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p2, p3}, Ly/m;->g(J)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-float/2addr p0, p1

    .line 29
    invoke-direct {v0, v1, v2, v3, p0}, Ly/i;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
