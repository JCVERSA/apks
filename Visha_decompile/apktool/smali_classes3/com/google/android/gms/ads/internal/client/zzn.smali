.class public final Lcom/google/android/gms/ads/internal/client/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Ljava/util/List;

.field public c:Z

.field public d:I

.field public final e:Landroid/os/Bundle;

.field public final f:Landroid/os/Bundle;

.field public final g:Ljava/util/List;

.field public h:I

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public k:I

.field public final l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->a:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->d:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->e:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->f:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->g:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->j:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->k:I

    sget-object v0, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->DEFAULT:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->l:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->m:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 31

    move-object/from16 v0, p0

    new-instance v30, Lcom/google/android/gms/ads/internal/client/zzm;

    move-object/from16 v1, v30

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzn;->e:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzn;->a:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->f:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/client/zzn;->b:Ljava/util/List;

    iget-boolean v8, v0, Lcom/google/android/gms/ads/internal/client/zzn;->c:Z

    iget v9, v0, Lcom/google/android/gms/ads/internal/client/zzn;->d:I

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->h:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->i:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->j:Ljava/util/List;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->l:I

    move/from16 v27, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->g:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->k:I

    move/from16 v25, v2

    const/16 v26, 0x0

    iget-wide v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->m:J

    move-wide/from16 v28, v2

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    return-object v30
.end method

.method public final zzb(Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->k:I

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->c:Z

    return-object p0
.end method

.method public final zze(Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->b:Ljava/util/List;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->m:J

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->d:I

    return-object p0
.end method

.method public final zzi(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->h:I

    return-object p0
.end method
