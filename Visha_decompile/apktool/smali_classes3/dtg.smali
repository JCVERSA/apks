.class public final synthetic Ldtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lhfh;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lhfh;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtg;->a:Lhfh;

    iput-object p2, p0, Ldtg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Ldtg;->a:Lhfh;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Lhfh;->b()Lgeh;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzj(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Ldtg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lgeh;->a(Ljava/lang/Object;Landroid/os/Bundle;Z)Lim5;

    move-result-object p0

    return-object p0
.end method
