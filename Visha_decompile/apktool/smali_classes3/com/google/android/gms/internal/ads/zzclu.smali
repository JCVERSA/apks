.class public final synthetic Lcom/google/android/gms/internal/ads/zzclu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lvpf;

.field public final synthetic zzb:Ljava/lang/Throwable;

.field public final synthetic zzc:Lwth;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method public synthetic constructor <init>(Lvpf;Ljava/lang/Throwable;Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zza:Lvpf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzc:Lwth;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzclu;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcye;->ua:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zza:Lvpf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzb:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lvpf;->d:Lwpf;

    invoke-static {v0}, Lwpf;->a(Lwpf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Luaf;->e(Landroid/content/Context;)Lwaf;

    move-result-object v1

    iput-object v1, v0, Lwpf;->i:Lwaf;

    const-string v0, "AttributionReporting.registerSourceAndPingClickUrl"

    invoke-interface {v1, v2, v0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lvpf;->d:Lwpf;

    invoke-static {v0}, Lwpf;->a(Lwpf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object v1

    iput-object v1, v0, Lwpf;->h:Lwaf;

    const-string v0, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    invoke-interface {v1, v2, v0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclu;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzd:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzc:Lwth;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    return-void
.end method
