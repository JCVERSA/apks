.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->b:Lqyi;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->c:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->d:Lqyi;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;-><init>(Landroid/content/Context;JLandroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p0
.end method
