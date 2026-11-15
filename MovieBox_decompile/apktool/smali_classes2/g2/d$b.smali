.class public final Lg2/d$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lg2/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lh3/s$a;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh3/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lh3/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lh3/s$a;)Lg2/f$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg2/d$b;->h(Lh3/s$a;)Lg2/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Lg2/f$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg2/d$b;->g(I)Lg2/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Lg2/f$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg2/d$b;->f(Z)Lg2/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg2/d$b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lh3/s$a;->a(Landroidx/media3/common/r;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "application/x-media3-cues"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lh3/s$a;->b(Landroidx/media3/common/r;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v2, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, " "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string p1, ""

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-wide v0, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_1
    return-object p1
.end method

.method public e(ILandroidx/media3/common/r;ZLjava/util/List;Lk2/s0;Lx1/f4;)Lg2/f;
    .locals 7

    .line 1
    iget-object p6, p2, Landroidx/media3/common/r;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p6}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean p3, p0, Lg2/d$b;->b:Z

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p3, Lh3/n;

    .line 16
    .line 17
    iget-object p4, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 18
    .line 19
    invoke-interface {p4, p2}, Lh3/s$a;->c(Landroidx/media3/common/r;)Lh3/s;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-direct {p3, p4, p2}, Lh3/n;-><init>(Lh3/s;Landroidx/media3/common/r;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p6}, Landroidx/media3/common/y;->r(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean p3, p0, Lg2/d$b;->b:Z

    .line 35
    .line 36
    if-nez p3, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    :cond_2
    new-instance p3, Lc3/e;

    .line 40
    .line 41
    iget-object p4, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 42
    .line 43
    invoke-direct {p3, p4, v1}, Lc3/e;-><init>(Lh3/s$a;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const-string v0, "image/jpeg"

    .line 48
    .line 49
    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    new-instance p3, Ls2/a;

    .line 56
    .line 57
    invoke-direct {p3, v1}, Ls2/a;-><init>(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const-string v0, "image/png"

    .line 62
    .line 63
    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p6

    .line 67
    if-eqz p6, :cond_5

    .line 68
    .line 69
    new-instance p3, Lg3/a;

    .line 70
    .line 71
    invoke-direct {p3}, Lg3/a;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    if-eqz p3, :cond_6

    .line 76
    .line 77
    const/4 p3, 0x4

    .line 78
    goto :goto_0

    .line 79
    :cond_6
    const/4 p3, 0x0

    .line 80
    :goto_0
    iget-boolean p6, p0, Lg2/d$b;->b:Z

    .line 81
    .line 82
    if-nez p6, :cond_7

    .line 83
    .line 84
    or-int/lit8 p3, p3, 0x20

    .line 85
    .line 86
    :cond_7
    iget p6, p0, Lg2/d$b;->c:I

    .line 87
    .line 88
    invoke-static {p6}, Le3/h;->j(I)I

    .line 89
    .line 90
    .line 91
    move-result p6

    .line 92
    or-int v2, p3, p6

    .line 93
    .line 94
    new-instance p3, Le3/h;

    .line 95
    .line 96
    iget-object v1, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    move-object v0, p3

    .line 101
    move-object v5, p4

    .line 102
    move-object v6, p5

    .line 103
    invoke-direct/range {v0 .. v6}, Le3/h;-><init>(Lh3/s$a;ILandroidx/media3/common/util/p0;Le3/t;Ljava/util/List;Lk2/s0;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    new-instance p4, Lg2/d;

    .line 107
    .line 108
    invoke-direct {p4, p3, p1, p2}, Lg2/d;-><init>(Lk2/r;ILandroidx/media3/common/r;)V

    .line 109
    .line 110
    .line 111
    return-object p4
.end method

.method public f(Z)Lg2/d$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg2/d$b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public g(I)Lg2/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lg2/d$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Lh3/s$a;)Lg2/d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lh3/s$a;

    .line 6
    .line 7
    iput-object p1, p0, Lg2/d$b;->a:Lh3/s$a;

    .line 8
    .line 9
    return-object p0
.end method
