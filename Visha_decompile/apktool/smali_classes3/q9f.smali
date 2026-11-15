.class public final Lq9f;
.super Laaf;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Object;

.field public final l:Lejf;

.field public final m:Landroid/app/Activity;

.field public n:Lkkf;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/LinearLayout;

.field public final q:Lbaf;

.field public r:Landroid/widget/PopupWindow;

.field public s:Landroid/widget/RelativeLayout;

.field public t:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls71;->f([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lejf;Lbaf;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Laaf;-><init>(Lejf;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lq9f;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq9f;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lq9f;->e:I

    iput v0, p0, Lq9f;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lq9f;->g:I

    iput v0, p0, Lq9f;->h:I

    iput v0, p0, Lq9f;->i:I

    iput v1, p0, Lq9f;->j:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq9f;->k:Ljava/lang/Object;

    iput-object p1, p0, Lq9f;->l:Lejf;

    invoke-interface {p1}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lq9f;->m:Landroid/app/Activity;

    iput-object p2, p0, Lq9f;->q:Lbaf;

    return-void
.end method

.method public static synthetic h(Lq9f;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lq9f;->n(Z)V

    return-void
.end method


# virtual methods
.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lq9f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq9f;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    sget-object v1, Lcye;->Ua:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lzef;->f:Lg8i;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbru;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbru;-><init>(Lq9f;Z)V

    invoke-interface {v1, v2}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lq9f;->n(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lq9f;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lq9f;->m:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_0
    iget-object v4, v1, Lq9f;->l:Lejf;

    invoke-interface {v4}, Lejf;->zzO()Lkkf;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v4}, Lejf;->zzO()Lkkf;

    move-result-object v5

    invoke-virtual {v5}, Lkkf;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2
    invoke-interface {v4}, Lejf;->zzaF()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_3
    const-string v5, "width"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "width"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lq9f;->j:I

    :cond_4
    const-string v5, "height"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "height"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lq9f;->g:I

    :cond_5
    const-string v5, "offsetX"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "offsetX"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lq9f;->h:I

    :cond_6
    const-string v5, "offsetY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v5, "offsetY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lq9f;->i:I

    :cond_7
    const-string v5, "allowOffscreen"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "allowOffscreen"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lq9f;->d:Z

    :cond_8
    const-string v5, "customClosePosition"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iput-object v0, v1, Lq9f;->c:Ljava/lang/String;

    :cond_9
    iget v0, v1, Lq9f;->j:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lq9f;->g:I

    if-ltz v0, :cond_2b

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    goto/16 :goto_f

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v5, v7

    const/4 v9, 0x1

    aget v5, v5, v9

    iget v10, v1, Lq9f;->j:I

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v11, 0x32

    const/16 v16, 0x0

    if-lt v10, v11, :cond_1c

    if-le v10, v8, :cond_b

    goto/16 :goto_9

    :cond_b
    iget v7, v1, Lq9f;->g:I

    if-lt v7, v11, :cond_1b

    if-le v7, v5, :cond_c

    goto/16 :goto_8

    :cond_c
    if-ne v7, v5, :cond_d

    if-ne v10, v8, :cond_d

    const-string v5, "Cannot resize to a full-screen ad."

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    iget-boolean v5, v1, Lq9f;->d:Z

    if-eqz v5, :cond_16

    iget-object v5, v1, Lq9f;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "top-center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v9

    goto :goto_1

    :sswitch_1
    const-string v11, "bottom-center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v15

    goto :goto_1

    :sswitch_2
    const-string v11, "bottom-right"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v14

    goto :goto_1

    :sswitch_3
    const-string v11, "bottom-left"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v13

    goto :goto_1

    :sswitch_4
    const-string v11, "top-left"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_5
    const-string v11, "center"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v12

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_14

    if-eq v5, v9, :cond_13

    if-eq v5, v12, :cond_12

    if-eq v5, v13, :cond_11

    if-eq v5, v15, :cond_10

    if-eq v5, v14, :cond_f

    :try_start_1
    iget v5, v1, Lq9f;->e:I

    iget v7, v1, Lq9f;->h:I

    add-int/2addr v5, v7

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x32

    iget v7, v1, Lq9f;->f:I

    :goto_2
    iget v10, v1, Lq9f;->i:I

    add-int/2addr v7, v10

    goto :goto_4

    :cond_f
    iget v5, v1, Lq9f;->e:I

    iget v11, v1, Lq9f;->h:I

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x32

    iget v10, v1, Lq9f;->f:I

    :goto_3
    iget v11, v1, Lq9f;->i:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    add-int/lit8 v7, v10, -0x32

    goto :goto_4

    :cond_10
    iget v5, v1, Lq9f;->e:I

    iget v11, v1, Lq9f;->h:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v10, v1, Lq9f;->f:I

    goto :goto_3

    :cond_11
    iget v5, v1, Lq9f;->e:I

    iget v10, v1, Lq9f;->h:I

    add-int/2addr v5, v10

    iget v10, v1, Lq9f;->f:I

    goto :goto_3

    :cond_12
    iget v5, v1, Lq9f;->e:I

    iget v11, v1, Lq9f;->h:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v11

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v10, v1, Lq9f;->f:I

    iget v11, v1, Lq9f;->i:I

    add-int/2addr v10, v11

    shr-int/2addr v7, v9

    add-int/2addr v10, v7

    add-int/lit8 v7, v10, -0x19

    goto :goto_4

    :cond_13
    iget v5, v1, Lq9f;->e:I

    iget v7, v1, Lq9f;->h:I

    shr-int/2addr v10, v9

    add-int/2addr v5, v7

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x19

    iget v7, v1, Lq9f;->f:I

    goto :goto_2

    :cond_14
    iget v5, v1, Lq9f;->e:I

    iget v7, v1, Lq9f;->h:I

    add-int/2addr v5, v7

    iget v7, v1, Lq9f;->f:I

    goto :goto_2

    :goto_4
    if-ltz v5, :cond_1d

    const/16 v10, 0x32

    add-int/2addr v5, v10

    if-gt v5, v8, :cond_1d

    const/4 v5, 0x0

    aget v8, v6, v5

    if-lt v7, v8, :cond_1d

    add-int/2addr v7, v10

    aget v5, v6, v9

    if-le v7, v5, :cond_15

    goto :goto_a

    :cond_15
    iget v5, v1, Lq9f;->e:I

    iget v6, v1, Lq9f;->h:I

    add-int/2addr v5, v6

    iget v6, v1, Lq9f;->f:I

    iget v7, v1, Lq9f;->i:I

    add-int/2addr v6, v7

    filled-new-array {v5, v6}, [I

    move-result-object v16

    goto :goto_a

    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v5, v5, v7

    iget v7, v1, Lq9f;->e:I

    iget v8, v1, Lq9f;->h:I

    add-int/2addr v7, v8

    iget v8, v1, Lq9f;->f:I

    iget v10, v1, Lq9f;->i:I

    add-int/2addr v8, v10

    if-gez v7, :cond_17

    const/4 v5, 0x0

    :goto_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_17
    iget v10, v1, Lq9f;->j:I

    add-int v11, v7, v10

    if-le v11, v5, :cond_18

    sub-int/2addr v5, v10

    goto :goto_5

    :cond_18
    move v5, v7

    goto :goto_5

    :goto_6
    aget v10, v6, v7

    if-ge v8, v10, :cond_19

    move v8, v10

    goto :goto_7

    :cond_19
    iget v7, v1, Lq9f;->g:I

    add-int v10, v8, v7

    aget v6, v6, v9

    if-le v10, v6, :cond_1a

    sub-int v8, v6, v7

    :cond_1a
    :goto_7
    filled-new-array {v5, v8}, [I

    move-result-object v16

    goto :goto_a

    :cond_1b
    :goto_8
    const-string v5, "Height is too small or too large."

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto :goto_a

    :cond_1c
    :goto_9
    const-string v5, "Width is too small or too large."

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_1d
    :goto_a
    if-nez v16, :cond_1e

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v5, v1, Lq9f;->j:I

    invoke-static {v3, v5}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v6, v1, Lq9f;->g:I

    invoke-static {v3, v6}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v6

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_29

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_29

    check-cast v7, Landroid/view/ViewGroup;

    move-object v8, v4

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lq9f;->r:Landroid/widget/PopupWindow;

    if-nez v8, :cond_1f

    iput-object v7, v1, Lq9f;->t:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lq9f;->o:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v4}, Lejf;->zzO()Lkkf;

    move-result-object v7

    iput-object v7, v1, Lq9f;->n:Lkkf;

    iget-object v7, v1, Lq9f;->t:Landroid/view/ViewGroup;

    iget-object v8, v1, Lq9f;->o:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_1f
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_b
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v5, v6, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lq9f;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, v1, Lq9f;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v7, v1, Lq9f;->r:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lq9f;->d:Z

    xor-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v7, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    check-cast v4, Landroid/view/View;

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lq9f;->p:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/16 v7, 0x32

    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v4, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, v1, Lq9f;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v10, :sswitch_data_1

    goto :goto_c

    :sswitch_6
    const-string v10, "top-center"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v9

    goto :goto_d

    :sswitch_7
    const-string v10, "bottom-center"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v15

    goto :goto_d

    :sswitch_8
    const-string v10, "bottom-right"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v14

    goto :goto_d

    :sswitch_9
    const-string v10, "bottom-left"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v13

    goto :goto_d

    :sswitch_a
    const-string v10, "top-left"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v11, 0x0

    goto :goto_d

    :sswitch_b
    const-string v10, "center"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v11, v12

    goto :goto_d

    :cond_20
    :goto_c
    move v11, v8

    :goto_d
    const/16 v7, 0x9

    const/16 v8, 0xa

    if-eqz v11, :cond_26

    const/16 v10, 0xe

    if-eq v11, v9, :cond_25

    if-eq v11, v12, :cond_24

    const/16 v12, 0xc

    if-eq v11, v13, :cond_23

    if-eq v11, v15, :cond_22

    const/16 v7, 0xb

    if-eq v11, v14, :cond_21

    :try_start_2
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_21
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_22
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_23
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_24
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_25
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_26
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_e
    iget-object v7, v1, Lq9f;->p:Landroid/widget/LinearLayout;

    new-instance v8, Lp9f;

    invoke-direct {v8, v1}, Lp9f;-><init>(Lq9f;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lq9f;->p:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lq9f;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, Lq9f;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/4 v7, 0x0

    aget v8, v16, v7

    invoke-static {v3, v8}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    aget v10, v16, v9

    invoke-static {v3, v10}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v4, v0, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v16, v7

    aget v3, v16, v9

    iget-object v4, v1, Lq9f;->q:Lbaf;

    if-eqz v4, :cond_27

    iget v7, v1, Lq9f;->j:I

    iget v8, v1, Lq9f;->g:I

    invoke-interface {v4, v0, v3, v7, v8}, Lbaf;->a(IIII)V

    :cond_27
    iget-object v0, v1, Lq9f;->l:Lejf;

    invoke-static {v5, v6}, Lkkf;->b(II)Lkkf;

    move-result-object v3

    invoke-interface {v0, v3}, Lejf;->zzaj(Lkkf;)V

    const/4 v0, 0x0

    aget v3, v16, v0

    aget v4, v16, v9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v5, v1, Lq9f;->m:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v5

    aget v0, v5, v0

    sub-int/2addr v4, v0

    iget v0, v1, Lq9f;->j:I

    iget v5, v1, Lq9f;->g:I

    invoke-virtual {v1, v3, v4, v0, v5}, Laaf;->f(IIII)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Laaf;->g(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show popup window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lq9f;->s:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lq9f;->l:Lejf;

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lq9f;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v4, v1, Lq9f;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lq9f;->t:Landroid/view/ViewGroup;

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lq9f;->n:Lkkf;

    invoke-interface {v3, v0}, Lejf;->zzaj(Lkkf;)V

    :cond_28
    monitor-exit v2

    return-void

    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2a
    :goto_f
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Laaf;->c(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :goto_10
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final k(IIZ)V
    .locals 0

    iget-object p3, p0, Lq9f;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lq9f;->e:I

    iput p2, p0, Lq9f;->f:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l(II)V
    .locals 0

    iput p1, p0, Lq9f;->e:I

    iput p2, p0, Lq9f;->f:I

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lq9f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lq9f;->r:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(Z)V
    .locals 3

    sget-object v0, Lcye;->Va:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9f;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lq9f;->l:Lejf;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lq9f;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq9f;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lq9f;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lq9f;->l:Lejf;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    sget-object v0, Lcye;->Wa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq9f;->l:Lejf;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lq9f;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lq9f;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lcye;->Xa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lq9f;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lq9f;->l:Lejf;

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lq9f;->n:Lkkf;

    invoke-interface {v1, v0}, Lejf;->zzaj(Lkkf;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Unable to add webview back to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lq9f;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lq9f;->l:Lejf;

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lq9f;->n:Lkkf;

    invoke-interface {v1, v0}, Lejf;->zzaj(Lkkf;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "default"

    invoke-virtual {p0, p1}, Laaf;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lq9f;->q:Lbaf;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lbaf;->zzb()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lq9f;->r:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lq9f;->s:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lq9f;->t:Landroid/view/ViewGroup;

    iput-object p1, p0, Lq9f;->p:Landroid/widget/LinearLayout;

    return-void
.end method
