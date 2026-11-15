.class public final synthetic Lcom/google/android/gms/internal/ads/zzclp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lwpf;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lwpf;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zza:Lwpf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zza:Lwpf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lwpf;->h(Lwpf;Ljava/lang/Throwable;)V

    return-void
.end method
