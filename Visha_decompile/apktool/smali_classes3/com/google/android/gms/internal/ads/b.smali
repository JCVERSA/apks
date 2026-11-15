.class public final Lcom/google/android/gms/internal/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lame;

    invoke-direct {v0, p0, p1}, Lame;-><init>(Lcom/google/android/gms/internal/ads/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/c;Lcom/google/android/gms/internal/ads/zzaps;)V
    .locals 2

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    invoke-static {p2}, Lkme;->a(Lcom/google/android/gms/internal/ads/zzaps;)Lkme;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/c;Lkme;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b;->a:Ljava/util/concurrent/Executor;

    check-cast p0, Lame;

    iget-object p0, p0, Lame;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/c;Lkme;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzq()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/c;Lkme;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b;->a:Ljava/util/concurrent/Executor;

    check-cast p0, Lame;

    iget-object p0, p0, Lame;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
