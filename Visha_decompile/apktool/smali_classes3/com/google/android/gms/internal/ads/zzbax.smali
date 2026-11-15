.class public final synthetic Lcom/google/android/gms/internal/ads/zzbax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lwwe;

.field public final synthetic zzb:Lpwe;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbas;

.field public final synthetic zzd:Leff;


# direct methods
.method public synthetic constructor <init>(Lwwe;Lpwe;Lcom/google/android/gms/internal/ads/zzbas;Leff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Lwwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Lpwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Lcom/google/android/gms/internal/ads/zzbas;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Leff;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Lwwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Lpwe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Leff;

    :try_start_0
    invoke-virtual {v1}, Lpwe;->J()Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v3

    invoke-virtual {v1}, Lpwe;->I()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbau;->zzg(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbau;->zzf(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "No entry contents."

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    iget-object p0, v0, Lwwe;->d:Lywe;

    invoke-static {p0}, Lywe;->e(Lywe;)V

    return-void

    :cond_1
    new-instance v3, Ltwe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Ltwe;-><init>(Lwwe;Ljava/io/InputStream;I)V

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzd()Z

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zza()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Laxe;->b(Ljava/io/InputStream;ZZJZ)Laxe;

    move-result-object p0

    invoke-virtual {v2, p0}, Leff;->c(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Unable to read from cache."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Unable to obtain a cache service instance."

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    iget-object p0, v0, Lwwe;->d:Lywe;

    invoke-static {p0}, Lywe;->e(Lywe;)V

    return-void
.end method
