.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxmg;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    invoke-direct {v2, v0, p0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;-><init>(Landroid/content/Context;Lxmg;Ljava/util/concurrent/ExecutorService;)V

    return-object v2
.end method
