.class public Lvz/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvz/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private b:[B

.field c:Lvz/c;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvz/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method final a(Lvz/x;)I
    .locals 6

    .line 1
    const/4 v4, -0x1

    .line 2
    const/4 v5, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lvz/c;->b(Lvz/x;[BIII)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method final b(Lvz/x;[BIII)I
    .locals 9

    .line 1
    iget-object v6, p1, Lvz/x;->a:Lvz/g;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move-object v8, p0

    .line 5
    move v7, v0

    .line 6
    :goto_0
    if-eqz v8, :cond_0

    .line 7
    .line 8
    iget-object v0, v8, Lvz/c;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lvz/x;->D(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-object v0, v8

    .line 14
    move-object v1, v6

    .line 15
    move-object v2, p2

    .line 16
    move v3, p3

    .line 17
    move v4, p4

    .line 18
    move v5, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Lvz/c;->h(Lvz/g;[BIII)Lvz/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lvz/d;->b:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x6

    .line 26
    .line 27
    add-int/2addr v7, v0

    .line 28
    iget-object v8, v8, Lvz/c;->c:Lvz/c;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v7
.end method

.method final c()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_0
    if-eqz v1, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iget-object v1, v1, Lvz/c;->c:Lvz/c;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method final e(Lvz/x;Lvz/d;)V
    .locals 7

    .line 1
    const/4 v4, -0x1

    .line 2
    const/4 v5, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v6, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lvz/c;->f(Lvz/x;[BIIILvz/d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method final f(Lvz/x;[BIIILvz/d;)V
    .locals 8

    .line 1
    iget-object v6, p1, Lvz/x;->a:Lvz/g;

    .line 2
    .line 3
    move-object v7, p0

    .line 4
    :goto_0
    if-eqz v7, :cond_0

    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-object v1, v6

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lvz/c;->h(Lvz/g;[BIII)Lvz/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v7, Lvz/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lvz/x;->D(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p6, v1}, Lvz/d;->k(I)Lvz/d;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, v0, Lvz/d;->b:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lvz/d;->i(I)Lvz/d;

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lvz/d;->a:[B

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iget v0, v0, Lvz/d;->b:I

    .line 35
    .line 36
    invoke-virtual {p6, v1, v2, v0}, Lvz/d;->h([BII)Lvz/d;

    .line 37
    .line 38
    .line 39
    iget-object v7, v7, Lvz/c;->c:Lvz/c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method protected g(Lvz/e;II[CI[Lvz/q;)Lvz/c;
    .locals 0

    .line 1
    new-instance p4, Lvz/c;

    .line 2
    .line 3
    iget-object p5, p0, Lvz/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p4, p5}, Lvz/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-array p5, p3, [B

    .line 9
    .line 10
    iput-object p5, p4, Lvz/c;->b:[B

    .line 11
    .line 12
    iget-object p1, p1, Lvz/e;->a:[B

    .line 13
    .line 14
    const/4 p6, 0x0

    .line 15
    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-object p4
.end method

.method protected h(Lvz/g;[BIII)Lvz/d;
    .locals 0

    .line 1
    new-instance p1, Lvz/d;

    .line 2
    .line 3
    iget-object p2, p0, Lvz/c;->b:[B

    .line 4
    .line 5
    invoke-direct {p1, p2}, Lvz/d;-><init>([B)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
