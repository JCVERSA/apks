.class public abstract Ls/g$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public static a(Ls/g;)Ls/g;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static final b(Ls/g;)Ls/d;
    .locals 0

    .line 1
    invoke-static {p0}, Ls/g;->h(Ls/g;)Ls/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Ls/g;II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int v1, v0, p1

    .line 3
    .line 4
    invoke-static {p0}, Ls/g;->f(Ls/g;)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    and-int/2addr v2, v1

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Already pushed argument "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ls/g$c;->b(Ls/g;)Ls/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Ls/d;->e(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Ls/g;->f(Ls/g;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    or-int/2addr v0, v1

    .line 48
    invoke-static {p0, v0}, Ls/g;->i(Ls/g;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Ls/g;->b(Ls/g;)[I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p0, p1}, Ls/g;->k(Ls/g;I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aput p2, v0, p0

    .line 60
    .line 61
    return-void
.end method

.method public static final d(Ls/g;ILjava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int v1, v0, p1

    .line 3
    .line 4
    invoke-static {p0}, Ls/g;->g(Ls/g;)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    and-int/2addr v2, v1

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Already pushed argument "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ls/g$c;->b(Ls/g;)Ls/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Ls/d;->f(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Ls/g;->g(Ls/g;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    or-int/2addr v0, v1

    .line 48
    invoke-static {p0, v0}, Ls/g;->j(Ls/g;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Ls/g;->c(Ls/g;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p0, p1}, Ls/g;->l(Ls/g;I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aput-object p2, v0, p0

    .line 60
    .line 61
    return-void
.end method
