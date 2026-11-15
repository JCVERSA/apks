.class public final Lu5i;
.super Lp4i;
.source "SourceFile"


# instance fields
.field public e:Landroid/net/Uri;

.field public f:[B

.field public g:I

.field public h:I

.field public i:Z

.field public final j:Lf5i;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Lf5i;

    invoke-direct {v0, p1}, Lf5i;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lp4i;-><init>(Z)V

    iput-object v0, p0, Lu5i;->j:Lf5i;

    array-length p0, p1

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ln7g;->d(Z)V

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lu5i;->h:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lu5i;->f:[B

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lu5i;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lu5i;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lu5i;->g:I

    iget p1, p0, Lu5i;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lu5i;->h:I

    invoke-virtual {p0, p3}, Lp4i;->zzg(I)V

    return p3
.end method

.method public final j(Lcfi;)J
    .locals 6

    invoke-virtual {p0, p1}, Lp4i;->l(Lcfi;)V

    iget-object v0, p1, Lcfi;->a:Landroid/net/Uri;

    iput-object v0, p0, Lu5i;->e:Landroid/net/Uri;

    iget-object v0, p0, Lu5i;->j:Lf5i;

    iget-object v0, v0, Lf5i;->a:[B

    iput-object v0, p0, Lu5i;->f:[B

    iget-wide v1, p1, Lcfi;->e:J

    array-length v0, v0

    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    long-to-int v1, v1

    iput v1, p0, Lu5i;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lu5i;->h:I

    iget-wide v1, p1, Lcfi;->f:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lu5i;->h:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu5i;->i:Z

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    if-eqz v3, :cond_1

    return-wide v1

    :cond_1
    iget p0, p0, Lu5i;->h:I

    int-to-long p0, p0

    return-wide p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgf;

    const/16 p1, 0x7d8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(I)V

    throw p0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lu5i;->e:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzd()V
    .locals 1

    iget-boolean v0, p0, Lu5i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu5i;->i:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lu5i;->e:Landroid/net/Uri;

    iput-object v0, p0, Lu5i;->f:[B

    return-void
.end method
