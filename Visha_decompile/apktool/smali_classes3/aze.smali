.class public final Laze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laze;->a:Lqyi;

    iput-object p2, p0, Laze;->b:Lqyi;

    iput-object p3, p0, Laze;->c:Lqyi;

    iput-object p4, p0, Laze;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lzye;
    .locals 4

    iget-object v0, p0, Laze;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Laze;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iget-object v2, p0, Laze;->c:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    iget-object p0, p0, Laze;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxmg;

    new-instance v3, Lzye;

    invoke-direct {v3, v0, v1, v2, p0}, Lzye;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;Lxmg;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Laze;->a()Lzye;

    move-result-object p0

    return-object p0
.end method
