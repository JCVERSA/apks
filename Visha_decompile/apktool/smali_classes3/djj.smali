.class public final Ldjj;
.super Lflj;
.source "SourceFile"

# interfaces
.implements Lb8j;


# instance fields
.field public final B0:Landroid/content/Context;

.field public final C0:Lchj;

.field public final D0:Lphj;

.field public final E0:Lnkj;

.field public F0:I

.field public G0:Z

.field public H0:Z

.field public I0:Lerj;

.field public J0:Lerj;

.field public K0:J

.field public L0:Z

.field public M0:Z

.field public N0:Z

.field public O0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpkj;Lhlj;ZLandroid/os/Handler;Ldhj;Lphj;)V
    .locals 8

    sget p4, Lkfh;->a:I

    const/16 v0, 0x23

    const/4 v1, 0x0

    if-lt p4, v0, :cond_0

    new-instance p4, Lnkj;

    sget-object v0, Lmkj;->a:Lmkj;

    invoke-direct {p4, v0}, Lnkj;-><init>(Lmkj;)V

    goto :goto_0

    :cond_0
    move-object p4, v1

    :goto_0
    const/4 v6, 0x0

    const v7, 0x472c4400    # 44100.0f

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lflj;-><init>(ILpkj;Lhlj;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldjj;->B0:Landroid/content/Context;

    iput-object p7, p0, Ldjj;->D0:Lphj;

    iput-object p4, p0, Ldjj;->E0:Lnkj;

    const/16 p1, -0x3e8

    iput p1, p0, Ldjj;->O0:I

    new-instance p1, Lchj;

    invoke-direct {p1, p5, p6}, Lchj;-><init>(Landroid/os/Handler;Ldhj;)V

    iput-object p1, p0, Ldjj;->C0:Lchj;

    new-instance p1, Lbjj;

    invoke-direct {p1, p0, v1}, Lbjj;-><init>(Ldjj;Lcjj;)V

    invoke-interface {p7, p1}, Lphj;->m(Lohj;)V

    return-void
.end method

.method public static M0(Lhlj;Lerj;ZLphj;)Ljava/util/List;
    .locals 0

    iget-object p2, p1, Lerj;->o:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p3, p1}, Lphj;->h(Lerj;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lqlj;->a()Ltkj;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lqlj;->e(Lhlj;Lerj;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic N0(Ldjj;)Lchj;
    .locals 0

    iget-object p0, p0, Ldjj;->C0:Lchj;

    return-object p0
.end method

.method public static bridge synthetic O0(Ldjj;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldjj;->N0:Z

    return-void
.end method

.method public static synthetic P0(Ldjj;)V
    .locals 0

    invoke-virtual {p0}, La1j;->q()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzg()V

    return-void
.end method

.method public final B0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-interface {v0}, Lphj;->zzj()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lflj;->W()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x138a

    goto :goto_0

    :cond_0
    const/16 v1, 0x138b

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzc:Lerj;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    invoke-virtual {p0, v0, v2, v3, v1}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0
.end method

.method public final C0(JJLrkj;Ljava/nio/ByteBuffer;IIIJZZLerj;)Z
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ldjj;->J0:Lerj;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7, p3}, Lrkj;->h(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7, p3}, Lrkj;->h(IZ)V

    :cond_1
    iget-object p1, p0, Lflj;->t0:Ld1j;

    iget p3, p1, Ld1j;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Ld1j;->f:I

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzg()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Ldjj;->D0:Lphj;

    invoke-interface {p1, p6, p10, p11, p9}, Lphj;->g(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7, p3}, Lrkj;->h(IZ)V

    :cond_3
    iget-object p0, p0, Lflj;->t0:Ld1j;

    iget p1, p0, Ld1j;->e:I

    add-int/2addr p1, p9

    iput p1, p0, Ld1j;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Lflj;->W()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, La1j;->F()Lbaj;

    :goto_1
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0

    :goto_2
    iget-object p2, p0, Ldjj;->I0:Lerj;

    invoke-virtual {p0}, Lflj;->W()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, La1j;->F()Lbaj;

    :cond_6
    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0
.end method

.method public final D0(Lerj;)Z
    .locals 0

    invoke-virtual {p0}, La1j;->F()Lbaj;

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0, p1}, Lphj;->h(Lerj;)Z

    move-result p0

    return p0
.end method

.method public final H()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjj;->M0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldjj;->I0:Lerj;

    :try_start_0
    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-interface {v0}, Lphj;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lflj;->H()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ldjj;->C0:Lchj;

    iget-object p0, p0, Lflj;->t0:Ld1j;

    invoke-virtual {v0, p0}, Lchj;->s(Ld1j;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lflj;->H()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Ldjj;->C0:Lchj;

    iget-object p0, p0, Lflj;->t0:Ld1j;

    invoke-virtual {v1, p0}, Lchj;->s(Ld1j;)V

    throw v0

    :goto_0
    iget-object v1, p0, Ldjj;->C0:Lchj;

    iget-object p0, p0, Lflj;->t0:Ld1j;

    invoke-virtual {v1, p0}, Lchj;->s(Ld1j;)V

    throw v0
.end method

.method public final I(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lflj;->I(ZZ)V

    iget-object p1, p0, Ldjj;->C0:Lchj;

    iget-object p2, p0, Lflj;->t0:Ld1j;

    invoke-virtual {p1, p2}, Lchj;->t(Ld1j;)V

    invoke-virtual {p0}, La1j;->F()Lbaj;

    iget-object p1, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p0}, La1j;->G()Ltfj;

    move-result-object p2

    invoke-interface {p1, p2}, Lphj;->o(Ltfj;)V

    invoke-virtual {p0}, La1j;->D()Ltbg;

    move-result-object p0

    invoke-interface {p1, p0}, Lphj;->k(Ltbg;)V

    return-void
.end method

.method public final J(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lflj;->J(JZ)V

    iget-object p3, p0, Ldjj;->D0:Lphj;

    invoke-interface {p3}, Lphj;->zzf()V

    iput-wide p1, p0, Ldjj;->K0:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldjj;->N0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldjj;->L0:Z

    return-void
.end method

.method public final K(FLerj;[Lerj;)F
    .locals 2

    const/4 p0, 0x0

    const/4 p2, -0x1

    move v0, p2

    :goto_0
    array-length v1, p3

    if-ge p0, v1, :cond_1

    aget-object v1, p3, p0

    iget v1, v1, Lerj;->F:I

    if-eq v1, p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, p2, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    int-to-float p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final L0(Ltkj;Lerj;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Ltkj;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lkfh;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ldjj;->B0:Landroid/content/Context;

    invoke-static {p0}, Lkfh;->n(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    iget p0, p2, Lerj;->p:I

    return p0
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    const/16 v1, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lflj;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Ldjj;->D0:Lphj;

    invoke-interface {p2, p1}, Lphj;->c(I)V

    sget p2, Lkfh;->a:I

    if-lt p2, v1, :cond_3

    iget-object p0, p0, Ldjj;->E0:Lnkj;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lnkj;->d(I)V

    return-void

    :cond_1
    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lphj;->zzv(Z)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldjj;->O0:I

    invoke-virtual {p0}, Lflj;->K0()Lrkj;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p2, Lkfh;->a:I

    if-lt p2, v1, :cond_3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Ldjj;->O0:I

    neg-int p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-string v0, "importance"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lrkj;->zzq(Landroid/os/Bundle;)V

    :cond_3
    return-void

    :cond_4
    sget p1, Lkfh;->a:I

    iget-object p0, p0, Ldjj;->D0:Lphj;

    check-cast p2, Landroid/media/AudioDeviceInfo;

    invoke-interface {p0, p2}, Lphj;->l(Landroid/media/AudioDeviceInfo;)V

    return-void

    :cond_5
    check-cast p2, Lklh;

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p2}, Lphj;->e(Lklh;)V

    return-void

    :cond_6
    check-cast p2, Lhvg;

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p2}, Lphj;->p(Lhvg;)V

    return-void

    :cond_7
    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lphj;->n(F)V

    return-void
.end method

.method public final e0()V
    .locals 4

    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-virtual {p0}, Lflj;->f()Z

    move-result v1

    invoke-interface {v0, v1}, Lphj;->d(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ldjj;->L0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Ldjj;->K0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Ldjj;->K0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjj;->L0:Z

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-super {p0}, Lflj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzz()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lvwe;)V
    .locals 0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0, p1}, Lphj;->f(Lvwe;)V

    return-void
.end method

.method public final l0(Lhlj;Lerj;)I
    .locals 8

    iget-object v0, p2, Lerj;->o:Ljava/lang/String;

    invoke-static {v0}, Lbue;->h(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x80

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, p2, Lerj;->L:I

    invoke-static {p2}, Lflj;->b0(Lerj;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    invoke-static {}, Lqlj;->a()Ltkj;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v4

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v1, p0, Ldjj;->D0:Lphj;

    invoke-interface {v1, p2}, Lphj;->i(Lerj;)Lygj;

    move-result-object v6

    iget-boolean v7, v6, Lygj;->a:Z

    if-nez v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    iget-boolean v7, v6, Lygj;->b:Z

    if-eq v5, v7, :cond_4

    const/16 v7, 0x200

    goto :goto_1

    :cond_4
    const/16 v7, 0x600

    :goto_1
    iget-boolean v6, v6, Lygj;->c:Z

    if-eqz v6, :cond_5

    or-int/lit16 v7, v7, 0x800

    :cond_5
    :goto_2
    invoke-interface {v1, p2}, Lphj;->h(Lerj;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    or-int/lit16 p0, v7, 0xac

    return p0

    :goto_3
    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-interface {v0, p2}, Lphj;->h(Lerj;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, p0, Ldjj;->D0:Lphj;

    iget v0, p2, Lerj;->E:I

    iget v1, p2, Lerj;->F:I

    const/4 v6, 0x2

    invoke-static {v6, v0, v1}, Lkfh;->a(III)Lerj;

    move-result-object v0

    invoke-interface {p0, v0}, Lphj;->h(Lerj;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {p1, p2, v4, p0}, Ldjj;->M0(Lhlj;Lerj;ZLphj;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    if-nez v3, :cond_a

    move v5, v6

    :goto_4
    or-int/lit16 p0, v5, 0x80

    return p0

    :cond_a
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltkj;

    invoke-virtual {p1, p2}, Ltkj;->e(Lerj;)Z

    move-result v0

    if-nez v0, :cond_c

    move v1, v5

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltkj;

    invoke-virtual {v3, p2}, Ltkj;->e(Lerj;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object p1, v3

    move p0, v4

    move v0, v5

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move p0, v5

    :goto_6
    if-eq v5, v0, :cond_d

    const/4 v1, 0x3

    goto :goto_7

    :cond_d
    const/4 v1, 0x4

    :goto_7
    const/16 v3, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2}, Ltkj;->f(Lerj;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 v3, 0x10

    :cond_e
    iget-boolean p1, p1, Ltkj;->g:Z

    if-eq v5, p1, :cond_f

    move p1, v4

    goto :goto_8

    :cond_f
    const/16 p1, 0x40

    :goto_8
    if-eq v5, p0, :cond_10

    move v2, v4

    :cond_10
    or-int p0, v1, v3

    or-int/lit8 p0, p0, 0x20

    or-int/2addr p0, p1

    or-int/2addr p0, v2

    or-int/2addr p0, v7

    return p0
.end method

.method public final m0(Ltkj;Lerj;Lerj;)Lg1j;
    .locals 8

    invoke-virtual {p1, p2, p3}, Ltkj;->b(Lerj;Lerj;)Lg1j;

    move-result-object v0

    iget v1, v0, Lg1j;->e:I

    invoke-virtual {p0, p3}, Lflj;->X(Lerj;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0, p1, p3}, Ldjj;->L0(Ltkj;Lerj;)I

    move-result v2

    iget p0, p0, Ldjj;->F0:I

    if-le v2, p0, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    iget-object v3, p1, Ltkj;->a:Ljava/lang/String;

    new-instance p0, Lg1j;

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    move v6, p1

    move v7, v1

    goto :goto_0

    :cond_2
    iget v0, v0, Lg1j;->d:I

    move v7, p1

    move v6, v0

    :goto_0
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object p0
.end method

.method public final n0(Lp7j;)Lg1j;
    .locals 1

    iget-object v0, p1, Lp7j;->a:Lerj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Ldjj;->I0:Lerj;

    invoke-super {p0, p1}, Lflj;->n0(Lp7j;)Lg1j;

    move-result-object p1

    iget-object p0, p0, Ldjj;->C0:Lchj;

    invoke-virtual {p0, v0, p1}, Lchj;->u(Lerj;Lg1j;)V

    return-object p1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-interface {v0}, Lphj;->zzk()V

    sget v0, Lkfh;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Ldjj;->E0:Lnkj;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnkj;->b()V

    :cond_0
    return-void
.end method

.method public final q0(Ltkj;Lerj;Landroid/media/MediaCrypto;F)Lokj;
    .locals 8

    invoke-virtual {p0}, La1j;->w()[Lerj;

    move-result-object p3

    array-length v0, p3

    invoke-virtual {p0, p1, p2}, Ldjj;->L0(Ltkj;Lerj;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p3, v4

    invoke-virtual {p1, p2, v5}, Ltkj;->b(Lerj;Lerj;)Lg1j;

    move-result-object v6

    iget v6, v6, Lg1j;->d:I

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1, v5}, Ldjj;->L0(Ltkj;Lerj;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v1, p0, Ldjj;->F0:I

    iget-object p3, p1, Ltkj;->a:Ljava/lang/String;

    sget v0, Lkfh;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v4, "OMX.SEC.aac.dec"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "samsung"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "zeroflte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "herolte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "heroqlte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Ldjj;->G0:Z

    const-string v4, "OMX.google.opus.decoder"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "c2.android.opus.decoder"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "OMX.google.vorbis.decoder"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "c2.android.vorbis.decoder"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    :cond_5
    move p3, v3

    goto :goto_3

    :cond_6
    move p3, v2

    :goto_3
    iput-boolean p3, p0, Ldjj;->H0:Z

    iget-object p3, p1, Ltkj;->c:Ljava/lang/String;

    iget v4, p0, Ldjj;->F0:I

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p3, p2, Lerj;->E:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, p2, Lerj;->F:I

    const-string v7, "sample-rate"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v7, p2, Lerj;->r:Ljava/util/List;

    invoke-static {v5, v7}, Lmvg;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v7, "max-input-size"

    invoke-static {v5, v7, v4}, Lmvg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v4, "priority"

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_8

    const/16 v4, 0x17

    if-ne v0, v4, :cond_7

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "ZTE B2017G"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "AXON 7 mini"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    const-string v4, "operating-rate"

    invoke-virtual {v5, v4, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    const/16 p4, 0x1c

    if-gt v0, p4, :cond_9

    iget-object p4, p2, Lerj;->o:Ljava/lang/String;

    const-string v4, "audio/ac4"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p4, "ac4-is-sync"

    invoke-virtual {v5, p4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    if-lt v0, v1, :cond_a

    iget-object p4, p0, Ldjj;->D0:Lphj;

    const/4 v1, 0x4

    invoke-static {v1, p3, v6}, Lkfh;->a(III)Lerj;

    move-result-object p3

    invoke-interface {p4, p3}, Lphj;->a(Lerj;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_a

    const-string p3, "pcm-encoding"

    invoke-virtual {v5, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/16 p3, 0x20

    if-lt v0, p3, :cond_b

    const-string p3, "max-output-channel-count"

    const/16 p4, 0x63

    invoke-virtual {v5, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 p3, 0x23

    if-lt v0, p3, :cond_c

    iget p3, p0, Ldjj;->O0:I

    neg-int p3, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const-string p4, "importance"

    invoke-virtual {v5, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object p3, p1, Ltkj;->b:Ljava/lang/String;

    const-string p4, "audio/raw"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    iget-object p3, p2, Lerj;->o:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    move-object p3, p2

    goto :goto_4

    :cond_d
    move-object p3, v0

    :goto_4
    iput-object p3, p0, Ldjj;->J0:Lerj;

    iget-object p0, p0, Ldjj;->E0:Lnkj;

    invoke-static {p1, v5, p2, v0, p0}, Lokj;->a(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/media/MediaCrypto;Lnkj;)Lokj;

    move-result-object p0

    return-object p0
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjj;->N0:Z

    :try_start_0
    invoke-super {p0}, Lflj;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Ldjj;->M0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Ldjj;->M0:Z

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzl()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Ldjj;->M0:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Ldjj;->M0:Z

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzl()V

    :goto_0
    throw v1
.end method

.method public final r0(Lhlj;Lerj;Z)Ljava/util/List;
    .locals 0

    const/4 p3, 0x0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-static {p1, p2, p3, p0}, Ldjj;->M0(Lhlj;Lerj;ZLphj;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lqlj;->f(Ljava/util/List;Lerj;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzi()V

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, Ldjj;->e0()V

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzh()V

    return-void
.end method

.method public final u0(Lxzi;)V
    .locals 4

    sget v0, Lkfh;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lxzi;->b:Lerj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lerj;->o:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflj;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lxzi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lxzi;->b:Lerj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lerj;->H:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    iget-object p0, p0, Ldjj;->D0:Lphj;

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, p1, v0}, Lphj;->b(II)V

    :cond_0
    return-void
.end method

.method public final v0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Ldjj;->C0:Lchj;

    invoke-virtual {p0, p1}, Lchj;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final w0(Ljava/lang/String;Lokj;JJ)V
    .locals 6

    iget-object v0, p0, Ldjj;->C0:Lchj;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lchj;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ldjj;->C0:Lchj;

    invoke-virtual {p0, p1}, Lchj;->r(Ljava/lang/String;)V

    return-void
.end method

.method public final y0(Lerj;Landroid/media/MediaFormat;)V
    .locals 10

    iget-object v0, p0, Ldjj;->J0:Lerj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lflj;->K0()Lrkj;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Lerj;->G:I

    goto :goto_0

    :cond_2
    sget v0, Lkfh;->a:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkfh;->I(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    new-instance v5, Lgpj;

    invoke-direct {v5}, Lgpj;-><init>()V

    invoke-virtual {v5, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v5, v0}, Lgpj;->x(I)Lgpj;

    iget v0, p1, Lerj;->H:I

    invoke-virtual {v5, v0}, Lgpj;->i(I)Lgpj;

    iget v0, p1, Lerj;->I:I

    invoke-virtual {v5, v0}, Lgpj;->j(I)Lgpj;

    iget-object v0, p1, Lerj;->l:Lhre;

    invoke-virtual {v5, v0}, Lgpj;->w(Lhre;)Lgpj;

    iget-object v0, p1, Lerj;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v0, p1, Lerj;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lgpj;->q(Ljava/lang/String;)Lgpj;

    iget-object v0, p1, Lerj;->c:Ljava/util/List;

    invoke-virtual {v5, v0}, Lgpj;->r(Ljava/util/List;)Lgpj;

    iget-object v0, p1, Lerj;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v0, p1, Lerj;->e:I

    invoke-virtual {v5, v0}, Lgpj;->G(I)Lgpj;

    iget v0, p1, Lerj;->f:I

    invoke-virtual {v5, v0}, Lgpj;->C(I)Lgpj;

    const-string v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lgpj;->b(I)Lgpj;

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v5, p2}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v5}, Lgpj;->K()Lerj;

    move-result-object p2

    iget-boolean v0, p0, Ldjj;->G0:Z

    const/4 v3, 0x6

    if-eqz v0, :cond_6

    iget v0, p2, Lerj;->E:I

    if-ne v0, v3, :cond_6

    iget p1, p1, Lerj;->E:I

    if-ge p1, v3, :cond_6

    new-array v1, p1, [I

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_5

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p1, p2

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Ldjj;->H0:Z

    if-eqz p1, :cond_5

    iget p1, p2, Lerj;->E:I

    const/4 v0, 0x3

    const/4 v5, 0x1

    if-eq p1, v0, :cond_b

    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eq p1, v7, :cond_a

    if-eq p1, v3, :cond_9

    const/4 v8, 0x7

    if-eq p1, v8, :cond_8

    const/16 v9, 0x8

    if-eq p1, v9, :cond_7

    goto :goto_2

    :cond_7
    new-array v1, v9, [I

    aput v2, v1, v2

    aput v4, v1, v5

    aput v5, v1, v4

    aput v8, v1, v0

    aput v7, v1, v6

    aput v3, v1, v7

    aput v0, v1, v3

    aput v6, v1, v8

    goto :goto_2

    :cond_8
    new-array v1, v8, [I

    aput v2, v1, v2

    aput v4, v1, v5

    aput v5, v1, v4

    aput v3, v1, v0

    aput v7, v1, v6

    aput v0, v1, v7

    aput v6, v1, v3

    goto :goto_2

    :cond_9
    new-array v1, v3, [I

    aput v2, v1, v2

    aput v4, v1, v5

    aput v5, v1, v4

    aput v7, v1, v0

    aput v0, v1, v6

    aput v6, v1, v7

    goto :goto_2

    :cond_a
    new-array v1, v7, [I

    aput v2, v1, v2

    aput v4, v1, v5

    aput v5, v1, v4

    aput v0, v1, v0

    aput v6, v1, v6

    goto :goto_2

    :cond_b
    new-array v1, v0, [I

    aput v2, v1, v2

    aput v4, v1, v5

    aput v5, v1, v4

    goto :goto_2

    :goto_3
    :try_start_0
    sget p2, Lkfh;->a:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_c

    invoke-virtual {p0}, Lflj;->W()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, La1j;->F()Lbaj;

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_c
    :goto_4
    iget-object p2, p0, Ldjj;->D0:Lphj;

    invoke-interface {p2, p1, v2, v1}, Lphj;->j(Lerj;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqa; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzqa;->zza:Lerj;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v2, v0}, La1j;->z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0
.end method

.method public final z0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjj;->L0:Z

    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecAudioRenderer"

    return-object p0
.end method

.method public final zzX()Z
    .locals 1

    iget-object v0, p0, Ldjj;->D0:Lphj;

    invoke-interface {v0}, Lphj;->zzy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lflj;->zzX()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final zza()J
    .locals 2

    invoke-virtual {p0}, La1j;->l()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ldjj;->e0()V

    :cond_0
    iget-wide v0, p0, Ldjj;->K0:J

    return-wide v0
.end method

.method public final zzc()Lvwe;
    .locals 0

    iget-object p0, p0, Ldjj;->D0:Lphj;

    invoke-interface {p0}, Lphj;->zzc()Lvwe;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Z
    .locals 2

    iget-boolean v0, p0, Ldjj;->N0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldjj;->N0:Z

    return v0
.end method

.method public final zzl()Lb8j;
    .locals 0

    return-object p0
.end method
