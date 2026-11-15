.class public final Lych;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg8i;

.field public final c:Lenh;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg8i;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lych;->a:Landroid/content/Context;

    iput-object p2, p0, Lych;->b:Lg8i;

    iput-object p3, p0, Lych;->c:Lenh;

    iput-object p4, p0, Lych;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method public static synthetic a(Lych;)Lzch;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lych;->a:Landroid/content/Context;

    iget-object v1, p0, Lych;->c:Lenh;

    invoke-virtual {v1}, Lenh;->a()Z

    move-result v7

    new-instance v1, Ltzh;

    invoke-direct {v1}, Ltzh;-><init>()V

    new-instance v2, Ltzh;

    invoke-direct {v2}, Ltzh;-><init>()V

    const/4 v3, 0x1

    if-eqz v7, :cond_0

    sget-object v4, Lcye;->p3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lzch;

    invoke-direct {v0, v3}, Lzch;-><init>(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    if-nez v7, :cond_1

    sget-object v4, Lcye;->l3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    sget-object v4, Lcye;->n3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v0}, Lxzh;->k(Landroid/content/Context;)Lxzh;

    move-result-object v1

    sget-object v4, Lcye;->w3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v6

    invoke-virtual {v6}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lxzh;->i(JZ)Ltzh;

    move-result-object v1

    :cond_3
    sget-object v4, Lcye;->t3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lych;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v5, Lcye;->s3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-static {v0}, Lyzh;->j(Landroid/content/Context;)Lyzh;

    move-result-object v4

    invoke-virtual {v4}, Lyzh;->k()V

    :cond_4
    if-nez v7, :cond_5

    sget-object v4, Lcye;->m3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eqz v7, :cond_8

    sget-object v4, Lcye;->o3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    invoke-static {v0}, Lyzh;->j(Landroid/content/Context;)Lyzh;

    move-result-object v4

    invoke-static {v0}, Luzh;->a(Landroid/content/Context;)Luzh;

    move-result-object v0

    iget-object v5, p0, Lych;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v6, Lcye;->s3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_7

    sget-object v2, Lcye;->x3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v5

    invoke-virtual {v5}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lyzh;->i(JZ)Ltzh;

    move-result-object v2

    invoke-virtual {v0}, Luzh;->d()Z

    move-result v3

    :cond_7
    invoke-virtual {v0}, Luzh;->e()Z

    move-result v0

    move v6, v0

    move-object v4, v2

    move v5, v3

    goto :goto_0

    :cond_8
    move-object v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    new-instance v0, Lzch;

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lzch;-><init>(Ltzh;Ltzh;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "PerAppIdSignal"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p0, p0, Lych;->c:Lenh;

    new-instance v0, Lzch;

    invoke-virtual {p0}, Lenh;->a()Z

    move-result p0

    invoke-direct {v0, p0}, Lzch;-><init>(Z)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lxch;

    invoke-direct {v0, p0}, Lxch;-><init>(Lych;)V

    iget-object p0, p0, Lych;->b:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
