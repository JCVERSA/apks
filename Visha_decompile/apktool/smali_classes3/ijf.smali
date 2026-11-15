.class public abstract Lijf;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Likf;


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Lsmg;

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Z

.field public final F:Ljava/util/HashSet;

.field public final G:Lcom/google/android/gms/internal/ads/zzebe;

.field public H:Landroid/view/View$OnAttachStateChangeListener;

.field public final b:Lejf;

.field public final c:Lcom/google/android/gms/internal/ads/o0;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/lang/Object;

.field public f:Lcom/google/android/gms/ads/internal/client/zza;

.field public g:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field public h:Lgkf;

.field public i:Lhkf;

.field public j:Lr1f;

.field public k:Lz1f;

.field public l:Lt8g;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Lcom/google/android/gms/ads/internal/overlay/zzac;

.field public w:Lz9f;

.field public x:Lcom/google/android/gms/ads/internal/zzb;

.field public y:Lq9f;

.field public z:Lddf;


# direct methods
.method public constructor <init>(Lejf;Lcom/google/android/gms/internal/ads/o0;ZLz9f;Lq9f;Lcom/google/android/gms/internal/ads/zzebe;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lijf;->d:Ljava/util/HashMap;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lijf;->e:Ljava/lang/Object;

    const/4 p5, 0x0

    iput p5, p0, Lijf;->o:I

    const-string p5, ""

    iput-object p5, p0, Lijf;->p:Ljava/lang/String;

    iput-object p5, p0, Lijf;->q:Ljava/lang/String;

    iput-object p2, p0, Lijf;->c:Lcom/google/android/gms/internal/ads/o0;

    iput-object p1, p0, Lijf;->b:Lejf;

    iput-boolean p3, p0, Lijf;->r:Z

    iput-object p4, p0, Lijf;->w:Lz9f;

    const/4 p1, 0x0

    iput-object p1, p0, Lijf;->y:Lq9f;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcye;->J5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lijf;->F:Ljava/util/HashSet;

    iput-object p6, p0, Lijf;->G:Lcom/google/android/gms/internal/ads/zzebe;

    return-void
.end method

.method public static final A(Lejf;)Z
    .locals 1

    invoke-interface {p0}, Lejf;->zzD()Lhmh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lejf;->zzD()Lhmh;

    move-result-object p0

    invoke-virtual {p0}, Lhmh;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final B(ZLejf;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lejf;->zzO()Lkkf;

    move-result-object p0

    invoke-virtual {p0}, Lkkf;->i()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lejf;->zzU()Ljava/lang/String;

    move-result-object p0

    const-string p1, "interstitial_mb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic E(Lijf;ZJ)V
    .locals 0

    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-interface {p0, p1, p2, p3}, Lchf;->zzv(ZJ)V

    return-void
.end method

.method public static synthetic F(Lijf;Landroid/view/View;Lddf;I)V
    .locals 0

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lijf;->z(Landroid/view/View;Lddf;I)V

    return-void
.end method

.method public static synthetic G(Lijf;)V
    .locals 0

    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzad()V

    invoke-interface {p0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzz()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic H(Lijf;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lijf;->u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic I(Lijf;Landroid/view/View;Lddf;I)V
    .locals 0

    const/16 p3, 0xa

    invoke-virtual {p0, p1, p2, p3}, Lijf;->z(Landroid/view/View;Lddf;I)V

    return-void
.end method

.method public static s()Landroid/webkit/WebResourceResponse;
    .locals 3

    sget-object v0, Lcye;->Y0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final C()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    iget-object p0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final D(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AdWebViewClient.interceptRequest.gcache"

    const-string v0, "range"

    const-string v4, "ms"

    const-string v5, "Cache connection took "

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v1, Lijf;->b:Lejf;

    invoke-interface {v7}, Lejf;->zzD()Lhmh;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Lejf;->zzD()Lhmh;

    move-result-object v6

    iget-object v6, v6, Lhmh;->w0:Ljava/util/Map;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :cond_0
    :goto_0
    invoke-interface {v7}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, v1, Lijf;->E:Z

    invoke-static {v2, v8, v9, v6}, Ltdf;->c(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v8, p2

    invoke-virtual {v1, v6, v8}, Lijf;->t(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v8, p2

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbas;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v10, "Access-Control-Allow-Origin"

    const-string v11, "*"

    invoke-interface {v15, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_3

    const/16 v11, 0x2d

    invoke-static {v11}, Li2i;->b(C)Li2i;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/l6;->b(Li2i;)Lcom/google/android/gms/internal/ads/l6;

    move-result-object v11

    invoke-virtual {v10, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/l6;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v14

    if-lez v10, :cond_2

    int-to-long v13, v10

    iput-wide v13, v6, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    :cond_2
    sub-int/2addr v0, v10

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    sget-object v10, Lcye;->x4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v13

    invoke-virtual {v13, v10}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "X-Afma-Gcache-CachedBytes"

    const-string v14, "X-Afma-Gcache-IsDownloaded"

    const-string v11, "X-Afma-Gcache-IsGcacheHit"

    const-string v9, "X-Afma-Gcache-HasAdditionalMetadataFromReadV2"

    if-eqz v10, :cond_9

    :try_start_1
    invoke-interface {v7}, Lchf;->zzr()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    invoke-interface {v7}, Lchf;->zzf()I

    move-result v10

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    iget-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzbas;->zzg:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcye;->z4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v10}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    :goto_2
    move-object v12, v3

    goto :goto_3

    :cond_4
    sget-object v10, Lcye;->y4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v10}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    goto :goto_2

    :goto_3
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v10

    invoke-interface {v10}, Lfy0;->elapsedRealtime()J

    move-result-wide v17

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzd()Lzwe;

    invoke-interface {v7}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lzwe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxe;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Laxe;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Laxe;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Laxe;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Laxe;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Laxe;->c()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    int-to-long v9, v0

    :try_start_4
    invoke-static {v2, v9, v10}, Lg6i;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_4
    const/4 v13, 0x1

    goto :goto_d

    :catch_2
    move-exception v0

    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_10

    :cond_5
    :goto_6
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v17

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcep;

    const/4 v9, 0x1

    invoke-direct {v3, v1, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lijf;ZJ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    move-object/from16 v16, v2

    goto/16 :goto_12

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :goto_8
    const/4 v13, 0x1

    goto/16 :goto_11

    :goto_9
    const/4 v2, 0x0

    goto :goto_4

    :goto_a
    const/4 v2, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_f

    :goto_b
    const/4 v13, 0x0

    goto/16 :goto_11

    :goto_c
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_d
    :try_start_6
    sget-object v3, Lcye;->C4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v3

    invoke-virtual {v3, v0, v12}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    const/4 v3, 0x1

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_11

    :goto_e
    invoke-interface {v6, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v17

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcep;

    invoke-direct {v3, v1, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lijf;ZJ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :goto_f
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_10
    :try_start_8
    sget-object v3, Lcye;->C4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v3

    invoke-virtual {v3, v0, v12}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v17

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcep;

    invoke-direct {v3, v1, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lijf;ZJ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :goto_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v17

    sget-object v6, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcep;

    invoke-direct {v7, v1, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Lijf;ZJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/m0;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/m0;->b(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zzd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lg6i;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_12

    :cond_a
    const/16 v16, 0x0

    :goto_12
    if-eqz v16, :cond_b

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v11, ""

    const-string v12, ""

    const-string v14, "OK"

    const/16 v13, 0xc8

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lvze;->b:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p2}, Lijf;->t(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_0

    return-object v0

    :cond_c
    const/4 v1, 0x0

    return-object v1

    :goto_13
    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lijf;->s()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final J()V
    .locals 5

    iget-object v0, p0, Lijf;->h:Lgkf;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lijf;->B:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lijf;->D:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lijf;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lijf;->n:Z

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lijf;->b:Lejf;

    invoke-interface {v0}, Lejf;->zzl()Loye;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lejf;->zzl()Loye;

    move-result-object v1

    invoke-virtual {v1}, Loye;->a()Lqye;

    move-result-object v1

    invoke-interface {v0}, Lchf;->zzk()Lnye;

    move-result-object v0

    const-string v2, "awfllc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Liye;->a(Lqye;Lnye;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lijf;->h:Lgkf;

    iget-boolean v1, p0, Lijf;->C:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lijf;->n:Z

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget v1, p0, Lijf;->o:I

    iget-object v3, p0, Lijf;->p:Ljava/lang/String;

    iget-object v4, p0, Lijf;->q:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3, v4}, Lgkf;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lijf;->h:Lgkf;

    :cond_4
    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzaf()V

    return-void
.end method

.method public final K()V
    .locals 4

    iget-object v0, p0, Lijf;->z:Lddf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lddf;->zzf()V

    iput-object v1, p0, Lijf;->z:Lddf;

    :cond_0
    invoke-virtual {p0}, Lijf;->w()V

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object v1, p0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iput-object v1, p0, Lijf;->h:Lgkf;

    iput-object v1, p0, Lijf;->i:Lhkf;

    iput-object v1, p0, Lijf;->j:Lr1f;

    iput-object v1, p0, Lijf;->k:Lz1f;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lijf;->m:Z

    iput-boolean v2, p0, Lijf;->r:Z

    iput-boolean v2, p0, Lijf;->s:Z

    iput-boolean v2, p0, Lijf;->t:Z

    iput-object v1, p0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    iput-object v1, p0, Lijf;->x:Lcom/google/android/gms/ads/internal/zzb;

    iput-object v1, p0, Lijf;->w:Lz9f;

    iget-object v2, p0, Lijf;->y:Lq9f;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lq9f;->i(Z)V

    iput-object v1, p0, Lijf;->y:Lq9f;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

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

.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lijf;->E:Z

    return-void
.end method

.method public final M(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V
    .locals 9

    iget-object v6, p0, Lijf;->b:Lejf;

    invoke-interface {v6}, Lejf;->zzaF()Z

    move-result v0

    invoke-static {v0, v6}, Lijf;->B(ZLejf;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    if-nez p3, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    move-object p3, v1

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    :goto_1
    if-eqz v0, :cond_5

    move-object v3, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-object v3, v0

    :goto_2
    iget-object v4, p0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-interface {v6}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    if-eqz v2, :cond_6

    move-object v7, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lijf;->l:Lt8g;

    move-object v7, v0

    :goto_3
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lejf;Lt8g;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lijf;->P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    iget-object v6, p0, Lijf;->G:Lcom/google/android/gms/internal/ads/zzebe;

    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, p0, Lijf;->b:Lejf;

    invoke-interface {v1}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    const/16 v5, 0xe

    move-object v0, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lejf;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzbsr;)V

    invoke-virtual {p0, p3}, Lijf;->P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final O(ZIZ)V
    .locals 10

    iget-object v4, p0, Lijf;->b:Lejf;

    invoke-interface {v4}, Lejf;->zzaF()Z

    move-result v0

    invoke-static {v0, v4}, Lijf;->B(ZLejf;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    move-object v3, v0

    :goto_1
    iget-object v5, p0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v6, p0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-interface {v4}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lijf;->l:Lt8g;

    move-object v8, v0

    :goto_2
    invoke-static {v4}, Lijf;->A(Lejf;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lijf;->G:Lcom/google/android/gms/internal/ads/zzebe;

    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object v9, v2

    :goto_3
    move-object v0, p3

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lejf;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lt8g;Lcom/google/android/gms/internal/ads/zzbsr;)V

    invoke-virtual {p0, p3}, Lijf;->P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    iget-object v0, p0, Lijf;->y:Lq9f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq9f;->m()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v1, p0, Lijf;->b:Lejf;

    invoke-interface {v1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lijf;->A:Lsmg;

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLsmg;)V

    iget-object p0, p0, Lijf;->z:Lddf;

    if-eqz p0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzl:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzb:Ljava/lang/String;

    :cond_1
    invoke-interface {p0, v0}, Lddf;->zzh(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final Q(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v7, v0, Lijf;->b:Lejf;

    invoke-interface {v7}, Lejf;->zzaF()Z

    move-result v1

    invoke-static {v1, v7}, Lijf;->B(ZLejf;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    :goto_1
    if-eqz v1, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    new-instance v1, Lhjf;

    iget-object v5, v0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v1, v7, v5}, Lhjf;-><init>(Lejf;Lcom/google/android/gms/ads/internal/overlay/zzr;)V

    move-object v5, v1

    :goto_2
    iget-object v6, v0, Lijf;->j:Lr1f;

    iget-object v8, v0, Lijf;->k:Lz1f;

    iget-object v9, v0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-interface {v7}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v12

    if-eqz v3, :cond_4

    move-object v13, v4

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lijf;->l:Lt8g;

    move-object v13, v1

    :goto_3
    invoke-static {v7}, Lijf;->A(Lejf;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lijf;->G:Lcom/google/android/gms/internal/ads/zzebe;

    move-object v14, v1

    goto :goto_4

    :cond_5
    move-object v14, v4

    :goto_4
    move-object v1, v15

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lr1f;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;Lejf;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lt8g;Lcom/google/android/gms/internal/ads/zzbsr;)V

    invoke-virtual {v0, v15}, Lijf;->P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v7, v0, Lijf;->b:Lejf;

    invoke-interface {v7}, Lejf;->zzaF()Z

    move-result v1

    invoke-static {v1, v7}, Lijf;->B(ZLejf;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    :goto_1
    if-eqz v1, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    new-instance v1, Lhjf;

    iget-object v5, v0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v1, v7, v5}, Lhjf;-><init>(Lejf;Lcom/google/android/gms/ads/internal/overlay/zzr;)V

    move-object v5, v1

    :goto_2
    iget-object v6, v0, Lijf;->j:Lr1f;

    iget-object v8, v0, Lijf;->k:Lz1f;

    iget-object v9, v0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    invoke-interface {v7}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v11

    if-eqz v3, :cond_4

    move-object v12, v4

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lijf;->l:Lt8g;

    move-object v12, v1

    :goto_3
    invoke-static {v7}, Lijf;->A(Lejf;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lijf;->G:Lcom/google/android/gms/internal/ads/zzebe;

    move-object v13, v1

    goto :goto_4

    :cond_5
    move-object v13, v4

    :goto_4
    move-object v1, v15

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v14, p5

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lr1f;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;Lejf;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lt8g;Lcom/google/android/gms/internal/ads/zzbsr;Z)V

    invoke-virtual {v0, v15}, Lijf;->P(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ln3f;)V
    .locals 2

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Z)V
    .locals 1

    iget-object p1, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lijf;->t:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLq3f;Lcom/google/android/gms/ads/internal/zzb;Lbaf;Lddf;Ldwg;Lwth;Lsmg;Lo4f;Lt8g;Ln4f;La4f;Lo3f;Lwpf;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v9, p18

    move-object/from16 v8, p19

    if-nez p8, :cond_0

    iget-object v6, v0, Lijf;->b:Lejf;

    new-instance v7, Lcom/google/android/gms/ads/internal/zzb;

    invoke-interface {v6}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v8}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lddf;Lcom/google/android/gms/internal/ads/zzbug;)V

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object/from16 v8, p8

    :goto_0
    iget-object v7, v0, Lijf;->b:Lejf;

    new-instance v6, Lq9f;

    invoke-direct {v6, v7, v4}, Lq9f;-><init>(Lejf;Lbaf;)V

    iput-object v6, v0, Lijf;->y:Lq9f;

    iput-object v5, v0, Lijf;->z:Lddf;

    sget-object v5, Lcye;->f1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lq1f;

    invoke-direct {v5, v1}, Lq1f;-><init>(Lr1f;)V

    const-string v6, "/adMetadata"

    invoke-virtual {v0, v6, v5}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Ly1f;

    invoke-direct {v5, v2}, Ly1f;-><init>(Lz1f;)V

    const-string v6, "/appEvent"

    invoke-virtual {v0, v6, v5}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_2
    const-string v5, "/backButton"

    sget-object v6, Lm3f;->j:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/refresh"

    sget-object v6, Lm3f;->k:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/canOpenApp"

    sget-object v6, Lm3f;->b:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/canOpenURLs"

    sget-object v6, Lm3f;->a:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/canOpenIntents"

    sget-object v6, Lm3f;->c:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/close"

    sget-object v6, Lm3f;->d:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/customClose"

    sget-object v6, Lm3f;->e:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/instrument"

    sget-object v6, Lm3f;->n:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/delayPageLoaded"

    sget-object v6, Lm3f;->p:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/delayPageClosed"

    sget-object v6, Lm3f;->q:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/getLocationInfo"

    sget-object v6, Lm3f;->r:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v5, "/log"

    sget-object v6, Lm3f;->g:Ln3f;

    invoke-virtual {v0, v5, v6}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    new-instance v5, Lu3f;

    iget-object v6, v0, Lijf;->y:Lq9f;

    invoke-direct {v5, v8, v6, v4}, Lu3f;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lq9f;Lbaf;)V

    const-string v4, "/mraid"

    invoke-virtual {v0, v4, v5}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    iget-object v4, v0, Lijf;->w:Lz9f;

    if-eqz v4, :cond_3

    const-string v5, "/mraidLoaded"

    invoke-virtual {v0, v5, v4}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_3
    new-instance v6, Lz3f;

    iget-object v5, v0, Lijf;->y:Lq9f;

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v5, v8

    move-object v2, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p11

    move-object/from16 v1, p19

    move-object/from16 v17, v8

    move-object/from16 v8, p13

    move-object/from16 v9, p19

    invoke-direct/range {v4 .. v9}, Lz3f;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lq9f;Ldwg;Lsmg;Lwpf;)V

    const-string v4, "/open"

    invoke-virtual {v0, v4, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    new-instance v2, Lthf;

    invoke-direct {v2}, Lthf;-><init>()V

    const-string v4, "/precache"

    invoke-virtual {v0, v4, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v2, "/touch"

    sget-object v4, Lm3f;->i:Ln3f;

    invoke-virtual {v0, v2, v4}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v2, "/video"

    sget-object v4, Lm3f;->l:Ln3f;

    invoke-virtual {v0, v2, v4}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v2, "/videoMeta"

    sget-object v4, Lm3f;->m:Ln3f;

    invoke-virtual {v0, v2, v4}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v2, "/httpTrack"

    const-string v4, "/click"

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    new-instance v5, Llnh;

    invoke-direct {v5, v13, v1, v11, v10}, Llnh;-><init>(Lt8g;Lwpf;Lwth;Ldwg;)V

    invoke-virtual {v0, v4, v5}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    new-instance v1, Lmnh;

    invoke-direct {v1, v11, v10}, Lmnh;-><init>(Lwth;Ldwg;)V

    invoke-virtual {v0, v2, v1}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    goto :goto_1

    :cond_4
    new-instance v5, Lf2f;

    invoke-direct {v5, v13, v1}, Lf2f;-><init>(Lt8g;Lwpf;)V

    invoke-virtual {v0, v4, v5}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    sget-object v1, Lm3f;->f:Ln3f;

    invoke-virtual {v0, v2, v1}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object v1

    invoke-interface/range {v16 .. v16}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrdf;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v16 .. v16}, Lejf;->zzD()Lhmh;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Lejf;->zzD()Lhmh;

    move-result-object v1

    iget-object v1, v1, Lhmh;->w0:Ljava/util/Map;

    :cond_5
    new-instance v2, Lt3f;

    invoke-interface/range {v16 .. v16}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lt3f;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string v1, "/logScionEvent"

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_6
    if-eqz v3, :cond_7

    new-instance v1, Lp3f;

    invoke-direct {v1, v3}, Lp3f;-><init>(Lq3f;)V

    const-string v2, "/setInterstitialProperties"

    invoke-virtual {v0, v2, v1}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_7
    if-eqz v12, :cond_8

    sget-object v1, Lcye;->Z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "/inspectorNetworkExtras"

    invoke-virtual {v0, v1, v12}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_8
    sget-object v1, Lcye;->s9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v14, :cond_9

    const-string v1, "/shareSheet"

    invoke-virtual {v0, v1, v14}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_9
    sget-object v1, Lcye;->x9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v15, :cond_a

    const-string v1, "/inspectorOutOfContextTest"

    invoke-virtual {v0, v1, v15}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_a
    sget-object v1, Lcye;->B9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v1, p18

    if-eqz v1, :cond_b

    const-string v2, "/inspectorStorage"

    invoke-virtual {v0, v2, v1}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_b
    sget-object v1, Lcye;->Eb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "/bindPlayStoreOverlay"

    sget-object v2, Lm3f;->u:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/presentPlayStoreOverlay"

    sget-object v2, Lm3f;->v:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/expandPlayStoreOverlay"

    sget-object v2, Lm3f;->w:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/collapsePlayStoreOverlay"

    sget-object v2, Lm3f;->x:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/closePlayStoreOverlay"

    sget-object v2, Lm3f;->y:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_c
    sget-object v1, Lcye;->y3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "/setPAIDPersonalizationEnabled"

    sget-object v2, Lm3f;->A:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/resetPAID"

    sget-object v2, Lm3f;->z:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_d
    sget-object v1, Lcye;->Yb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v16 .. v16}, Lejf;->zzD()Lhmh;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface/range {v16 .. v16}, Lejf;->zzD()Lhmh;

    move-result-object v1

    iget-boolean v1, v1, Lhmh;->r0:Z

    if-eqz v1, :cond_e

    const-string v1, "/writeToLocalStorage"

    sget-object v2, Lm3f;->B:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    const-string v1, "/clearLocalStorageKeys"

    sget-object v2, Lm3f;->C:Ln3f;

    invoke-virtual {v0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_e
    move-object/from16 v1, p1

    iput-object v1, v0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    move-object/from16 v1, p3

    iput-object v1, v0, Lijf;->g:Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-object/from16 v1, p2

    iput-object v1, v0, Lijf;->j:Lr1f;

    move-object/from16 v1, p4

    iput-object v1, v0, Lijf;->k:Lz1f;

    move-object/from16 v1, p5

    iput-object v1, v0, Lijf;->v:Lcom/google/android/gms/ads/internal/overlay/zzac;

    move-object/from16 v7, v17

    iput-object v7, v0, Lijf;->x:Lcom/google/android/gms/ads/internal/zzb;

    iput-object v13, v0, Lijf;->l:Lt8g;

    move-object/from16 v1, p13

    iput-object v1, v0, Lijf;->A:Lsmg;

    move/from16 v1, p6

    iput-boolean v1, v0, Lijf;->m:Z

    return-void
.end method

.method public final e(IIZ)V
    .locals 0

    iget-object p3, p0, Lijf;->w:Lz9f;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lz9f;->h(II)V

    :cond_0
    iget-object p0, p0, Lijf;->y:Lq9f;

    if-eqz p0, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lq9f;->k(IIZ)V

    :cond_1
    return-void
.end method

.method public final f(Lwpf;Ldwg;Lsmg;)V
    .locals 8

    const-string v0, "/open"

    invoke-virtual {p0, v0}, Lijf;->h(Ljava/lang/String;)V

    new-instance v7, Lz3f;

    iget-object v2, p0, Lijf;->x:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v3, p0, Lijf;->y:Lq9f;

    move-object v1, v7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lz3f;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lq9f;Ldwg;Lsmg;Lwpf;)V

    invoke-virtual {p0, v0, v7}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lijf;->m:Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Lwpf;Ldwg;Lwth;)V
    .locals 3

    const-string v0, "/click"

    invoke-virtual {p0, v0}, Lijf;->h(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lijf;->l:Lt8g;

    new-instance v2, Llnh;

    invoke-direct {v2, v1, p1, p3, p2}, Llnh;-><init>(Lt8g;Lwpf;Lwth;Ldwg;)V

    invoke-virtual {p0, v0, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    return-void

    :cond_0
    iget-object p2, p0, Lijf;->l:Lt8g;

    sget-object p3, Lm3f;->a:Ln3f;

    new-instance p3, Lf2f;

    invoke-direct {p3, p2, p1}, Lf2f;-><init>(Lt8g;Lwpf;)V

    invoke-virtual {p0, v0, p3}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final j(Landroid/net/Uri;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcye;->I5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lijf;->F:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Lcye;->K5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    const-string v2, "Parsing gmsg query params on BG thread: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzb(Landroid/net/Uri;)Lim5;

    move-result-object v2

    new-instance v3, Lgjf;

    invoke-direct {v3, p0, v0, v1, p1}, Lgjf;-><init>(Lijf;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p0, Lzef;->f:Lg8i;

    invoke-static {v2, v3, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lijf;->u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "No GMSG handler found for GMSG: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    sget-object p0, Lcye;->I6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p1

    invoke-virtual {p1, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p0

    invoke-virtual {p0}, Lqef;->h()Lgye;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "null"

    :goto_2
    sget-object p1, Lzef;->a:Lg8i;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzceo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final k(Ljava/lang/String;Ln3f;)V
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l(Lwpf;)V
    .locals 3

    const-string v0, "/click"

    invoke-virtual {p0, v0}, Lijf;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lijf;->l:Lt8g;

    sget-object v2, Lm3f;->a:Ln3f;

    new-instance v2, Lf2f;

    invoke-direct {v2, v1, p1}, Lf2f;-><init>(Lt8g;Lwpf;)V

    invoke-virtual {p0, v0, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    iget-object p1, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lijf;->s:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(Ljava/lang/String;Lje8;)V
    .locals 4

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lijf;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3f;

    invoke-interface {p2, v2}, Lje8;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lijf;->t:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading resource: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lijf;->j(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lijf;->b:Lejf;

    invoke-interface {v0}, Lejf;->zzaE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Blank page loaded, 1..."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {v0}, Lejf;->zzX()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lijf;->B:Z

    iget-object p1, p0, Lijf;->i:Lhkf;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lhkf;->zza()V

    const/4 p1, 0x0

    iput-object p1, p0, Lijf;->i:Lhkf;

    :cond_1
    invoke-virtual {p0}, Lijf;->J()V

    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcye;->Zb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzG(Ljava/lang/String;)V

    :cond_2
    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lijf;->n:Z

    iput p2, p0, Lijf;->o:I

    iput-object p3, p0, Lijf;->p:Ljava/lang/String;

    iput-object p4, p0, Lijf;->q:Ljava/lang/String;

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lejf;->zzaD(ZI)Z

    move-result p0

    return p0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lijf;->u:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lijf;->s:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final r(Lhkf;)V
    .locals 0

    iput-object p1, p0, Lijf;->i:Lhkf;

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lijf;->D(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x4f

    if-eq p0, p1, :cond_0

    const/16 p1, 0xde

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lijf;->j(Landroid/net/Uri;)V

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, p0, Lijf;->m:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lijf;->b:Lejf;

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v0, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    iget-object v0, p0, Lijf;->z:Lddf;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lddf;->zzh(Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lijf;->f:Lcom/google/android/gms/ads/internal/client/zza;

    :cond_3
    iget-object v0, p0, Lijf;->l:Lt8g;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lt8g;->zzdd()V

    iput-object v1, p0, Lijf;->l:Lt8g;

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    iget-object p1, p0, Lijf;->b:Lejf;

    invoke-interface {p1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    invoke-interface {p1}, Lejf;->zzI()Lfre;

    move-result-object v1

    invoke-interface {p1}, Lejf;->zzS()Linh;

    move-result-object v3

    sget-object v4, Lcye;->dc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lfre;->f(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v4

    check-cast p1, Landroid/view/View;

    invoke-virtual {v3, v0, v1, p1, v4}, Linh;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lfre;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v4

    check-cast p1, Landroid/view/View;

    invoke-virtual {v1, v0, v3, p1, v4}, Lfre;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzauz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to append parameter to URL: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lijf;->x:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    iget-object p2, p0, Lijf;->b:Lejf;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lchf;->zzr()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_a
    const-string p2, ""

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0, p2}, Lijf;->M(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdWebView unable to handle URL: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :goto_3
    return v2
.end method

.method public final t(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 12

    const/4 v0, 0x1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    add-int/2addr v2, v0

    const/16 v3, 0x14

    if-gt v2, v3, :cond_e

    sget v3, Lxyh;->a:I

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_d

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v5

    iget-object v4, p0, Lijf;->b:Lejf;

    invoke-interface {v4}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0xea60

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/ads/internal/util/zzs;->zzg(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    new-instance v4, Lcom/google/android/gms/ads/internal/util/client/zzl;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzc(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zze(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v6, v4, :cond_5

    const/16 v4, 0x190

    if-ge v6, v4, :cond_5

    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v6, "tel:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "Protocol is null"

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-static {}, Lijf;->s()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto/16 :goto_7

    :cond_2
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "https"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported scheme: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-static {}, Lijf;->s()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    goto/16 :goto_7

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v5

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing Location header in redirect"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ";"

    const-string v2, ""

    if-eqz p2, :cond_6

    move-object v5, v2

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    :goto_3
    move-object v6, v2

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    if-ne p2, v0, :cond_9

    goto :goto_3

    :cond_9
    move p2, v0

    :goto_4
    array-length v1, p0

    if-ge p2, v1, :cond_7

    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "charset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-le v4, v0, :cond_a

    aget-object p0, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    add-int/2addr p2, v0

    goto :goto_4

    :goto_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    new-instance v9, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {v9, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v9, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v5

    :cond_d
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid protocol."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too many redirects (20)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_8
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p0
.end method

.method public final u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received GMSG: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3f;

    iget-object v0, p0, Lijf;->b:Lejf;

    invoke-interface {p3, v0, p1}, Ln3f;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final v(Lgkf;)V
    .locals 0

    iput-object p1, p0, Lijf;->h:Lgkf;

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lijf;->H:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lijf;->b:Lejf;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final x(Lhmh;)V
    .locals 3

    iget-object v0, p0, Lijf;->b:Lejf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object v1

    invoke-interface {v0}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrdf;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/logScionEvent"

    invoke-virtual {p0, v1}, Lijf;->h(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lhmh;->w0:Ljava/util/Map;

    new-instance v2, Lt3f;

    invoke-interface {v0}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lt3f;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Lijf;->b(Ljava/lang/String;Ln3f;)V

    :cond_0
    return-void
.end method

.method public final y()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object p0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z(Landroid/view/View;Lddf;I)V
    .locals 2

    invoke-interface {p2}, Lddf;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lddf;->a(Landroid/view/View;)V

    invoke-interface {p2}, Lddf;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcem;-><init>(Lijf;Landroid/view/View;Lddf;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final zzD(II)V
    .locals 0

    iget-object p0, p0, Lijf;->y:Lq9f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lq9f;->l(II)V

    :cond_0
    return-void
.end method

.method public final zzG(Z)V
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lijf;->u:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzH()V
    .locals 3

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lijf;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lijf;->r:Z

    sget-object v1, Lzef;->f:Lg8i;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcen;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcen;-><init>(Lijf;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzT()Z
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lijf;->r:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzd()Lcom/google/android/gms/ads/internal/zzb;
    .locals 0

    iget-object p0, p0, Lijf;->x:Lcom/google/android/gms/ads/internal/zzb;

    return-object p0
.end method

.method public final zzdd()V
    .locals 0

    iget-object p0, p0, Lijf;->l:Lt8g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lt8g;->zzdd()V

    :cond_0
    return-void
.end method

.method public final zze()Lsmg;
    .locals 0

    iget-object p0, p0, Lijf;->A:Lsmg;

    return-object p0
.end method

.method public final zzo()V
    .locals 2

    iget-object v0, p0, Lijf;->c:Lcom/google/android/gms/internal/ads/o0;

    if-eqz v0, :cond_0

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lijf;->C:Z

    const/16 v0, 0x2714

    iput v0, p0, Lijf;->o:I

    const-string v0, "Page loaded delay cancel."

    iput-object v0, p0, Lijf;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lijf;->J()V

    iget-object p0, p0, Lijf;->b:Lejf;

    invoke-interface {p0}, Lejf;->destroy()V

    return-void
.end method

.method public final zzp()V
    .locals 1

    iget-object v0, p0, Lijf;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lijf;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lijf;->D:I

    invoke-virtual {p0}, Lijf;->J()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final zzq()V
    .locals 1

    iget v0, p0, Lijf;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lijf;->D:I

    invoke-virtual {p0}, Lijf;->J()V

    return-void
.end method

.method public final zzs()V
    .locals 4

    iget-object v0, p0, Lijf;->z:Lddf;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lijf;->b:Lejf;

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v2, v0, v1}, Lijf;->z(Landroid/view/View;Lddf;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lijf;->w()V

    new-instance v2, Lfjf;

    invoke-direct {v2, p0, v0}, Lfjf;-><init>(Lijf;Lddf;)V

    iput-object v2, p0, Lijf;->H:Landroid/view/View$OnAttachStateChangeListener;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final zzu()V
    .locals 0

    iget-object p0, p0, Lijf;->l:Lt8g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lt8g;->zzu()V

    :cond_0
    return-void
.end method
