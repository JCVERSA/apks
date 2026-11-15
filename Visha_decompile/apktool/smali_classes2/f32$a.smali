.class public final Lf32$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:Lcom/google/android/exoplayer2/source/i$b;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lf32;


# direct methods
.method public constructor <init>(Lf32;Ljava/lang/String;ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    iput-object p1, p0, Lf32$a;->g:Lf32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf32$a;->a:Ljava/lang/String;

    iput p3, p0, Lf32$a;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Lxk6;->d:J

    :goto_0
    iput-wide p1, p0, Lf32$a;->c:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lxk6;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    :cond_1
    return-void
.end method

.method public static synthetic a(Lf32$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf32$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lf32$a;)J
    .locals 2

    iget-wide v0, p0, Lf32$a;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lf32$a;)I
    .locals 0

    iget p0, p0, Lf32$a;->b:I

    return p0
.end method

.method public static synthetic d(Lf32$a;)Z
    .locals 0

    iget-boolean p0, p0, Lf32$a;->e:Z

    return p0
.end method

.method public static synthetic e(Lf32$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lf32$a;->e:Z

    return p1
.end method

.method public static synthetic f(Lf32$a;)Z
    .locals 0

    iget-boolean p0, p0, Lf32$a;->f:Z

    return p0
.end method

.method public static synthetic g(Lf32$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lf32$a;->f:Z

    return p1
.end method

.method public static synthetic h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    iget-object p0, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    return-object p0
.end method


# virtual methods
.method public i(ILcom/google/android/exoplayer2/source/i$b;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p0, p0, Lf32$a;->b:I

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lxk6;->b()Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p2, Lxk6;->d:J

    iget-wide v2, p0, Lf32$a;->c:J

    cmp-long p0, p1, v2

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-wide v2, p2, Lxk6;->d:J

    iget-wide v4, p1, Lxk6;->d:J

    cmp-long p0, v2, v4

    if-nez p0, :cond_4

    iget p0, p2, Lxk6;->b:I

    iget v2, p1, Lxk6;->b:I

    if-ne p0, v2, :cond_4

    iget p0, p2, Lxk6;->c:I

    iget p1, p1, Lxk6;->c:I

    if-ne p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public j(Lnb$a;)Z
    .locals 9

    iget-wide v0, p0, Lf32$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget p0, p0, Lf32$a;->b:I

    iget p1, p1, Lnb$a;->c:I

    if-eq p0, p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    :cond_2
    iget-wide v5, v2, Lxk6;->d:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_3

    return v4

    :cond_3
    iget-object v0, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object v1, v2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object v2, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v5, v2, Lxk6;->d:J

    iget-object v7, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v7, v7, Lxk6;->d:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    if-le v0, v1, :cond_6

    return v4

    :cond_6
    invoke-virtual {v2}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget v0, p1, Lxk6;->b:I

    iget p1, p1, Lxk6;->c:I

    iget-object p0, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget v1, p0, Lxk6;->b:I

    if-gt v0, v1, :cond_7

    if-ne v0, v1, :cond_8

    iget p0, p0, Lxk6;->c:I

    if-le p1, p0, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    return v3

    :cond_9
    iget-object p1, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget p1, p1, Lxk6;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-object p0, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget p0, p0, Lxk6;->b:I

    if-le p1, p0, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    :goto_0
    return v3
.end method

.method public k(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 4

    iget-wide v0, p0, Lf32$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lf32$a;->b:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-wide p1, p2, Lxk6;->d:J

    iput-wide p1, p0, Lf32$a;->c:J

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;I)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result p0

    if-ge p3, p0, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    return p3

    :cond_1
    iget-object v0, p0, Lf32$a;->g:Lf32;

    invoke-static {v0}, Lf32;->h(Lf32;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object p3, p0, Lf32$a;->g:Lf32;

    invoke-static {p3}, Lf32;->h(Lf32;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/a0$d;->p:I

    :goto_1
    iget-object v0, p0, Lf32$a;->g:Lf32;

    invoke-static {v0}, Lf32;->h(Lf32;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$d;->q:I

    if-gt p3, v0, :cond_3

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/a0;->q(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lf32$a;->g:Lf32;

    invoke-static {p0}, Lf32;->i(Lf32;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/a0$b;->d:I

    return p0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public m(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Z
    .locals 2

    iget v0, p0, Lf32$a;->b:I

    invoke-virtual {p0, p1, p2, v0}, Lf32$a;->l(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;I)I

    move-result p1

    iput p1, p0, Lf32$a;->b:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lf32$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    const/4 p1, 0x1

    if-nez p0, :cond_1

    return p1

    :cond_1
    iget-object p0, p0, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v1, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method
