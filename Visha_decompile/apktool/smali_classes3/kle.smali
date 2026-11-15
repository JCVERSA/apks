.class public final Lkle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhle;


# instance fields
.field public final a:Lf9e;

.field public final b:Lrae;

.field public final c:Lmle;

.field public final d:Lerj;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lf9e;Lrae;Lmle;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkle;->a:Lf9e;

    iput-object p2, p0, Lkle;->b:Lrae;

    iput-object p3, p0, Lkle;->c:Lmle;

    iget p1, p3, Lmle;->b:I

    iget p2, p3, Lmle;->e:I

    mul-int/2addr p1, p2

    iget p2, p3, Lmle;->d:I

    div-int/lit8 p1, p1, 0x8

    if-ne p2, p1, :cond_0

    iget p2, p3, Lmle;->c:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lkle;->e:I

    new-instance p2, Lgpj;

    invoke-direct {p2}, Lgpj;-><init>()V

    const-string v1, "audio/wav"

    invoke-virtual {p2, v1}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {p2, p4}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {p2, v0}, Lgpj;->a(I)Lgpj;

    invoke-virtual {p2, v0}, Lgpj;->y(I)Lgpj;

    invoke-virtual {p2, p1}, Lgpj;->t(I)Lgpj;

    iget p1, p3, Lmle;->b:I

    invoke-virtual {p2, p1}, Lgpj;->b(I)Lgpj;

    iget p1, p3, Lmle;->c:I

    invoke-virtual {p2, p1}, Lgpj;->F(I)Lgpj;

    invoke-virtual {p2, p5}, Lgpj;->x(I)Lgpj;

    invoke-virtual {p2}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Lkle;->d:Lerj;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected block size: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lkle;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lkle;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lkle;->h:J

    return-void
.end method

.method public final b(IJ)V
    .locals 7

    int-to-long v3, p1

    new-instance p1, Lple;

    iget-object v1, p0, Lkle;->c:Lmle;

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lple;-><init>(Lmle;IJJ)V

    iget-object p2, p0, Lkle;->a:Lf9e;

    invoke-interface {p2, p1}, Lf9e;->i(Lkae;)V

    iget-object p2, p0, Lkle;->b:Lrae;

    iget-object p0, p0, Lkle;->d:Lerj;

    invoke-interface {p2, p0}, Lrae;->f(Lerj;)V

    invoke-virtual {p1}, Lple;->zza()J

    move-result-wide p0

    invoke-interface {p2, p0, p1}, Lrae;->c(J)V

    return-void
.end method

.method public final c(Ld9e;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Lkle;->g:I

    iget v8, v0, Lkle;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lkle;->b:Lrae;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Lrae;->a(Lk8j;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lkle;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Lkle;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lkle;->c:Lmle;

    iget v2, v0, Lkle;->g:I

    iget v3, v1, Lmle;->d:I

    div-int/2addr v2, v3

    if-lez v2, :cond_2

    iget-wide v7, v0, Lkle;->f:J

    iget-wide v9, v0, Lkle;->h:J

    iget v1, v1, Lmle;->c:I

    int-to-long v13, v1

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v2, v3

    iget v1, v0, Lkle;->g:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lkle;->b:Lrae;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Lrae;->g(JIIILqae;)V

    iget-wide v3, v0, Lkle;->h:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lkle;->h:J

    iput v1, v0, Lkle;->g:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
