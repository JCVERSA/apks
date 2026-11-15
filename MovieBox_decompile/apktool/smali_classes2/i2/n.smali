.class public Li2/n;
.super Li2/b0;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/y3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/n$e;,
        Li2/n$g;,
        Li2/n$i;,
        Li2/n$d;,
        Li2/n$f;,
        Li2/n$c;,
        Li2/n$h;,
        Li2/n$b;,
        Li2/n$j;
    }
.end annotation


# static fields
.field private static final j:Lcom/google/common/collect/Ordering;


# instance fields
.field private final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field private final f:Li2/z$b;

.field private g:Li2/n$e;

.field private h:Li2/n$g;

.field private i:Landroidx/media3/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Li2/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Li2/n;->j:Lcom/google/common/collect/Ordering;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Li2/a$b;

    invoke-direct {v0}, Li2/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Li2/n;-><init>(Landroid/content/Context;Li2/z$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/h0;Li2/z$b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p1}, Li2/n;-><init>(Landroidx/media3/common/h0;Li2/z$b;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li2/z$b;)V
    .locals 1

    .line 2
    sget-object v0, Li2/n$e;->G0:Li2/n$e;

    invoke-direct {p0, p1, v0, p2}, Li2/n;-><init>(Landroid/content/Context;Landroidx/media3/common/h0;Li2/z$b;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/h0;Li2/z$b;Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Li2/b0;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Li2/n;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Li2/n;->f:Li2/z$b;

    .line 8
    instance-of p2, p1, Li2/n$e;

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, Li2/n$e;

    iput-object p1, p0, Li2/n;->g:Li2/n$e;

    goto :goto_1

    .line 10
    :cond_1
    sget-object p2, Li2/n$e;->G0:Li2/n$e;

    invoke-virtual {p2}, Li2/n$e;->g()Li2/n$e$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Li2/n$e$a;->l0(Landroidx/media3/common/h0;)Li2/n$e$a;

    move-result-object p1

    invoke-virtual {p1}, Li2/n$e$a;->h0()Li2/n$e;

    move-result-object p1

    iput-object p1, p0, Li2/n;->g:Li2/n$e;

    .line 11
    :goto_1
    sget-object p1, Landroidx/media3/common/c;->g:Landroidx/media3/common/c;

    iput-object p1, p0, Li2/n;->i:Landroidx/media3/common/c;

    .line 12
    iget-object p1, p0, Li2/n;->g:Li2/n$e;

    iget-boolean p1, p1, Li2/n$e;->z0:Z

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 13
    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic A()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    sget-object v0, Li2/n;->j:Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic B(Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Li2/n;->P(Landroidx/media3/common/r;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic C(Li2/n$e;ILandroidx/media3/common/r;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li2/n;->b0(Li2/n$e;ILandroidx/media3/common/r;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic D(Li2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/n;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static E(Li2/b0$a;Li2/n$e;[Li2/z$a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Li2/b0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Li2/b0$a;->f(I)Lf2/z;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1, v1, v2}, Li2/n$e;->j(ILf2/z;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1, v1, v2}, Li2/n$e;->i(ILf2/z;)Li2/n$f;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v2, p2, v1

    .line 24
    .line 25
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private static F(Li2/b0$a;Landroidx/media3/common/h0;[Li2/z$a;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Li2/b0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Li2/b0$a;->f(I)Lf2/z;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4, p1, v1}, Li2/n;->G(Lf2/z;Landroidx/media3/common/h0;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Li2/b0$a;->h()Lf2/z;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, p1, v1}, Li2/n;->G(Lf2/z;Landroidx/media3/common/h0;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Li2/b0$a;->e(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/media3/common/g0;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    iget-object v3, p1, Landroidx/media3/common/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Li2/b0$a;->f(I)Lf2/z;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p1, Landroidx/media3/common/g0;->a:Landroidx/media3/common/f0;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lf2/z;->d(Landroidx/media3/common/f0;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, -0x1

    .line 69
    if-eq v3, v4, :cond_2

    .line 70
    .line 71
    new-instance v3, Li2/z$a;

    .line 72
    .line 73
    iget-object v4, p1, Landroidx/media3/common/g0;->a:Landroidx/media3/common/f0;

    .line 74
    .line 75
    iget-object p1, p1, Landroidx/media3/common/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v3, v4, p1}, Li2/z$a;-><init>(Landroidx/media3/common/f0;[I)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    :goto_2
    aput-object v3, p2, v2

    .line 87
    .line 88
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    return-void
.end method

.method private static G(Lf2/z;Landroidx/media3/common/h0;Ljava/util/Map;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lf2/z;->a:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p1, Landroidx/media3/common/h0;->D:Lcom/google/common/collect/ImmutableMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/common/g0;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/g0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/media3/common/g0;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/media3/common/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v1, Landroidx/media3/common/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/g0;->a()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method protected static H(Landroidx/media3/common/r;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {p1}, Li2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0}, Li2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p2, "-"

    .line 47
    .line 48
    invoke-static {p0, p2}, Landroidx/media3/common/util/a1;->p1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    aget-object p0, p0, v0

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->p1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aget-object p1, p1, v0

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    const/4 p0, 0x2

    .line 67
    return p0

    .line 68
    :cond_3
    return v0

    .line 69
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 70
    return p0

    .line 71
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 72
    .line 73
    if-nez p0, :cond_6

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    :cond_6
    return v0
.end method

.method private static I(Landroidx/media3/common/f0;IIZ)I
    .locals 8

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget v2, p0, Landroidx/media3/common/f0;->a:I

    .line 11
    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, v2, Landroidx/media3/common/r;->v:I

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    iget v4, v2, Landroidx/media3/common/r;->w:I

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    invoke-static {p3, p1, p2, v3, v4}, Li2/d0;->d(ZIIII)Landroid/graphics/Point;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget v4, v2, Landroidx/media3/common/r;->v:I

    .line 31
    .line 32
    iget v2, v2, Landroidx/media3/common/r;->w:I

    .line 33
    .line 34
    mul-int v5, v4, v2

    .line 35
    .line 36
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    int-to-float v6, v6

    .line 39
    const v7, 0x3f7ae148    # 0.98f

    .line 40
    .line 41
    .line 42
    mul-float/2addr v6, v7

    .line 43
    float-to-int v6, v6

    .line 44
    if-lt v4, v6, :cond_1

    .line 45
    .line 46
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    mul-float/2addr v3, v7

    .line 50
    float-to-int v3, v3

    .line 51
    if-lt v2, v3, :cond_1

    .line 52
    .line 53
    if-ge v5, v0, :cond_1

    .line 54
    .line 55
    move v0, v5

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return v0
.end method

.method private static K(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "captioning"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    .line 12
    .line 13
    if-eqz p0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/util/a1;->e0(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static L(II)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const p0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    and-int/2addr p0, p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static M(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v4

    .line 9
    :cond_0
    const/4 v5, -0x1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    sparse-switch v6, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v6, "video/x-vnd.on2.vp9"

    .line 19
    .line 20
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v5, v0

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v6, "video/avc"

    .line 30
    .line 31
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v5, v1

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v6, "video/hevc"

    .line 41
    .line 42
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v5, v2

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v6, "video/av01"

    .line 52
    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    move v5, v3

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string v6, "video/dolby-vision"

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    move v5, v4

    .line 72
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    return v4

    .line 76
    :pswitch_0
    return v2

    .line 77
    :pswitch_1
    return v3

    .line 78
    :pswitch_2
    return v1

    .line 79
    :pswitch_3
    return v0

    .line 80
    :pswitch_4
    const/4 p0, 0x5

    .line 81
    return p0

    .line 82
    nop

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private N(Landroidx/media3/common/r;Li2/n$e;)Z
    .locals 1

    .line 1
    iget-boolean p2, p2, Li2/n$e;->z0:Z

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    iget p2, p1, Landroidx/media3/common/r;->E:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-le p2, v0, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Li2/n;->O(Landroidx/media3/common/r;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    sget p2, Landroidx/media3/common/util/a1;->a:I

    .line 22
    .line 23
    if-lt p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Li2/n;->h:Li2/n$g;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Li2/n$g;->d()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    :cond_0
    sget p2, Landroidx/media3/common/util/a1;->a:I

    .line 36
    .line 37
    if-lt p2, v0, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Li2/n;->h:Li2/n$g;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Li2/n$g;->d()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Li2/n;->h:Li2/n$g;

    .line 50
    .line 51
    invoke-virtual {p2}, Li2/n$g;->b()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Li2/n;->h:Li2/n$g;

    .line 58
    .line 59
    invoke-virtual {p2}, Li2/n$g;->c()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    iget-object p2, p0, Li2/n;->h:Li2/n$g;

    .line 66
    .line 67
    iget-object v0, p0, Li2/n;->i:Landroidx/media3/common/c;

    .line 68
    .line 69
    invoke-virtual {p2, v0, p1}, Li2/n$g;->a(Landroidx/media3/common/c;Landroidx/media3/common/r;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p1, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 79
    :goto_1
    return p1
.end method

.method private static O(Landroidx/media3/common/r;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sparse-switch v3, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v3, "audio/eac3"

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x3

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v3, "audio/ac4"

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x2

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v3, "audio/ac3"

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v2, v0

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v3, "audio/eac3-joc"

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :pswitch_0
    return v0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static P(Landroidx/media3/common/r;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sparse-switch v3, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v3, "audio/iamf"

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x2

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v3, "audio/ac4"

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v2, v0

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v3, "audio/eac3-joc"

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v2, v1

    .line 52
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :pswitch_0
    return v0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59afdf4a -> :sswitch_0
    .end sparse-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic Q(Li2/n$e;Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Li2/n;->N(Landroidx/media3/common/r;Li2/n$e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private synthetic R(Li2/n$e;Z[IILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v5, Li2/m;

    .line 2
    .line 3
    invoke-direct {v5, p0, p1}, Li2/m;-><init>(Li2/n;Li2/n$e;)V

    .line 4
    .line 5
    .line 6
    aget v6, p3, p4

    .line 7
    .line 8
    move v0, p4

    .line 9
    move-object v1, p5

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p6

    .line 12
    move v4, p2

    .line 13
    invoke-static/range {v0 .. v6}, Li2/n$b;->f(ILandroidx/media3/common/f0;Li2/n$e;[IZLcom/google/common/base/n;I)Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private static synthetic S(Li2/n$e;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p1, p2, p0, p3}, Li2/n$c;->f(ILandroidx/media3/common/f0;Li2/n$e;[I)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic T(Li2/n$e;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 6

    .line 1
    move v0, p3

    .line 2
    move-object v1, p4

    .line 3
    move-object v2, p0

    .line 4
    move-object v3, p5

    .line 5
    move-object v4, p1

    .line 6
    move-object v5, p2

    .line 7
    invoke-static/range {v0 .. v5}, Li2/n$h;->f(ILandroidx/media3/common/f0;Li2/n$e;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic U(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 7

    .line 1
    aget v5, p2, p4

    .line 2
    .line 3
    move v0, p4

    .line 4
    move-object v1, p5

    .line 5
    move-object v2, p0

    .line 6
    move-object v3, p6

    .line 7
    move-object v4, p1

    .line 8
    move-object v6, p3

    .line 9
    invoke-static/range {v0 .. v6}, Li2/n$j;->i(ILandroidx/media3/common/f0;Li2/n$e;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static synthetic V(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ne p0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int v1, p0, p1

    .line 33
    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method private static W(Li2/n$e;Li2/b0$a;[[[I[Landroidx/media3/exoplayer/z3;[Li2/z;)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {p1}, Li2/b0$a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v2, v4, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Li2/b0$a;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    aget-object v6, p4, v2

    .line 17
    .line 18
    if-eq v4, v5, :cond_0

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    invoke-interface {v6}, Li2/c0;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Li2/b0$a;->f(I)Lf2/z;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v6}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Lf2/z;->d(Landroidx/media3/common/f0;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aget-object v5, p2, v2

    .line 46
    .line 47
    aget-object v4, v5, v4

    .line 48
    .line 49
    invoke-interface {v6, v1}, Li2/c0;->getIndexInTrackGroup(I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    aget v4, v4, v5

    .line 54
    .line 55
    invoke-interface {v6}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {p0, v4, v5}, Li2/n;->b0(Li2/n$e;ILandroidx/media3/common/r;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    move v0, v2

    .line 68
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-ne v3, v5, :cond_5

    .line 72
    .line 73
    new-instance p1, Landroidx/media3/exoplayer/z3;

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 76
    .line 77
    iget-boolean p0, p0, Landroidx/media3/common/h0$b;->b:Z

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    move p0, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 p0, 0x2

    .line 84
    :goto_1
    aget-object p2, p3, v0

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    iget-boolean p2, p2, Landroidx/media3/exoplayer/z3;->b:Z

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    move v1, v5

    .line 93
    :cond_4
    invoke-direct {p1, p0, v1}, Landroidx/media3/exoplayer/z3;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    aput-object p1, p3, v0

    .line 97
    .line 98
    :cond_5
    :goto_2
    return-void
.end method

.method private static X(Li2/b0$a;[[[I[Landroidx/media3/exoplayer/z3;[Li2/z;)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v4, v3

    .line 5
    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Li2/b0$a;->d()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Li2/b0$a;->e(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    aget-object v7, p3, v2

    .line 18
    .line 19
    if-eq v5, v6, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    if-ne v5, v8, :cond_4

    .line 23
    .line 24
    :cond_0
    if-eqz v7, :cond_4

    .line 25
    .line 26
    aget-object v8, p1, v2

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Li2/b0$a;->f(I)Lf2/z;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-static {v8, v9, v7}, Li2/n;->c0([[ILf2/z;Li2/z;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_4

    .line 37
    .line 38
    if-ne v5, v6, :cond_2

    .line 39
    .line 40
    if-eq v4, v0, :cond_1

    .line 41
    .line 42
    :goto_1
    move p0, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    move v4, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    if-eq v3, v0, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v3, v2

    .line 50
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    move p0, v6

    .line 54
    :goto_3
    if-eq v4, v0, :cond_6

    .line 55
    .line 56
    if-eq v3, v0, :cond_6

    .line 57
    .line 58
    move p1, v6

    .line 59
    goto :goto_4

    .line 60
    :cond_6
    move p1, v1

    .line 61
    :goto_4
    and-int/2addr p0, p1

    .line 62
    if-eqz p0, :cond_7

    .line 63
    .line 64
    new-instance p0, Landroidx/media3/exoplayer/z3;

    .line 65
    .line 66
    invoke-direct {p0, v1, v6}, Landroidx/media3/exoplayer/z3;-><init>(IZ)V

    .line 67
    .line 68
    .line 69
    aput-object p0, p2, v4

    .line 70
    .line 71
    aput-object p0, p2, v3

    .line 72
    .line 73
    :cond_7
    return-void
.end method

.method private Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Li2/n;->g:Li2/n$e;

    .line 5
    .line 6
    iget-boolean v1, v1, Li2/n$e;->z0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Li2/n;->h:Li2/n$g;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Li2/n$g;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Li2/e0;->f()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v1
.end method

.method private Z(Landroidx/media3/exoplayer/w3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Li2/n;->g:Li2/n$e;

    .line 5
    .line 6
    iget-boolean v1, v1, Li2/n$e;->D0:Z

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Li2/e0;->g(Landroidx/media3/exoplayer/w3;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method protected static a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "und"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :cond_1
    return-object p0
.end method

.method private static b0(Li2/n$e;ILandroidx/media3/common/r;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->g(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/media3/common/h0$b;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->g(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    and-int/lit16 v0, v0, 0x800

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object p0, p0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 25
    .line 26
    iget-boolean p0, p0, Landroidx/media3/common/h0$b;->b:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-eqz p0, :cond_7

    .line 30
    .line 31
    iget p0, p2, Landroidx/media3/common/r;->H:I

    .line 32
    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    iget p0, p2, Landroidx/media3/common/r;->I:I

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move p0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    move p0, v0

    .line 43
    :goto_1
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->g(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    and-int/lit16 p1, p1, 0x400

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    move p1, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move p1, v1

    .line 54
    :goto_2
    if-eqz p0, :cond_5

    .line 55
    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    :cond_5
    move v1, v0

    .line 59
    :cond_6
    return v1

    .line 60
    :cond_7
    return v0
.end method

.method private static c0([[ILf2/z;Li2/z;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p2}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Lf2/z;->d(Landroidx/media3/common/f0;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    move v1, v0

    .line 14
    :goto_0
    invoke-interface {p2}, Li2/c0;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-object v2, p0, p1

    .line 21
    .line 22
    invoke-interface {p2, v1}, Li2/c0;->getIndexInTrackGroup(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    aget v2, v2, v3

    .line 27
    .line 28
    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->k(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x20

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method private i0(ILi2/b0$a;[[[ILi2/n$i$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Li2/b0$a;->d()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Li2/b0$a;->e(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    move/from16 v6, p1

    .line 20
    .line 21
    if-ne v6, v5, :cond_6

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Li2/b0$a;->f(I)Lf2/z;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v7, 0x0

    .line 28
    :goto_1
    iget v8, v5, Lf2/z;->a:I

    .line 29
    .line 30
    if-ge v7, v8, :cond_6

    .line 31
    .line 32
    invoke-virtual {v5, v7}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    aget-object v9, p3, v4

    .line 37
    .line 38
    aget-object v9, v9, v7

    .line 39
    .line 40
    move-object/from16 v10, p4

    .line 41
    .line 42
    invoke-interface {v10, v4, v8, v9}, Li2/n$i$a;->a(ILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    iget v11, v8, Landroidx/media3/common/f0;->a:I

    .line 47
    .line 48
    new-array v11, v11, [Z

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    :goto_2
    iget v13, v8, Landroidx/media3/common/f0;->a:I

    .line 52
    .line 53
    if-ge v12, v13, :cond_5

    .line 54
    .line 55
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    check-cast v13, Li2/n$i;

    .line 60
    .line 61
    invoke-virtual {v13}, Li2/n$i;->a()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    aget-boolean v15, v11, v12

    .line 66
    .line 67
    if-nez v15, :cond_0

    .line 68
    .line 69
    if-nez v14, :cond_1

    .line 70
    .line 71
    :cond_0
    move/from16 v17, v2

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_1
    const/4 v15, 0x1

    .line 75
    if-ne v14, v15, :cond_2

    .line 76
    .line 77
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    move/from16 v17, v2

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v16, v12, 0x1

    .line 93
    .line 94
    move/from16 v3, v16

    .line 95
    .line 96
    :goto_3
    iget v15, v8, Landroidx/media3/common/f0;->a:I

    .line 97
    .line 98
    if-ge v3, v15, :cond_4

    .line 99
    .line 100
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    check-cast v15, Li2/n$i;

    .line 105
    .line 106
    invoke-virtual {v15}, Li2/n$i;->a()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    move/from16 v17, v2

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    if-ne v0, v2, :cond_3

    .line 114
    .line 115
    invoke-virtual {v13, v15}, Li2/n$i;->b(Li2/n$i;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    aput-boolean v0, v11, v3

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_3
    const/4 v0, 0x1

    .line 129
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    move-object/from16 v0, p2

    .line 132
    .line 133
    move/from16 v2, v17

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move/from16 v17, v2

    .line 137
    .line 138
    move-object v13, v14

    .line 139
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 143
    .line 144
    move-object/from16 v0, p2

    .line 145
    .line 146
    move/from16 v2, v17

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    move/from16 v17, v2

    .line 150
    .line 151
    add-int/lit8 v7, v7, 0x1

    .line 152
    .line 153
    move-object/from16 v0, p2

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    move-object/from16 v10, p4

    .line 157
    .line 158
    move/from16 v17, v2

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    move-object/from16 v0, p2

    .line 163
    .line 164
    move/from16 v2, v17

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    return-object v0

    .line 176
    :cond_8
    move-object/from16 v0, p5

    .line 177
    .line 178
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    new-array v1, v1, [I

    .line 189
    .line 190
    const/4 v2, 0x0

    .line 191
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-ge v2, v3, :cond_9

    .line 196
    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Li2/n$i;

    .line 202
    .line 203
    iget v3, v3, Li2/n$i;->c:I

    .line 204
    .line 205
    aput v3, v1, v2

    .line 206
    .line 207
    add-int/lit8 v2, v2, 0x1

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_9
    const/4 v2, 0x0

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Li2/n$i;

    .line 216
    .line 217
    new-instance v2, Li2/z$a;

    .line 218
    .line 219
    iget-object v3, v0, Li2/n$i;->b:Landroidx/media3/common/f0;

    .line 220
    .line 221
    invoke-direct {v2, v3, v1}, Li2/z$a;-><init>(Landroidx/media3/common/f0;[I)V

    .line 222
    .line 223
    .line 224
    iget v0, v0, Li2/n$i;->a:I

    .line 225
    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method

.method private k0(Li2/n$e;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Li2/n;->g:Li2/n$e;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Li2/n$e;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput-object p1, p0, Li2/n;->g:Li2/n$e;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p1, Li2/n$e;->z0:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Li2/n;->e:Landroid/content/Context;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, "DefaultTrackSelector"

    .line 27
    .line 28
    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Li2/e0;->f()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public static synthetic r(Li2/n;Li2/n$e;Z[IILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Li2/n;->R(Li2/n$e;Z[IILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Li2/n$e;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Li2/n;->S(Li2/n$e;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Li2/n;Li2/n$e;Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li2/n;->Q(Li2/n$e;Landroidx/media3/common/r;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic u(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Li2/n;->U(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li2/n;->V(Ljava/lang/Integer;Ljava/lang/Integer;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic w(Li2/n$e;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Li2/n;->T(Li2/n$e;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/common/f0;IIZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Li2/n;->I(Landroidx/media3/common/f0;IIZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic y(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li2/n;->L(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic z(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Li2/n;->M(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public J()Li2/n$e;
    .locals 2

    .line 1
    iget-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Li2/n;->g:Li2/n$e;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public b(Landroidx/media3/exoplayer/w3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li2/n;->Z(Landroidx/media3/exoplayer/w3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic c()Landroidx/media3/common/h0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li2/n;->J()Li2/n$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Landroidx/media3/exoplayer/y3$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method protected d0(Li2/b0$a;[[[I[ILi2/n$e;)[Li2/z$a;
    .locals 11

    .line 1
    invoke-virtual {p1}, Li2/b0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Li2/z$a;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Li2/n;->e0(Li2/b0$a;[[[I[ILi2/n$e;)Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Li2/z$a;

    .line 24
    .line 25
    aput-object v4, v1, v3

    .line 26
    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    move-object v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v5, v2

    .line 36
    check-cast v5, Li2/z$a;

    .line 37
    .line 38
    iget-object v5, v5, Li2/z$a;->a:Landroidx/media3/common/f0;

    .line 39
    .line 40
    check-cast v2, Li2/z$a;

    .line 41
    .line 42
    iget-object v2, v2, Li2/z$a;->b:[I

    .line 43
    .line 44
    aget v2, v2, v3

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 51
    .line 52
    :goto_0
    move-object v5, p0

    .line 53
    move-object v6, p1

    .line 54
    move-object v7, p2

    .line 55
    move-object v8, p3

    .line 56
    move-object v9, p4

    .line 57
    move-object v10, v2

    .line 58
    invoke-virtual/range {v5 .. v10}, Li2/n;->j0(Li2/b0$a;[[[I[ILi2/n$e;Ljava/lang/String;)Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    iget-boolean v5, p4, Landroidx/media3/common/h0;->A:Z

    .line 63
    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    if-nez p3, :cond_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Li2/n;->f0(Li2/b0$a;[[[ILi2/n$e;)Landroid/util/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_3
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-object p3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p3, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Li2/z$a;

    .line 85
    .line 86
    aput-object v4, v1, p3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    if-eqz p3, :cond_5

    .line 90
    .line 91
    iget-object v4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p3, Li2/z$a;

    .line 102
    .line 103
    aput-object p3, v1, v4

    .line 104
    .line 105
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2, p4, v2}, Li2/n;->h0(Li2/b0$a;[[[ILi2/n$e;Ljava/lang/String;)Landroid/util/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p3, Li2/z$a;

    .line 122
    .line 123
    aput-object p3, v1, v2

    .line 124
    .line 125
    :cond_6
    :goto_2
    if-ge v3, v0, :cond_8

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Li2/b0$a;->e(I)I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    const/4 v2, 0x2

    .line 132
    if-eq p3, v2, :cond_7

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    if-eq p3, v2, :cond_7

    .line 136
    .line 137
    const/4 v2, 0x3

    .line 138
    if-eq p3, v2, :cond_7

    .line 139
    .line 140
    const/4 v2, 0x4

    .line 141
    if-eq p3, v2, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Li2/b0$a;->f(I)Lf2/z;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    aget-object v4, p2, v3

    .line 148
    .line 149
    invoke-virtual {p0, p3, v2, v4, p4}, Li2/n;->g0(ILf2/z;[[ILi2/n$e;)Li2/z$a;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    aput-object p3, v1, v3

    .line 154
    .line 155
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    return-object v1
.end method

.method protected e0(Li2/b0$a;[[[I[ILi2/n$e;)Landroid/util/Pair;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Li2/b0$a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v1}, Li2/b0$a;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Li2/b0$a;->f(I)Lf2/z;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v2, v2, Lf2/z;->a:I

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    new-instance v5, Li2/i;

    .line 30
    .line 31
    invoke-direct {v5, p0, p4, v0, p3}, Li2/i;-><init>(Li2/n;Li2/n$e;Z[I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Li2/j;

    .line 35
    .line 36
    invoke-direct {v6}, Li2/j;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    move-object v1, p0

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    invoke-direct/range {v1 .. v6}, Li2/n;->i0(ILi2/b0$a;[[[ILi2/n$i$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method protected f0(Li2/b0$a;[[[ILi2/n$e;)Landroid/util/Pair;
    .locals 6

    .line 1
    iget-object v0, p3, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/h0$b;->a:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v4, Li2/e;

    .line 11
    .line 12
    invoke-direct {v4, p3}, Li2/e;-><init>(Li2/n$e;)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Li2/f;

    .line 16
    .line 17
    invoke-direct {v5}, Li2/f;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    move-object v0, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Li2/n;->i0(ILi2/b0$a;[[[ILi2/n$i$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method protected g0(ILf2/z;[[ILi2/n$e;)Li2/z$a;
    .locals 11

    .line 1
    iget-object p1, p4, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 2
    .line 3
    iget p1, p1, Landroidx/media3/common/h0$b;->a:I

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    move v0, p1

    .line 12
    move v3, v0

    .line 13
    move-object v2, v1

    .line 14
    move-object v4, v2

    .line 15
    :goto_0
    iget v5, p2, Lf2/z;->a:I

    .line 16
    .line 17
    if-ge v0, v5, :cond_4

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aget-object v6, p3, v0

    .line 24
    .line 25
    move v7, p1

    .line 26
    :goto_1
    iget v8, v5, Landroidx/media3/common/f0;->a:I

    .line 27
    .line 28
    if-ge v7, v8, :cond_3

    .line 29
    .line 30
    aget v8, v6, v7

    .line 31
    .line 32
    iget-boolean v9, p4, Li2/n$e;->A0:Z

    .line 33
    .line 34
    invoke-static {v8, v9}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    new-instance v9, Li2/n$d;

    .line 45
    .line 46
    aget v10, v6, v7

    .line 47
    .line 48
    invoke-direct {v9, v8, v10}, Li2/n$d;-><init>(Landroidx/media3/common/r;I)V

    .line 49
    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v9, v4}, Li2/n$d;->a(Li2/n$d;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-lez v8, :cond_2

    .line 58
    .line 59
    :cond_1
    move-object v2, v5

    .line 60
    move v3, v7

    .line 61
    move-object v4, v9

    .line 62
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-nez v2, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    new-instance v1, Li2/z$a;

    .line 72
    .line 73
    filled-new-array {v3}, [I

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v1, v2, p1}, Li2/z$a;-><init>(Landroidx/media3/common/f0;[I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-object v1
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected h0(Li2/b0$a;[[[ILi2/n$e;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p3, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/h0$b;->a:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    iget-boolean v0, p3, Landroidx/media3/common/h0;->x:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Li2/n;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Li2/n;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_1
    new-instance v7, Li2/k;

    .line 21
    .line 22
    invoke-direct {v7, p3, p4, v2}, Li2/k;-><init>(Li2/n$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v8, Li2/l;

    .line 26
    .line 27
    invoke-direct {v8}, Li2/l;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    move-object v3, p0

    .line 32
    move-object v5, p1

    .line 33
    move-object v6, p2

    .line 34
    invoke-direct/range {v3 .. v8}, Li2/n;->i0(ILi2/b0$a;[[[ILi2/n$i$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public j()V
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Li2/n;->h:Li2/n$g;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Li2/n$g;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Li2/e0;->j()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected j0(Li2/b0$a;[[[I[ILi2/n$e;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p4, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/h0$b;->a:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    iget-boolean v0, p4, Landroidx/media3/common/h0;->k:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Li2/n;->e:Landroid/content/Context;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/media3/common/util/a1;->V(Landroid/content/Context;)Landroid/graphics/Point;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    new-instance v7, Li2/g;

    .line 23
    .line 24
    invoke-direct {v7, p4, p5, p3, v2}, Li2/g;-><init>(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    new-instance v8, Li2/h;

    .line 28
    .line 29
    invoke-direct {v8}, Li2/h;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    move-object v3, p0

    .line 34
    move-object v5, p1

    .line 35
    move-object v6, p2

    .line 36
    invoke-direct/range {v3 .. v8}, Li2/n;->i0(ILi2/b0$a;[[[ILi2/n$i$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public l(Landroidx/media3/common/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/n;->i:Landroidx/media3/common/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/common/c;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Li2/n;->i:Landroidx/media3/common/c;

    .line 11
    .line 12
    invoke-direct {p0}, Li2/n;->Y()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public m(Landroidx/media3/common/h0;)V
    .locals 3

    .line 1
    instance-of v0, p1, Li2/n$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Li2/n$e;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Li2/n;->k0(Li2/n$e;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Li2/n$e$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Li2/n;->J()Li2/n$e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Li2/n$e$a;-><init>(Li2/n$e;Li2/n$a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Li2/n$e$a;->l0(Landroidx/media3/common/h0;)Li2/n$e$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Li2/n$e$a;->h0()Li2/n$e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Li2/n;->k0(Li2/n$e;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected final q(Li2/b0$a;[[[I[ILandroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)Landroid/util/Pair;
    .locals 7

    .line 1
    iget-object v0, p0, Li2/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Li2/n;->g:Li2/n$e;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean v0, v1, Li2/n$e;->z0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Li2/n;->h:Li2/n$g;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Li2/n$g;

    .line 22
    .line 23
    iget-object v2, p0, Li2/n;->e:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v2, p0}, Li2/n$g;-><init>(Landroid/content/Context;Li2/n;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Li2/n;->h:Li2/n$g;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Li2/b0$a;->d()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, p1, p2, p3, v1}, Li2/n;->d0(Li2/b0$a;[[[I[ILi2/n$e;)[Li2/z$a;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-static {p1, v1, p3}, Li2/n;->F(Li2/b0$a;Landroidx/media3/common/h0;[Li2/z$a;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v1, p3}, Li2/n;->E(Li2/b0$a;Li2/n$e;[Li2/z$a;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    :goto_0
    const/4 v4, 0x0

    .line 47
    if-ge v3, v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Li2/b0$a;->e(I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v1, v3}, Li2/n$e;->h(I)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    iget-object v6, v1, Landroidx/media3/common/h0;->E:Lcom/google/common/collect/ImmutableSet;

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    :cond_1
    aput-object v4, p3, v3

    .line 72
    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object v3, p0, Li2/n;->f:Li2/z$b;

    .line 77
    .line 78
    invoke-virtual {p0}, Li2/e0;->a()Landroidx/media3/exoplayer/upstream/e;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-interface {v3, p3, v5, p4, p5}, Li2/z$b;->a([Li2/z$a;Landroidx/media3/exoplayer/upstream/e;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)[Li2/z;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    new-array p4, v0, [Landroidx/media3/exoplayer/z3;

    .line 87
    .line 88
    :goto_1
    if-ge v2, v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Li2/b0$a;->e(I)I

    .line 91
    .line 92
    .line 93
    move-result p5

    .line 94
    invoke-virtual {v1, v2}, Li2/n$e;->h(I)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    iget-object v3, v1, Landroidx/media3/common/h0;->E:Lcom/google/common/collect/ImmutableSet;

    .line 101
    .line 102
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p5

    .line 106
    invoke-virtual {v3, p5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p5

    .line 110
    if-eqz p5, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    invoke-virtual {p1, v2}, Li2/b0$a;->e(I)I

    .line 114
    .line 115
    .line 116
    move-result p5

    .line 117
    const/4 v3, -0x2

    .line 118
    if-eq p5, v3, :cond_5

    .line 119
    .line 120
    aget-object p5, p3, v2

    .line 121
    .line 122
    if-eqz p5, :cond_6

    .line 123
    .line 124
    :cond_5
    sget-object p5, Landroidx/media3/exoplayer/z3;->c:Landroidx/media3/exoplayer/z3;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    move-object p5, v4

    .line 128
    :goto_3
    aput-object p5, p4, v2

    .line 129
    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    iget-boolean p5, v1, Li2/n$e;->B0:Z

    .line 134
    .line 135
    if-eqz p5, :cond_8

    .line 136
    .line 137
    invoke-static {p1, p2, p4, p3}, Li2/n;->X(Li2/b0$a;[[[I[Landroidx/media3/exoplayer/z3;[Li2/z;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    iget-object p5, v1, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 141
    .line 142
    iget p5, p5, Landroidx/media3/common/h0$b;->a:I

    .line 143
    .line 144
    if-eqz p5, :cond_9

    .line 145
    .line 146
    invoke-static {v1, p1, p2, p4, p3}, Li2/n;->W(Li2/n$e;Li2/b0$a;[[[I[Landroidx/media3/exoplayer/z3;[Li2/z;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p1
.end method
