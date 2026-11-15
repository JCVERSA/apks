.class public final Ly2f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field public g:Lewe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lkfh;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lewe;->e:Lewe;

    iput-object v0, p0, Ly2f;->g:Lewe;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    move-result-object p0

    iget p0, p0, Ld5e;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    iget p0, p0, Lewe;->a:I

    const/4 p0, 0x0

    return p0
.end method

.method public final c(J)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final d(J)I
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lewe;->b(I)Z

    return p1
.end method

.method public final e(I)I
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ld5e;->a(I)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly2f;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ly2f;

    iget-object v2, p0, Ly2f;->a:Ljava/lang/Object;

    iget-object v3, p1, Ly2f;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ly2f;->b:Ljava/lang/Object;

    iget-object v3, p1, Ly2f;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Ly2f;->c:I

    iget v3, p1, Ly2f;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ly2f;->d:J

    iget-wide v4, p1, Ly2f;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ly2f;->f:Z

    iget-boolean v3, p1, Ly2f;->f:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Ly2f;->g:Lewe;

    iget-object p1, p1, Ly2f;->g:Lewe;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f(II)J
    .locals 1

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    move-result-object p0

    iget p1, p0, Ld5e;->b:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Ld5e;->f:[J

    aget-wide p0, p0, p2

    return-wide p0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public final g(I)J
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    move-result-object p0

    iget-wide p0, p0, Ld5e;->a:J

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Ly2f;->g:Lewe;

    iget-wide v0, p0, Lewe;->b:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Ly2f;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Ly2f;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly2f;->c:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Ly2f;->d:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Ly2f;->f:Z

    add-int/2addr v0, v1

    iget-object p0, p0, Ly2f;->g:Lewe;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lewe;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;IJJLewe;Z)Ly2f;
    .locals 0

    iput-object p1, p0, Ly2f;->a:Ljava/lang/Object;

    iput-object p2, p0, Ly2f;->b:Ljava/lang/Object;

    iput p3, p0, Ly2f;->c:I

    iput-wide p4, p0, Ly2f;->d:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ly2f;->e:J

    iput-object p8, p0, Ly2f;->g:Lewe;

    iput-boolean p9, p0, Ly2f;->f:Z

    return-object p0
.end method

.method public final j(I)Z
    .locals 1

    invoke-virtual {p0}, Ly2f;->b()I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, v0}, Lewe;->b(I)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(I)Z
    .locals 0

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    move-result-object p0

    iget-boolean p0, p0, Ld5e;->i:Z

    const/4 p0, 0x0

    return p0
.end method
