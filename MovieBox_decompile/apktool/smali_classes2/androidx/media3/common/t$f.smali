.class public final Landroidx/media3/common/t$f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/t$f$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Ljava/util/UUID;

.field public final c:Landroid/net/Uri;

.field public final d:Lcom/google/common/collect/ImmutableMap;

.field public final e:Lcom/google/common/collect/ImmutableMap;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Lcom/google/common/collect/ImmutableList;

.field public final j:Lcom/google/common/collect/ImmutableList;

.field private final k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/media3/common/t$f;->l:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/media3/common/t$f;->m:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/media3/common/t$f;->n:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/media3/common/t$f;->o:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/media3/common/t$f;->p:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/media3/common/t$f;->q:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Landroidx/media3/common/t$f;->r:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/media3/common/t$f;->s:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$f$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->g(Landroidx/media3/common/t$f$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/common/t$f$a;->e(Landroidx/media3/common/t$f$a;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 4
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    .line 5
    iput-object v0, p0, Landroidx/media3/common/t$f;->b:Ljava/util/UUID;

    .line 6
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->e(Landroidx/media3/common/t$f$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    .line 7
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->h(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f;->d:Lcom/google/common/collect/ImmutableMap;

    .line 8
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->h(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    .line 9
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->a(Landroidx/media3/common/t$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/t$f;->f:Z

    .line 10
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->g(Landroidx/media3/common/t$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/t$f;->h:Z

    .line 11
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->b(Landroidx/media3/common/t$f$a;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/t$f;->g:Z

    .line 12
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->c(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f;->i:Lcom/google/common/collect/ImmutableList;

    .line 13
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->c(Landroidx/media3/common/t$f$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    .line 14
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->d(Landroidx/media3/common/t$f$a;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p1}, Landroidx/media3/common/t$f$a;->d(Landroidx/media3/common/t$f$a;)[B

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/common/t$f$a;->d(Landroidx/media3/common/t$f$a;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 16
    :goto_2
    iput-object p1, p0, Landroidx/media3/common/t$f;->k:[B

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$f$a;Landroidx/media3/common/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/t$f;-><init>(Landroidx/media3/common/t$f$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/t$f;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t$f;->k:[B

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/media3/common/t$f$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/t$f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$f;Landroidx/media3/common/t$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public c()[B
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/t$f;->k:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
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
    instance-of v1, p1, Landroidx/media3/common/t$f;

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
    check-cast p1, Landroidx/media3/common/t$f;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->f:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Landroidx/media3/common/t$f;->f:Z

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->h:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Landroidx/media3/common/t$f;->h:Z

    .line 52
    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->g:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Landroidx/media3/common/t$f;->g:Z

    .line 58
    .line 59
    if-ne v1, v3, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    iget-object v3, p1, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/media3/common/t$f;->k:[B

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/media3/common/t$f;->k:[B

    .line 74
    .line 75
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v0, v2

    .line 83
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

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
    iget-object v1, p0, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

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
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->f:Z

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->h:Z

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-boolean v1, p0, Landroidx/media3/common/t$f;->g:Z

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/media3/common/t$f;->k:[B

    .line 56
    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    return v0
.end method
