.class public final Lvxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final b:Lim5;

.field public final c:Lhmh;

.field public final d:Lejf;

.field public final e:Lenh;

.field public final f:Lq3f;

.field public final g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzebe;

.field public final i:Lsmg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lim5;Lhmh;Lejf;Lenh;ZLq3f;Lcom/google/android/gms/internal/ads/zzebe;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvxg;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lvxg;->b:Lim5;

    iput-object p3, p0, Lvxg;->c:Lhmh;

    iput-object p4, p0, Lvxg;->d:Lejf;

    iput-object p5, p0, Lvxg;->e:Lenh;

    iput-boolean p6, p0, Lvxg;->g:Z

    iput-object p7, p0, Lvxg;->f:Lq3f;

    iput-object p8, p0, Lvxg;->h:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p9, p0, Lvxg;->i:Lsmg;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lvxg;->b:Lim5;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrf;

    iget-object v6, v0, Lvxg;->d:Lejf;

    const/4 v15, 0x1

    invoke-interface {v6, v15}, Lejf;->zzaq(Z)V

    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v2, v0, Lvxg;->g:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lvxg;->f:Lq3f;

    invoke-virtual {v3, v15}, Lq3f;->e(Z)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v0, Lvxg;->f:Lq3f;

    invoke-virtual {v3}, Lq3f;->d()Z

    move-result v3

    :goto_1
    move/from16 v19, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_2

    iget-object v2, v0, Lvxg;->f:Lq3f;

    invoke-virtual {v2}, Lq3f;->a()F

    move-result v2

    :goto_3
    move/from16 v20, v2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    iget-object v2, v0, Lvxg;->c:Lhmh;

    iget-boolean v3, v2, Lhmh;->O:Z

    const/16 v24, 0x0

    const/16 v18, 0x1

    const/16 v21, -0x1

    move-object/from16 v16, v10

    move/from16 v22, p1

    move/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lwzf;->zzf()V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lfrf;->i()Lvag;

    move-result-object v4

    iget v1, v2, Lhmh;->Q:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, v0, Lvxg;->e:Lenh;

    iget-object v3, v3, Lenh;->j:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    if-ne v3, v15, :cond_5

    const/4 v1, 0x7

    :goto_5
    move v7, v1

    goto :goto_6

    :cond_5
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    const/4 v1, 0x6

    goto :goto_5

    :cond_6
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Error setting app open orientation; no targeting orientation available."

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    iget-object v8, v0, Lvxg;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v9, v2, Lhmh;->B:Ljava/lang/String;

    iget-object v1, v2, Lhmh;->s:Llmh;

    iget-object v11, v1, Llmh;->b:Ljava/lang/String;

    iget-object v12, v1, Llmh;->a:Ljava/lang/String;

    iget-object v1, v0, Lvxg;->e:Lenh;

    invoke-virtual {v2}, Lhmh;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lvxg;->h:Lcom/google/android/gms/internal/ads/zzebe;

    :goto_7
    move-object/from16 v16, v2

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :goto_8
    iget-object v13, v1, Lenh;->f:Ljava/lang/String;

    invoke-interface {v6}, Lchf;->zzr()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v14

    move-object/from16 v25, v14

    move-object/from16 v14, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lejf;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwzf;Lcom/google/android/gms/internal/ads/zzbsr;Ljava/lang/String;)V

    iget-object v0, v0, Lvxg;->i:Lsmg;

    move-object/from16 v1, p2

    move-object/from16 v3, v25

    const/4 v2, 0x1

    invoke-static {v1, v3, v2, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLsmg;)V

    return-void
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Lvxg;->c:Lhmh;

    return-object p0
.end method
