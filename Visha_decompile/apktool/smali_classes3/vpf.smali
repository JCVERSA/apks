.class public final Lvpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lwth;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field public final synthetic d:Lwpf;


# direct methods
.method public constructor <init>(Lwpf;Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    iput-object p2, p0, Lvpf;->a:Lwth;

    iput-object p3, p0, Lvpf;->b:Ljava/lang/String;

    iput-object p4, p0, Lvpf;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p1, p0, Lvpf;->d:Lwpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 8

    iget-object v0, p0, Lvpf;->d:Lwpf;

    invoke-static {v0}, Lwpf;->f(Lwpf;)Lg8i;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzclu;

    iget-object v4, p0, Lvpf;->a:Lwth;

    iget-object v5, p0, Lvpf;->b:Ljava/lang/String;

    iget-object v6, p0, Lvpf;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzclu;-><init>(Lvpf;Ljava/lang/Throwable;Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    invoke-interface {v0, v7}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lvpf;->a:Lwth;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lvpf;->d:Lwpf;

    invoke-static {v1}, Lwpf;->f(Lwpf;)Lg8i;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclv;

    iget-object p0, p0, Lvpf;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-direct {v2, v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    invoke-interface {v1, v2}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    return-void
.end method
