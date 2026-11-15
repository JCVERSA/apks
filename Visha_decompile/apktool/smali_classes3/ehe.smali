.class public final Lehe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrae;


# instance fields
.field public final a:Lrae;

.field public final b:Lvge;

.field public final c:Lu4h;

.field public d:I

.field public e:I

.field public f:[B

.field public g:Lbhe;

.field public h:Lerj;

.field public i:Z


# direct methods
.method public constructor <init>(Lrae;Lvge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehe;->a:Lrae;

    iput-object p2, p0, Lehe;->b:Lvge;

    const/4 p1, 0x0

    iput p1, p0, Lehe;->d:I

    iput p1, p0, Lehe;->e:I

    sget-object p1, Lkfh;->c:[B

    iput-object p1, p0, Lehe;->f:[B

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lehe;->c:Lu4h;

    return-void
.end method

.method public static synthetic h(Lehe;JILqge;)V
    .locals 9

    iget-object v0, p0, Lehe;->h:Lerj;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p4, Lqge;->a:Lcom/google/android/gms/internal/ads/zzfww;

    iget-wide v1, p4, Lqge;->c:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfyf;

    invoke-virtual {v4}, Lfyf;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "c"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "d"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v1, p0, Lehe;->c:Lu4h;

    array-length v6, v0

    invoke-virtual {v1, v0, v6}, Lu4h;->j([BI)V

    iget-object v2, p0, Lehe;->a:Lrae;

    invoke-interface {v2, v1, v6}, Lrae;->d(Lu4h;I)V

    iget-wide v0, p4, Lqge;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-nez p4, :cond_2

    iget-object p0, p0, Lehe;->h:Lerj;

    iget-wide v0, p0, Lerj;->t:J

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ln7g;->f(Z)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lehe;->h:Lerj;

    iget-wide v7, p0, Lerj;->t:J

    cmp-long p0, v7, v4

    if-nez p0, :cond_3

    add-long/2addr p1, v0

    goto :goto_2

    :cond_3
    add-long p1, v0, v7

    :goto_2
    or-int/lit8 v5, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-interface/range {v2 .. v8}, Lrae;->g(JIIILqae;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lk8j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lpae;->a(Lrae;Lk8j;IZ)I

    move-result p0

    return p0
.end method

.method public final b(Lu4h;II)V
    .locals 1

    iget-object v0, p0, Lehe;->g:Lbhe;

    if-nez v0, :cond_0

    iget-object p0, p0, Lehe;->a:Lrae;

    invoke-interface {p0, p1, p2, p3}, Lrae;->b(Lu4h;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lehe;->j(I)V

    iget-object p3, p0, Lehe;->f:[B

    iget v0, p0, Lehe;->e:I

    invoke-virtual {p1, p3, v0, p2}, Lu4h;->h([BII)V

    iget p1, p0, Lehe;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lehe;->e:I

    return-void
.end method

.method public final synthetic c(J)V
    .locals 0

    return-void
.end method

.method public final synthetic d(Lu4h;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lpae;->b(Lrae;Lu4h;I)V

    return-void
.end method

.method public final e(Lk8j;IZI)I
    .locals 1

    iget-object p4, p0, Lehe;->g:Lbhe;

    if-nez p4, :cond_0

    iget-object p0, p0, Lehe;->a:Lrae;

    const/4 p4, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lrae;->e(Lk8j;IZI)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lehe;->j(I)V

    iget-object p4, p0, Lehe;->f:[B

    iget v0, p0, Lehe;->e:I

    invoke-interface {p1, p4, v0, p2}, Lk8j;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    iget p2, p0, Lehe;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lehe;->e:I

    return p1
.end method

.method public final f(Lerj;)V
    .locals 5

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lbue;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln7g;->d(Z)V

    iget-object v1, p0, Lehe;->h:Lerj;

    invoke-virtual {p1, v1}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lehe;->h:Lerj;

    iget-object v1, p0, Lehe;->b:Lvge;

    invoke-interface {v1, p1}, Lvge;->b(Lerj;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Lvge;->c(Lerj;)Lbhe;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lehe;->g:Lbhe;

    :cond_2
    iget-object v1, p0, Lehe;->g:Lbhe;

    if-nez v1, :cond_3

    iget-object p0, p0, Lehe;->a:Lrae;

    invoke-interface {p0, p1}, Lrae;->f(Lerj;)V

    return-void

    :cond_3
    iget-object v1, p0, Lehe;->a:Lrae;

    invoke-virtual {p1}, Lerj;->b()Lgpj;

    move-result-object v2

    const-string v3, "application/x-media3-cues"

    invoke-virtual {v2, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2, v0}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Lgpj;->I(J)Lgpj;

    iget-object p0, p0, Lehe;->b:Lvge;

    invoke-interface {p0, p1}, Lvge;->a(Lerj;)I

    move-result p0

    invoke-virtual {v2, p0}, Lgpj;->g(I)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object p0

    invoke-interface {v1, p0}, Lrae;->f(Lerj;)V

    return-void
.end method

.method public final g(JIIILqae;)V
    .locals 8

    iget-object v0, p0, Lehe;->g:Lbhe;

    if-nez v0, :cond_0

    iget-object v1, p0, Lehe;->a:Lrae;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lrae;->g(JIIILqae;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p6, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    invoke-static {p6, v1}, Ln7g;->e(ZLjava/lang/Object;)V

    iget p6, p0, Lehe;->e:I

    sub-int/2addr p6, p5

    sub-int/2addr p6, p4

    :try_start_0
    iget-object v1, p0, Lehe;->g:Lbhe;

    iget-object v2, p0, Lehe;->f:[B

    invoke-static {}, Lwge;->a()Lwge;

    move-result-object v5

    new-instance v6, Ldhe;

    invoke-direct {v6, p0, p1, p2, p3}, Ldhe;-><init>(Lehe;JI)V

    move v3, p6

    move v4, p4

    invoke-interface/range {v1 .. v6}, Lbhe;->a([BIILwge;Lqfg;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lehe;->i:Z

    if-eqz p2, :cond_3

    const-string p2, "SubtitleTranscodingTO"

    const-string p3, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p3, p1}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p6, p4

    iput p6, p0, Lehe;->d:I

    iget p1, p0, Lehe;->e:I

    if-ne p6, p1, :cond_2

    iput v0, p0, Lehe;->d:I

    iput v0, p0, Lehe;->e:I

    :cond_2
    return-void

    :cond_3
    throw p1
.end method

.method public final i(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lehe;->i:Z

    return-void
.end method

.method public final j(I)V
    .locals 4

    iget-object v0, p0, Lehe;->f:[B

    array-length v0, v0

    iget v1, p0, Lehe;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lehe;->d:I

    sub-int/2addr v1, v0

    add-int v0, v1, v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lehe;->f:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Lehe;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lehe;->d:I

    iput v1, p0, Lehe;->e:I

    iput-object p1, p0, Lehe;->f:[B

    return-void
.end method
