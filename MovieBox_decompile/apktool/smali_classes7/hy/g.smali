.class abstract Lhy/g;
.super Lhy/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy/g$w;,
        Lhy/g$x;,
        Lhy/g$o;,
        Lhy/g$p;,
        Lhy/g$n;,
        Lhy/g$r;,
        Lhy/g$s;,
        Lhy/g$q;,
        Lhy/g$t;,
        Lhy/g$v;,
        Lhy/g$u;,
        Lhy/g$m;,
        Lhy/g$l;,
        Lhy/g$k;,
        Lhy/g$j;,
        Lhy/g$i;,
        Lhy/g$h;,
        Lhy/g$g;,
        Lhy/g$f;,
        Lhy/g$e;,
        Lhy/g$d;,
        Lhy/g$c;,
        Lhy/g$b;,
        Lhy/g$a;,
        Lhy/g$y;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method d(Lhy/a;[I[B)I
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lhy/g;->e(Lhy/a;[I[BB)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method e(Lhy/a;[I[BB)I
    .locals 1

    .line 1
    new-instance v0, Lhy/g$w;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lhy/g$w;-><init>([I[B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p4}, Lhy/g$w;->d(Lhy/a;B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method f(Lhy/a;[I[BB)I
    .locals 1

    .line 1
    new-instance v0, Lhy/g$x;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lhy/g$x;-><init>([I[B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p4}, Lhy/g$w;->d(Lhy/a;B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
