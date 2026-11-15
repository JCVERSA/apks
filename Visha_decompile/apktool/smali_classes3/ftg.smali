.class public final synthetic Lftg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lim5;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic d:Lim5;


# direct methods
.method public synthetic constructor <init>(Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lftg;->b:Lim5;

    iput-object p2, p0, Lftg;->c:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p3, p0, Lftg;->d:Lim5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lftg;->b:Lim5;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwbf;

    sget-object v1, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lftg;->c:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzl:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwbf;->c()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzm:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lwbf;->b()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object p0, p0, Lftg;->d:Lim5;

    new-instance v1, Laug;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-direct {v1, p0, v0}, Laug;-><init>(Lorg/json/JSONObject;Lwbf;)V

    return-object v1
.end method
