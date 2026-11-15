.class public abstract Lo0/s;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(JJ)Lo0/r;
    .locals 5

    .line 1
    new-instance v0, Lo0/r;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lo0/p;->h(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, p1}, Lo0/p;->i(J)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {p0, p1}, Lo0/p;->h(J)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p2, p3}, Lo0/t;->g(J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/2addr v3, v4

    .line 20
    invoke-static {p0, p1}, Lo0/p;->i(J)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p2, p3}, Lo0/t;->f(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p0, p1

    .line 29
    invoke-direct {v0, v1, v2, v3, p0}, Lo0/r;-><init>(IIII)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static final b(Ly/i;)Lo0/r;
    .locals 4

    .line 1
    new-instance v0, Lo0/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly/i;->f()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Ly/i;->i()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Ly/i;->g()F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0}, Ly/i;->c()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-direct {v0, v1, v2, v3, p0}, Lo0/r;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
