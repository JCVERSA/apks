.class public final Lq3/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lh3/s;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Lq3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    new-instance v0, Lq3/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lq3/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq3/g;->b:Lq3/b;

    .line 17
    .line 18
    return-void
.end method

.method private static d(Landroidx/media3/common/util/j0;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    if-ne v2, v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v4, "STYLE"

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v4, "NOTE"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    .line 42
    .line 43
    .line 44
    return v2
.end method

.method private static e(Landroidx/media3/common/util/j0;)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a([BII)Lh3/k;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lh3/r;->a(Lh3/s;[BII)Lh3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b([BIILh3/s$b;Landroidx/media3/common/util/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-virtual {v0, p1, p3}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p2, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 18
    .line 19
    invoke-static {p2}, Lq3/h;->e(Landroidx/media3/common/util/j0;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p2, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    iget-object p3, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 41
    .line 42
    invoke-static {p3}, Lq3/g;->d(Landroidx/media3/common/util/j0;)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_5

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-ne p3, v0, :cond_2

    .line 50
    .line 51
    iget-object p3, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 52
    .line 53
    invoke-static {p3}, Lq3/g;->e(Landroidx/media3/common/util/j0;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x2

    .line 58
    if-ne p3, v0, :cond_4

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    iget-object p3, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 67
    .line 68
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lq3/g;->b:Lq3/b;

    .line 72
    .line 73
    iget-object v0, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 74
    .line 75
    invoke-virtual {p3, v0}, Lq3/b;->d(Landroidx/media3/common/util/j0;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p2, "A style block was found after the first cue."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    const/4 v0, 0x3

    .line 92
    if-ne p3, v0, :cond_1

    .line 93
    .line 94
    iget-object p3, p0, Lq3/g;->a:Landroidx/media3/common/util/j0;

    .line 95
    .line 96
    invoke-static {p3, p1}, Lq3/e;->n(Landroidx/media3/common/util/j0;Ljava/util/List;)Lq3/d;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    if-eqz p3, :cond_1

    .line 101
    .line 102
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    new-instance p1, Lq3/j;

    .line 107
    .line 108
    invoke-direct {p1, p2}, Lq3/j;-><init>(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p4, p5}, Lh3/i;->c(Lh3/k;Lh3/s$b;Landroidx/media3/common/util/m;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p2
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lh3/r;->b(Lh3/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
