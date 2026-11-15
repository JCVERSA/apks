.class public final Lc6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Leeh;

.field public final b:Lenh;

.field public final c:Landroid/content/Context;

.field public final d:Lqef;


# direct methods
.method public constructor <init>(Lk8h;Lenh;Landroid/content/Context;Lqef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6h;->a:Leeh;

    iput-object p2, p0, Lc6h;->b:Lenh;

    iput-object p3, p0, Lc6h;->c:Landroid/content/Context;

    iput-object p4, p0, Lc6h;->d:Lqef;

    return-void
.end method

.method public static synthetic a(Lc6h;Loeh;)Ld6h;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lc6h;->b:Lenh;

    iget-object v3, v1, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    iget-boolean v8, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move-object v10, v7

    move v11, v8

    goto :goto_2

    :cond_0
    move-object v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v12, v2

    if-ge v7, v12, :cond_5

    aget-object v12, v2, v7

    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    iget-object v10, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v7, v0, Lc6h;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v0, v0, Lc6h;->d:Lqef;

    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move v0, v7

    move v7, v4

    goto :goto_3

    :cond_6
    move-object v12, v4

    move v7, v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_f

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    array-length v15, v2

    const-string v5, "|"

    if-ge v13, v15, :cond_d

    aget-object v15, v2, v13

    iget-boolean v6, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v6, :cond_7

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    cmpl-float v5, v7, v8

    if-eqz v5, :cond_9

    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_5

    :cond_9
    move v5, v6

    :cond_a
    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_c

    cmpl-float v5, v7, v8

    if-eqz v5, :cond_b

    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_6

    :cond_b
    move v5, v6

    :cond_c
    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_d
    if-eqz v14, :cond_f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    const-string v5, "320x50"

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v1, v1, Lenh;->q:Z

    new-instance v13, Ld6h;

    move-object v2, v13

    move-object v4, v10

    move v5, v11

    move v8, v9

    move v9, v0

    move-object v10, v12

    move v11, v1

    invoke-direct/range {v2 .. v11}, Ld6h;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v13
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public final zzb()Lim5;
    .locals 2

    iget-object v0, p0, Lc6h;->a:Leeh;

    invoke-interface {v0}, Leeh;->zzb()Lim5;

    move-result-object v0

    new-instance v1, Lb6h;

    invoke-direct {v1, p0}, Lb6h;-><init>(Lc6h;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
