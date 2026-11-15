.class public final Lkuh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lcom/google/android/gms/ads/internal/ClientApi;

.field public e:Lcom/google/android/gms/internal/ads/zzboy;

.field public final f:Lfy0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/ScheduledExecutorService;Lfy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkuh;->a:Landroid/content/Context;

    iput-object p2, p0, Lkuh;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lkuh;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    iput-object p1, p0, Lkuh;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p4, p0, Lkuh;->f:Lfy0;

    return-void
.end method

.method public static c()Lzth;
    .locals 10

    new-instance v9, Lzth;

    sget-object v0, Lcye;->z:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcye;->A:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lzth;-><init>(JDJD)V

    return-object v9
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;)Lcom/google/android/gms/internal/ads/z5;
    .locals 11

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lkuh;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lkuh;->a:Landroid/content/Context;

    iget-object v3, p0, Lkuh;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/x5;

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lkuh;->e:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lkuh;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lkuh;->f:Lfy0;

    invoke-static {}, Lkuh;->c()Lzth;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/x5;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lzth;Lfy0;)V

    return-object v10

    :cond_2
    iget-object v1, p0, Lkuh;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lkuh;->a:Landroid/content/Context;

    iget-object v3, p0, Lkuh;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/a6;

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lkuh;->e:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lkuh;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lkuh;->f:Lfy0;

    invoke-static {}, Lkuh;->c()Lzth;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/a6;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lzth;Lfy0;)V

    return-object v10

    :cond_3
    iget-object v1, p0, Lkuh;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lkuh;->a:Landroid/content/Context;

    iget-object v3, p0, Lkuh;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/y5;

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lkuh;->e:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lkuh;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lkuh;->f:Lfy0;

    invoke-static {}, Lkuh;->c()Lzth;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/y5;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lzth;Lfy0;)V

    return-object v10
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p1, p0, Lkuh;->e:Lcom/google/android/gms/internal/ads/zzboy;

    return-void
.end method
