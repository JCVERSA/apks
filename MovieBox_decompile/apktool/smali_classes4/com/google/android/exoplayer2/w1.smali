.class public final Lcom/google/android/exoplayer2/w1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/w1$j;,
        Lcom/google/android/exoplayer2/w1$e;,
        Lcom/google/android/exoplayer2/w1$d;,
        Lcom/google/android/exoplayer2/w1$k;,
        Lcom/google/android/exoplayer2/w1$l;,
        Lcom/google/android/exoplayer2/w1$g;,
        Lcom/google/android/exoplayer2/w1$i;,
        Lcom/google/android/exoplayer2/w1$h;,
        Lcom/google/android/exoplayer2/w1$b;,
        Lcom/google/android/exoplayer2/w1$f;,
        Lcom/google/android/exoplayer2/w1$c;
    }
.end annotation


# static fields
.field public static final i:Lcom/google/android/exoplayer2/w1;

.field public static final j:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/w1$h;

.field public final c:Lcom/google/android/exoplayer2/w1$i;

.field public final d:Lcom/google/android/exoplayer2/w1$g;

.field public final e:Lcom/google/android/exoplayer2/b2;

.field public final f:Lcom/google/android/exoplayer2/w1$d;

.field public final g:Lcom/google/android/exoplayer2/w1$e;

.field public final h:Lcom/google/android/exoplayer2/w1$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/w1$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/w1$c;->a()Lcom/google/android/exoplayer2/w1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/exoplayer2/w1;->i:Lcom/google/android/exoplayer2/w1;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/v1;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/w1;->j:Lcom/google/android/exoplayer2/k$a;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$e;Lcom/google/android/exoplayer2/w1$i;Lcom/google/android/exoplayer2/w1$g;Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/w1$j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/w1;->c:Lcom/google/android/exoplayer2/w1$i;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/w1;->d:Lcom/google/android/exoplayer2/w1$g;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/w1;->f:Lcom/google/android/exoplayer2/w1$d;

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/w1;->g:Lcom/google/android/exoplayer2/w1$e;

    .line 10
    iput-object p6, p0, Lcom/google/android/exoplayer2/w1;->h:Lcom/google/android/exoplayer2/w1$j;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$e;Lcom/google/android/exoplayer2/w1$i;Lcom/google/android/exoplayer2/w1$g;Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/w1$j;Lcom/google/android/exoplayer2/w1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/w1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$e;Lcom/google/android/exoplayer2/w1$i;Lcom/google/android/exoplayer2/w1$g;Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/w1$j;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/exoplayer2/w1$g;->f:Lcom/google/android/exoplayer2/w1$g;

    .line 31
    .line 32
    :goto_0
    move-object v5, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/w1$g;->g:Lcom/google/android/exoplayer2/k$a;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/exoplayer2/w1$g;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    const/4 v0, 0x2

    .line 44
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    sget-object v0, Lcom/google/android/exoplayer2/b2;->G:Lcom/google/android/exoplayer2/b2;

    .line 55
    .line 56
    :goto_2
    move-object v6, v0

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/b2;->H:Lcom/google/android/exoplayer2/k$a;

    .line 59
    .line 60
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/exoplayer2/b2;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    const/4 v0, 0x3

    .line 68
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    sget-object v0, Lcom/google/android/exoplayer2/w1$e;->h:Lcom/google/android/exoplayer2/w1$e;

    .line 79
    .line 80
    :goto_4
    move-object v3, v0

    .line 81
    goto :goto_5

    .line 82
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/w1$d;->g:Lcom/google/android/exoplayer2/k$a;

    .line 83
    .line 84
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/google/android/exoplayer2/w1$e;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :goto_5
    const/4 v0, 0x4

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez p0, :cond_3

    .line 101
    .line 102
    sget-object p0, Lcom/google/android/exoplayer2/w1$j;->d:Lcom/google/android/exoplayer2/w1$j;

    .line 103
    .line 104
    :goto_6
    move-object v7, p0

    .line 105
    goto :goto_7

    .line 106
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/w1$j;->e:Lcom/google/android/exoplayer2/k$a;

    .line 107
    .line 108
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/google/android/exoplayer2/w1$j;

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :goto_7
    new-instance p0, Lcom/google/android/exoplayer2/w1;

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    move-object v1, p0

    .line 119
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/w1$e;Lcom/google/android/exoplayer2/w1$i;Lcom/google/android/exoplayer2/w1$g;Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/w1$j;)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/w1$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/w1$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/w1$c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/w1$c;->a()Lcom/google/android/exoplayer2/w1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/w1$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/w1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/w1$c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/w1$c;->a()Lcom/google/android/exoplayer2/w1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/w1$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/w1$c;-><init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/w1$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/w1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/w1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/exoplayer2/w1;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->f:Lcom/google/android/exoplayer2/w1$d;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/google/android/exoplayer2/w1;->f:Lcom/google/android/exoplayer2/w1$d;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/w1$d;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->d:Lcom/google/android/exoplayer2/w1$g;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/google/android/exoplayer2/w1;->d:Lcom/google/android/exoplayer2/w1$g;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->h:Lcom/google/android/exoplayer2/w1$j;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/google/android/exoplayer2/w1;->h:Lcom/google/android/exoplayer2/w1$j;

    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v2

    .line 75
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w1$h;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->d:Lcom/google/android/exoplayer2/w1$g;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w1$g;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->f:Lcom/google/android/exoplayer2/w1$d;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w1$d;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->h:Lcom/google/android/exoplayer2/w1$j;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w1$j;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->d:Lcom/google/android/exoplayer2/w1$g;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/w1$g;->toBundle()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->toBundle()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->f:Lcom/google/android/exoplayer2/w1$d;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/w1$d;->toBundle()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->f(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->h:Lcom/google/android/exoplayer2/w1$j;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/w1$j;->toBundle()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method
