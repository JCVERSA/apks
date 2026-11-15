.class public final synthetic Lgtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic c:Lim5;

.field public final synthetic d:Lim5;

.field public final synthetic e:Lim5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbuy;Lim5;Lim5;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgtg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p2, p0, Lgtg;->c:Lim5;

    iput-object p3, p0, Lgtg;->d:Lim5;

    iput-object p4, p0, Lgtg;->e:Lim5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgtg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzn:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lgtg;->e:Lim5;

    iget-object v1, p0, Lgtg;->d:Lim5;

    iget-object p0, p0, Lgtg;->c:Lim5;

    new-instance v2, Lqtg;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lttg;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwbf;

    invoke-direct {v2, p0, v1, v0}, Lqtg;-><init>(Lttg;Lorg/json/JSONObject;Lwbf;)V

    return-object v2
.end method
