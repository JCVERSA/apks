.class public final Ltse;
.super Ltte;
.source "SourceFile"


# static fields
.field public static final l:Lute;


# instance fields
.field public final i:Lcom/google/android/gms/internal/ads/k;

.field public final j:Landroid/content/Context;

.field public final k:Ldqe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lute;

    invoke-direct {v0}, Lute;-><init>()V

    sput-object v0, Ltse;->l:Lute;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/h;Lcom/google/android/gms/internal/ads/k;Ldqe;)V
    .locals 8

    move-object v7, p0

    const-string v3, "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE="

    const/16 v6, 0x1b

    const-string v2, "I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    move-object v0, p7

    iput-object v0, v7, Ltse;->j:Landroid/content/Context;

    move-object/from16 v0, p9

    iput-object v0, v7, Ltse;->i:Lcom/google/android/gms/internal/ads/k;

    move-object/from16 v0, p10

    iput-object v0, v7, Ltse;->k:Ldqe;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    sget-object v0, Ltse;->l:Lute;

    iget-object v1, p0, Ltse;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lute;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwpe;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lwpe;->b:Ljava/lang/String;

    invoke-static {v3}, Ljse;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lwpe;->b:Ljava/lang/String;

    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lwpe;->b:Ljava/lang/String;

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljse;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljse;->d(Ljava/lang/String;)Z

    move v3, v4

    :goto_1
    iget-object v5, p0, Ltse;->k:Ldqe;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ltse;->c()Lwpe;

    move-result-object v1

    goto/16 :goto_4

    :cond_2
    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    iget-object v6, p0, Ltse;->i:Lcom/google/android/gms/internal/ads/k;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/k;->e0()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Lcye;->H2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Lcye;->G2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Ltse;->b()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v2

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/e0;->o()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljse;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Ltse;->d()Ljava/lang/String;

    move-result-object v7

    :cond_5
    iget-object v6, p0, Ltte;->f:Ljava/lang/reflect/Method;

    filled-new-array {v1, v5, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lwpe;

    invoke-direct {v5, v1}, Lwpe;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lwpe;->b:Ljava/lang/String;

    invoke-static {v1}, Ljse;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v5, Lwpe;->b:Ljava/lang/String;

    const-string v6, "E"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    add-int/lit8 v3, v3, -0x1

    if-eq v3, v4, :cond_8

    const/4 v1, 0x4

    if-eq v3, v1, :cond_7

    goto :goto_3

    :cond_7
    throw v2

    :cond_8
    invoke-virtual {p0}, Ltse;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljse;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, v5, Lwpe;->b:Ljava/lang/String;

    :cond_9
    :goto_3
    move-object v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwpe;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    if-eqz v1, :cond_b

    :try_start_1
    iget-object v0, v1, Lwpe;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Looe;->v0(Ljava/lang/String;)Looe;

    iget-wide v2, v1, Lwpe;->c:J

    invoke-virtual {p0, v2, v3}, Looe;->R(J)Looe;

    iget-object v0, v1, Lwpe;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Looe;->T(Ljava/lang/String;)Looe;

    iget-object v0, v1, Lwpe;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Looe;->i0(Ljava/lang/String;)Looe;

    iget-object v0, v1, Lwpe;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Looe;->u0(Ljava/lang/String;)Looe;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_b
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    sget-object v2, Lcye;->I2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljse;->f(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcye;->J2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljse;->f(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Ltse;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->j()Ljava/util/concurrent/ExecutorService;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt p0, v2, :cond_1

    sget-object p0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/n8;->h()Lcom/google/android/gms/internal/ads/n8;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v8, Lvte;

    invoke-direct {v8, p0}, Lvte;-><init>(Lcom/google/android/gms/internal/ads/n8;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v3 .. v8}, Lcqe;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public final c()Lwpe;
    .locals 5

    sget-object v0, Lcye;->T2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->Y2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltse;->i:Lcom/google/android/gms/internal/ads/k;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k;->b0()I

    move-result v0

    :goto_0
    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ltse;->j:Landroid/content/Context;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lwpe;

    invoke-direct {v2, v1}, Lwpe;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltse;->k:Ldqe;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ldqe;->a()Lim5;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ldqe;->a()Lim5;

    move-result-object p0

    int-to-long v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const-string p0, "E"

    :goto_1
    iput-object p0, v2, Lwpe;->b:Ljava/lang/String;

    return-object v2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->k()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->k()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->c()Lcom/google/android/gms/internal/ads/t;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t;->H0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t;->T0()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
