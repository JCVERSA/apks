.class final Lcom/android/billingclient/api/zzbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field private final zzb:Lcom/android/billingclient/api/BillingClientStateListener;

.field private final zzc:Ld6f;

.field private final zzd:Ld6f;

.field private final zze:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;ILcom/android/billingclient/api/zzcm;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzr(Lcom/android/billingclient/api/BillingClientImpl;)Ls8f;

    move-result-object p4

    invoke-static {p4}, Ld6f;->c(Ls8f;)Ld6f;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/zzbz;->zzc:Ld6f;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzr(Lcom/android/billingclient/api/BillingClientImpl;)Ls8f;

    move-result-object p1

    invoke-static {p1}, Ld6f;->c(Ls8f;)Ld6f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzbz;->zzd:Ld6f;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    iput p3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    return-void
.end method

.method public static synthetic zza(Lcom/android/billingclient/api/zzbz;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v8, 0x0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    monitor-exit v1

    :goto_0
    move-object v1, v8

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :cond_0
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accountName"

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzC(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzD(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzt(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v1, v2, v5, v11, v12}, Lcom/google/android/gms/internal/play_billing/a;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    move-object v1, v8

    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzq(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzar;

    move-result-object v11

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_3

    iget-object v0, v7, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    iget v1, v7, Lcom/android/billingclient/api/zzbz;->zze:I

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    invoke-direct {v7, v3}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    const-string v5, "inapp"

    const/16 v12, 0x19

    invoke-interface {v11, v12, v0, v5}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    if-nez v5, :cond_8

    iget-object v13, v7, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zzb(Landroid/content/Context;)J

    move-result-wide v14

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zzc(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/billingclient/api/zzet;->zza(Landroid/content/Context;)D

    move-result-wide v16

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/billingclient/api/zzet;->zzd(Landroid/content/Context;)J

    move-result-wide v5

    move v2, v4

    move-wide v3, v0

    move-object v0, v8

    :goto_3
    int-to-long v8, v2

    cmp-long v8, v8, v14

    if-gtz v8, :cond_7

    :try_start_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :try_start_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callingPackage"

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v19
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v1, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzC(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzD(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzt(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    move-result-object v19
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-wide/from16 v20, v3

    move v4, v2

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v9, v1, v12, v2, v3}, Lcom/google/android/gms/internal/play_billing/a;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v1, :cond_4

    :try_start_7
    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "enablePendingPurchases"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :goto_4
    move-wide/from16 v25, v14

    move-wide/from16 v22, v20

    const/16 v1, 0x19

    move/from16 v20, v4

    move-object/from16 v21, v13

    :goto_5
    move-wide v13, v5

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move v2, v4

    goto/16 :goto_b

    :cond_4
    :goto_6
    :try_start_8
    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v1, :cond_5

    :try_start_9
    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "enablePendingPurchaseForSubscriptions"
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v12, 0x1

    :try_start_a
    invoke-virtual {v9, v1, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x1

    :goto_7
    :try_start_b
    invoke-static {v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/android/billingclient/api/zzcg;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/16 v18, 0x0

    move-object v1, v2

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v24, v3

    move-wide/from16 v22, v20

    move-object/from16 v3, p0

    move/from16 v20, v4

    move-object v4, v0

    move-object/from16 v21, v13

    move-wide/from16 v25, v14

    move-wide v13, v5

    move/from16 v5, v20

    move-object/from16 v6, v18

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzcg;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/zzbz;Ljava/lang/Boolean;ILcom/android/billingclient/api/zzcm;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v0, v24

    const/16 v1, 0x19

    :try_start_d
    invoke-interface {v11, v1, v0, v9, v12}, Lcom/google/android/gms/internal/play_billing/zzar;->zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzak;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :goto_8
    const/4 v1, 0x0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_9
    move/from16 v2, v20

    goto/16 :goto_b

    :catch_5
    move-exception v0

    const/16 v1, 0x19

    goto :goto_a

    :catch_6
    move-exception v0

    move/from16 v20, v4

    goto :goto_9

    :catch_7
    move-exception v0

    move/from16 v20, v2

    move-wide/from16 v22, v3

    move-object/from16 v21, v13

    move-wide/from16 v25, v14

    const/16 v1, 0x19

    goto :goto_5

    :catch_8
    move-exception v0

    move/from16 v20, v2

    goto :goto_b

    :catch_9
    move-exception v0

    move/from16 v20, v2

    move-wide/from16 v22, v3

    move v1, v12

    move-object/from16 v21, v13

    move-wide/from16 v25, v14

    goto :goto_5

    :goto_a
    if-eqz v8, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transient error during initialize(), retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v22

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BillingClient"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_a

    long-to-double v2, v3

    mul-double v2, v2, v16

    long-to-double v4, v13

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-long v3, v2

    move/from16 v2, v20

    add-int/lit8 v2, v2, 0x1

    move v12, v1

    move-wide v5, v13

    move-object/from16 v13, v21

    move-wide/from16 v14, v25

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move/from16 v2, v20

    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-direct {v7, v1, v10, v2}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto :goto_8

    :cond_6
    move/from16 v2, v20

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_b
    invoke-direct {v7, v0, v10, v2}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto :goto_8

    :cond_7
    :goto_c
    invoke-direct {v7, v0, v10, v2}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto :goto_8

    :cond_8
    const/16 v5, 0x1d

    move v8, v3

    move v6, v5

    :goto_d
    if-lt v6, v3, :cond_b

    :try_start_f
    const-string v8, "BillingClient"

    const-string/jumbo v9, "trying subs apiVersion: "

    invoke-static {v6, v9}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_9

    const-string/jumbo v8, "subs"

    invoke-interface {v11, v6, v0, v8}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_e

    :catch_c
    move-exception v0

    goto/16 :goto_17

    :cond_9
    const-string/jumbo v8, "subs"

    invoke-interface {v11, v6, v0, v8, v1}, Lcom/google/android/gms/internal/play_billing/zzar;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v8

    :goto_e
    if-nez v8, :cond_a

    const-string v9, "BillingClient"

    const-string v12, "highestLevelSupportedForSubs: "

    invoke-static {v6, v12}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :cond_b
    move v6, v4

    :goto_f
    iget-object v9, v7, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v12, 0x5

    if-lt v6, v12, :cond_c

    const/4 v12, 0x1

    goto :goto_10

    :cond_c
    move v12, v4

    :goto_10
    invoke-static {v9, v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzaj(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-lt v6, v3, :cond_d

    const/4 v12, 0x1

    goto :goto_11

    :cond_d
    move v12, v4

    :goto_11
    invoke-static {v9, v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzak(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-ge v6, v3, :cond_e

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzi:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v6, "BillingClient"

    const-string v12, "In-app billing API does not support subscription on this device."

    invoke-static {v6, v12}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_12
    if-lt v5, v3, :cond_11

    const-string v6, "BillingClient"

    const-string/jumbo v8, "trying inapp apiVersion: "

    invoke-static {v5, v8}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_f

    const-string v6, "inapp"

    invoke-interface {v11, v5, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    :goto_13
    move v8, v6

    goto :goto_14

    :cond_f
    const-string v6, "inapp"

    invoke-interface {v11, v5, v0, v6, v1}, Lcom/google/android/gms/internal/play_billing/zzar;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    goto :goto_13

    :goto_14
    if-nez v8, :cond_10

    invoke-static {v9, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzah(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const-string v0, "BillingClient"

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    :cond_11
    :goto_15
    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzat(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ge v0, v3, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v1, "BillingClient"

    const-string v2, "In-app billing API version 3 is not supported on this device."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_16

    :cond_12
    move-object v3, v2

    :goto_16
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzav(Lcom/android/billingclient/api/BillingClientImpl;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    if-nez v8, :cond_13

    invoke-direct {v7, v10, v4}, Lcom/android/billingclient/api/zzbz;->zzj(ZI)V

    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_8

    :cond_13
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzb:Lcom/android/billingclient/api/BillingResult;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_8

    :goto_17
    invoke-direct {v7, v0, v10}, Lcom/android/billingclient/api/zzbz;->zzm(Ljava/lang/Exception;Z)V

    goto/16 :goto_8

    :catch_d
    move-exception v0

    invoke-direct {v7, v0, v10}, Lcom/android/billingclient/api/zzbz;->zzm(Ljava/lang/Exception;Z)V

    goto/16 :goto_8

    :goto_18
    return-object v1

    :catchall_1
    move-exception v0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    :goto_19
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0
.end method

.method public static synthetic zzb(Lcom/android/billingclient/api/zzbz;)V
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    invoke-direct {p0, v2}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic zzd(Lcom/android/billingclient/api/zzbz;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbz;->zzj(ZI)V

    return-void
.end method

.method public static bridge synthetic zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzh(Z)Ljava/lang/Long;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzc:Ld6f;

    invoke-virtual {p0}, Ld6f;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ld6f;->f()Ld6f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1}, Ld6f;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-object v0

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzd:Ld6f;

    invoke-virtual {p0}, Ld6f;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ld6f;->f()Ld6f;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1}, Ld6f;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit p1

    goto :goto_3

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    const-string p1, "BillingClient"

    const-string v1, "Exception getting connection establishment duration."

    invoke-static {p1, v1, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method private final zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lv5j;->z()Lp5j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lp5j;->o(I)Lp5j;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp5j;->k(Ljava/lang/String;)Lp5j;

    invoke-virtual {v0, p2}, Lp5j;->n(Lcom/google/android/gms/internal/play_billing/zzjs;)Lp5j;

    invoke-virtual {v0, p5}, Lp5j;->l(I)Lp5j;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lp5j;->j(Ljava/lang/String;)Lp5j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p4}, Lcom/android/billingclient/api/zzbz;->zzh(Z)Ljava/lang/Long;

    move-result-object p1

    if-eqz p4, :cond_3

    invoke-static {}, Lp9j;->y()Ll9j;

    move-result-object p2

    iget p3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez p3, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p2, p4}, Ll9j;->j(Z)Ll9j;

    invoke-virtual {p2, p3}, Ll9j;->k(I)Ll9j;

    invoke-virtual {p2, p5}, Ll9j;->m(I)Ll9j;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ll9j;->l(J)Ll9j;

    :cond_2
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {}, Lf5j;->B()Lc5j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc5j;->k(Lp5j;)Lc5j;

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Lc5j;->o(I)Lc5j;

    invoke-virtual {p1, p2}, Lc5j;->n(Ll9j;)Lc5j;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lf5j;

    invoke-static {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaq(Lcom/android/billingclient/api/BillingClientImpl;Lf5j;)V

    return-void

    :cond_3
    invoke-static {}, La9j;->y()Lw8j;

    move-result-object p2

    invoke-virtual {p2, v0}, Lw8j;->j(Lp5j;)Lw8j;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lw8j;->k(J)Lw8j;

    :cond_4
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object p0

    invoke-virtual {p2}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, La9j;

    invoke-interface {p0, p1}, Lcom/android/billingclient/api/zzdd;->zzm(La9j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string p1, "BillingClient"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzj(ZI)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzh(Z)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Ln5j;->z()Lj5j;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lj5j;->n(I)Lj5j;

    invoke-static {}, Lp9j;->y()Ll9j;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Ll9j;->j(Z)Ll9j;

    invoke-virtual {v2, v3}, Ll9j;->k(I)Ll9j;

    invoke-virtual {v2, p2}, Ll9j;->m(I)Ll9j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ll9j;->l(J)Ll9j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-virtual {p1, v2}, Lj5j;->m(Ll9j;)Lj5j;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Ln5j;

    invoke-static {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzar(Lcom/android/billingclient/api/BillingClientImpl;Ln5j;)V

    return-void

    :cond_2
    invoke-static {}, La9j;->y()Lw8j;

    move-result-object p1

    invoke-static {}, Lv5j;->z()Lp5j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lp5j;->o(I)Lp5j;

    invoke-virtual {v2, p2}, Lp5j;->l(I)Lp5j;

    invoke-virtual {p1, v2}, Lw8j;->j(Lp5j;)Lw8j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lw8j;->k(J)Lw8j;

    :cond_3
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object p0

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, La9j;

    invoke-interface {p0, p1}, Lcom/android/billingclient/api/zzdd;->zzm(La9j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "BillingClient"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzk(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {p0, p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Exception while calling onBillingSetupFinished."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final zzl(Ljava/lang/Exception;ZI)V
    .locals 7

    const-string v0, "BillingClient"

    const-string v1, "Exception while invoking initialize AIDL method"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbB:Lcom/google/android/gms/internal/play_billing/zzjs;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbD:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbC:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbA:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzm(Ljava/lang/Exception;Z)V
    .locals 7

    const-string v0, "BillingClient"

    const-string v1, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaM:Lcom/google/android/gms/internal/play_billing/zzjs;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaL:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaN:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzP:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzP:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    const-string p1, "BillingClient"

    const-string v0, "Billing service died."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    invoke-static {}, Lf5j;->B()Lc5j;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lc5j;->o(I)Lc5j;

    invoke-static {}, Lv5j;->z()Lp5j;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbf:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v2, v3}, Lp5j;->n(Lcom/google/android/gms/internal/play_billing/zzjs;)Lp5j;

    invoke-virtual {v1, v2}, Lc5j;->k(Lp5j;)Lc5j;

    invoke-static {}, Lp9j;->y()Ll9j;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    invoke-virtual {v2, v4}, Ll9j;->j(Z)Ll9j;

    invoke-virtual {v2, v3}, Ll9j;->k(I)Ll9j;

    invoke-virtual {v1, v2}, Lc5j;->n(Ll9j;)Lc5j;

    invoke-virtual {v1}, Lfhi;->f()Lkli;

    move-result-object v1

    check-cast v1, Lf5j;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zza(Lf5j;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    invoke-static {}, Lb6j;->z()Lb6j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zzi(Lb6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaw(Lcom/android/billingclient/api/BillingClientImpl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {p0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Exception while calling onBillingServiceDisconnected."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    :try_start_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzaq;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzai(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzar;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/billingclient/api/zzbx;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzbx;-><init>(Lcom/android/billingclient/api/zzbz;)V

    new-instance v4, Lcom/android/billingclient/api/zzby;

    invoke-direct {v4, p0}, Lcom/android/billingclient/api/zzby;-><init>(Lcom/android/billingclient/api/zzbz;)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzf(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const-wide/16 v2, 0x7530

    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {p1, v1, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    invoke-static {}, Lf5j;->B()Lc5j;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lc5j;->o(I)Lc5j;

    invoke-static {}, Lv5j;->z()Lp5j;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbe:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v2, v3}, Lp5j;->n(Lcom/google/android/gms/internal/play_billing/zzjs;)Lp5j;

    invoke-virtual {v1, v2}, Lc5j;->k(Lp5j;)Lc5j;

    invoke-static {}, Lp9j;->y()Ll9j;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    invoke-virtual {v2, v4}, Ll9j;->j(Z)Ll9j;

    invoke-virtual {v2, v3}, Ll9j;->k(I)Ll9j;

    invoke-virtual {v1, v2}, Lc5j;->n(Ll9j;)Lc5j;

    invoke-virtual {v1}, Lfhi;->f()Lkli;

    move-result-object v1

    check-cast v1, Lf5j;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zza(Lf5j;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    invoke-static {}, Li9j;->z()Li9j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zzn(Li9j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzi()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/billingclient/api/zzbz;->zzd:Ld6f;

    invoke-virtual {v2}, Ld6f;->d()Ld6f;

    invoke-virtual {v2}, Ld6f;->e()Ld6f;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    monitor-exit v1

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/billingclient/api/zzbz;->zzd:Ld6f;

    invoke-virtual {v2}, Ld6f;->d()Ld6f;

    invoke-virtual {v2}, Ld6f;->e()Ld6f;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-ne v2, v3, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    :goto_4
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {p0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Exception while calling onBillingServiceDisconnected."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final zzf()V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/billingclient/api/zzbz;->zzc:Ld6f;

    invoke-virtual {p0}, Ld6f;->d()Ld6f;

    invoke-virtual {p0}, Ld6f;->e()Ld6f;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
