.class public final synthetic Lljf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3i;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lkkf;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lfre;

.field public final synthetic h:Lbze;

.field public final synthetic i:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final synthetic j:Lcom/google/android/gms/ads/internal/zzn;

.field public final synthetic k:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic l:Lcom/google/android/gms/internal/ads/o0;

.field public final synthetic m:Lhmh;

.field public final synthetic n:Lkmh;

.field public final synthetic o:Linh;

.field public final synthetic p:Lsmg;

.field public final synthetic q:Lcom/google/android/gms/internal/ads/zzebe;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Linh;Lsmg;Lcom/google/android/gms/internal/ads/zzebe;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lljf;->b:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lljf;->c:Lkkf;

    move-object v1, p3

    iput-object v1, v0, Lljf;->d:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lljf;->e:Z

    move v1, p5

    iput-boolean v1, v0, Lljf;->f:Z

    move-object v1, p6

    iput-object v1, v0, Lljf;->g:Lfre;

    move-object v1, p7

    iput-object v1, v0, Lljf;->h:Lbze;

    move-object v1, p8

    iput-object v1, v0, Lljf;->i:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p10

    iput-object v1, v0, Lljf;->j:Lcom/google/android/gms/ads/internal/zzn;

    move-object v1, p11

    iput-object v1, v0, Lljf;->k:Lcom/google/android/gms/ads/internal/zza;

    move-object v1, p12

    iput-object v1, v0, Lljf;->l:Lcom/google/android/gms/internal/ads/o0;

    move-object v1, p13

    iput-object v1, v0, Lljf;->m:Lhmh;

    move-object/from16 v1, p14

    iput-object v1, v0, Lljf;->n:Lkmh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lljf;->o:Linh;

    move-object/from16 v1, p16

    iput-object v1, v0, Lljf;->p:Lsmg;

    move-object/from16 v1, p17

    iput-object v1, v0, Lljf;->q:Lcom/google/android/gms/internal/ads/zzebe;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lljf;->c:Lkkf;

    iget-object v3, v0, Lljf;->d:Ljava/lang/String;

    iget-boolean v4, v0, Lljf;->e:Z

    iget-object v15, v0, Lljf;->l:Lcom/google/android/gms/internal/ads/o0;

    iget-boolean v14, v0, Lljf;->f:Z

    iget-object v6, v0, Lljf;->g:Lfre;

    iget-object v13, v0, Lljf;->m:Lhmh;

    iget-object v7, v0, Lljf;->h:Lbze;

    iget-object v10, v0, Lljf;->j:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v12, v0, Lljf;->n:Lkmh;

    iget-object v1, v0, Lljf;->b:Landroid/content/Context;

    iget-object v8, v0, Lljf;->i:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v0, Lljf;->k:Lcom/google/android/gms/ads/internal/zza;

    iget-object v9, v0, Lljf;->o:Linh;

    iget-object v5, v0, Lljf;->p:Lsmg;

    iget-object v0, v0, Lljf;->q:Lcom/google/android/gms/internal/ads/zzebe;

    const/16 v16, 0x108

    :try_start_0
    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v16, v9

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcfd;

    sget v17, Lcom/google/android/gms/internal/ads/c4;->d0:I

    move-object/from16 v17, v5

    new-instance v5, Ljkf;

    invoke-direct {v5, v1}, Ljkf;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/c4;

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v20, v1

    move-object v1, v5

    move-object/from16 v21, v17

    move v5, v14

    move-object/from16 v22, v9

    move-object/from16 v9, v18

    move-object/from16 v17, v12

    move-object v12, v15

    move/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/c4;-><init>(Ljkf;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Linh;)V

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcfd;-><init>(Lejf;Lsmg;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v0

    move-object/from16 v4, v19

    move/from16 v3, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc(Lejf;Lcom/google/android/gms/internal/ads/o0;ZLcom/google/android/gms/internal/ads/zzebe;)Lijf;

    move-result-object v0

    invoke-interface {v1, v0}, Lejf;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Ldjf;

    invoke-direct {v0, v1}, Ldjf;-><init>(Lejf;)V

    invoke-interface {v1, v0}, Lejf;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method
