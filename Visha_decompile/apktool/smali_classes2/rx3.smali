.class public final Lrx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final o:Luk3;


# instance fields
.field public final a:[B

.field public final b:Lqw7;

.field public final c:Z

.field public final d:Lsx3$a;

.field public e:Lqk3;

.field public f:Lfva;

.field public g:I

.field public h:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public i:Lwx3;

.field public j:I

.field public k:I

.field public l:Lox3;

.field public m:I

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpx3;

    invoke-direct {v0}, Lpx3;-><init>()V

    sput-object v0, Lrx3;->o:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lrx3;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lrx3;->a:[B

    .line 4
    new-instance v0, Lqw7;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqw7;-><init>([BI)V

    iput-object v0, p0, Lrx3;->b:Lqw7;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    iput-boolean v0, p0, Lrx3;->c:Z

    .line 6
    new-instance p1, Lsx3$a;

    invoke-direct {p1}, Lsx3$a;-><init>()V

    iput-object p1, p0, Lrx3;->d:Lsx3$a;

    .line 7
    iput v2, p0, Lrx3;->g:I

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lrx3;->i()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i()[Lnk3;
    .locals 3

    new-instance v0, Lrx3;

    invoke-direct {v0}, Lrx3;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 2

    iput-object p1, p0, Lrx3;->e:Lqk3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iput-object v0, p0, Lrx3;->f:Lfva;

    invoke-interface {p1}, Lqk3;->endTracks()V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 3

    iget v0, p0, Lrx3;->g:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lrx3;->k(Lpk3;Lid8;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lrx3;->f(Lpk3;)V

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lrx3;->m(Lpk3;)V

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lrx3;->n(Lpk3;)V

    return v1

    :cond_4
    invoke-virtual {p0, p1}, Lrx3;->h(Lpk3;)V

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lrx3;->l(Lpk3;)V

    return v1
.end method

.method public c(Lpk3;)Z
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ltx3;->c(Lpk3;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {p1}, Ltx3;->a(Lpk3;)Z

    move-result p0

    return p0
.end method

.method public final e(Lqw7;Z)J
    .locals 4

    iget-object v0, p0, Lrx3;->i:Lwx3;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    iget-object v1, p0, Lrx3;->i:Lwx3;

    iget v2, p0, Lrx3;->k:I

    iget-object v3, p0, Lrx3;->d:Lsx3$a;

    invoke-static {p1, v1, v2, v3}, Lsx3;->d(Lqw7;Lwx3;ILsx3$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    iget-object p0, p0, Lrx3;->d:Lsx3$a;

    iget-wide p0, p0, Lsx3$a;->a:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lqw7;->f()I

    move-result p2

    iget v1, p0, Lrx3;->j:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lrx3;->i:Lwx3;

    iget v2, p0, Lrx3;->k:I

    iget-object v3, p0, Lrx3;->d:Lsx3$a;

    invoke-static {p1, v1, v2, v3}, Lsx3;->d(Lqw7;Lwx3;ILsx3$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v1, p2

    :goto_2
    invoke-virtual {p1}, Lqw7;->e()I

    move-result v2

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    iget-object p0, p0, Lrx3;->d:Lsx3$a;

    iget-wide p0, p0, Lsx3$a;->a:J

    return-wide p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lqw7;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Lqw7;->O(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final f(Lpk3;)V
    .locals 5

    invoke-static {p1}, Ltx3;->b(Lpk3;)I

    move-result v0

    iput v0, p0, Lrx3;->k:I

    iget-object v0, p0, Lrx3;->e:Lqk3;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqk3;

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v1

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lrx3;->g(JJ)Lja9;

    move-result-object p1

    invoke-interface {v0, p1}, Lqk3;->d(Lja9;)V

    const/4 p1, 0x5

    iput p1, p0, Lrx3;->g:I

    return-void
.end method

.method public final g(JJ)Lja9;
    .locals 8

    iget-object v0, p0, Lrx3;->i:Lwx3;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lrx3;->i:Lwx3;

    iget-object v0, v2, Lwx3;->k:Lwx3$a;

    if-eqz v0, :cond_0

    new-instance p0, Lvx3;

    invoke-direct {p0, v2, p1, p2}, Lvx3;-><init>(Lwx3;J)V

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-wide v0, v2, Lwx3;->j:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    new-instance v0, Lox3;

    iget v3, p0, Lrx3;->k:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lox3;-><init>(Lwx3;IJJ)V

    iput-object v0, p0, Lrx3;->l:Lox3;

    invoke-virtual {v0}, Lre0;->b()Lja9;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lja9$b;

    invoke-virtual {v2}, Lwx3;->f()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lja9$b;-><init>(J)V

    return-object p0
.end method

.method public final h(Lpk3;)V
    .locals 3

    iget-object v0, p0, Lrx3;->a:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lpk3;->peekFully([BII)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    const/4 p1, 0x2

    iput p1, p0, Lrx3;->g:I

    return-void
.end method

.method public final j()V
    .locals 11

    iget-wide v0, p0, Lrx3;->n:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lrx3;->i:Lwx3;

    invoke-static {v2}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwx3;

    iget v2, v2, Lwx3;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v0, p0, Lrx3;->f:Lfva;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfva;

    iget v8, p0, Lrx3;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lfva;->e(JIIILfva$a;)V

    return-void
.end method

.method public final k(Lpk3;Lid8;)I
    .locals 6

    iget-object v0, p0, Lrx3;->f:Lfva;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lrx3;->i:Lwx3;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lrx3;->l:Lox3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lre0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrx3;->l:Lox3;

    invoke-virtual {p0, p1, p2}, Lre0;->c(Lpk3;Lid8;)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Lrx3;->n:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lrx3;->i:Lwx3;

    invoke-static {p1, p2}, Lsx3;->i(Lpk3;Lwx3;)J

    move-result-wide p1

    iput-wide p1, p0, Lrx3;->n:J

    return v0

    :cond_1
    iget-object p2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p2}, Lqw7;->f()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_4

    iget-object v4, p0, Lrx3;->b:Lqw7;

    invoke-virtual {v4}, Lqw7;->d()[B

    move-result-object v4

    sub-int/2addr v1, p2

    invoke-interface {p1, v4, p2, v1}, Lpk3;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v1, p0, Lrx3;->b:Lqw7;

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lqw7;->N(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lrx3;->j()V

    return v1

    :cond_4
    move v4, v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p1}, Lqw7;->e()I

    move-result p1

    iget p2, p0, Lrx3;->m:I

    iget v1, p0, Lrx3;->j:I

    if-ge p2, v1, :cond_6

    iget-object v5, p0, Lrx3;->b:Lqw7;

    sub-int/2addr v1, p2

    invoke-virtual {v5}, Lqw7;->a()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Lqw7;->P(I)V

    :cond_6
    iget-object p2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p0, p2, v4}, Lrx3;->e(Lqw7;Z)J

    move-result-wide v4

    iget-object p2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p2}, Lqw7;->e()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object v1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {v1, p1}, Lqw7;->O(I)V

    iget-object p1, p0, Lrx3;->f:Lfva;

    iget-object v1, p0, Lrx3;->b:Lqw7;

    invoke-interface {p1, v1, p2}, Lfva;->d(Lqw7;I)V

    iget p1, p0, Lrx3;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lrx3;->m:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lrx3;->j()V

    iput v0, p0, Lrx3;->m:I

    iput-wide v4, p0, Lrx3;->n:J

    :cond_7
    iget-object p1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result p1

    iget-object p2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    iget-object v1, p0, Lrx3;->b:Lqw7;

    invoke-virtual {v1}, Lqw7;->e()I

    move-result v1

    iget-object v2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p2, v0}, Lqw7;->O(I)V

    iget-object p0, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p0, p1}, Lqw7;->N(I)V

    :cond_8
    return v0
.end method

.method public final l(Lpk3;)V
    .locals 2

    iget-boolean v0, p0, Lrx3;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Ltx3;->d(Lpk3;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lrx3;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput v1, p0, Lrx3;->g:I

    return-void
.end method

.method public final m(Lpk3;)V
    .locals 3

    new-instance v0, Ltx3$a;

    iget-object v1, p0, Lrx3;->i:Lwx3;

    invoke-direct {v0, v1}, Ltx3$a;-><init>(Lwx3;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ltx3;->e(Lpk3;Ltx3$a;)Z

    move-result v1

    iget-object v2, v0, Ltx3$a;->a:Lwx3;

    invoke-static {v2}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwx3;

    iput-object v2, p0, Lrx3;->i:Lwx3;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrx3;->i:Lwx3;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lrx3;->i:Lwx3;

    iget p1, p1, Lwx3;->c:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lrx3;->j:I

    iget-object p1, p0, Lrx3;->f:Lfva;

    invoke-static {p1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfva;

    iget-object v0, p0, Lrx3;->i:Lwx3;

    iget-object v1, p0, Lrx3;->a:[B

    iget-object v2, p0, Lrx3;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v1, v2}, Lwx3;->g([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    const/4 p1, 0x4

    iput p1, p0, Lrx3;->g:I

    return-void
.end method

.method public final n(Lpk3;)V
    .locals 0

    invoke-static {p1}, Ltx3;->i(Lpk3;)V

    const/4 p1, 0x3

    iput p1, p0, Lrx3;->g:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lrx3;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrx3;->l:Lox3;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lre0;->h(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lrx3;->n:J

    iput p2, p0, Lrx3;->m:I

    iget-object p0, p0, Lrx3;->b:Lqw7;

    invoke-virtual {p0, p2}, Lqw7;->K(I)V

    return-void
.end method
