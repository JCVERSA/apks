.class public final Lc5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;


# instance fields
.field public final synthetic b:Leff;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/s3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s3;Leff;)V
    .locals 0

    iput-object p2, p0, Lc5f;->b:Leff;

    iput-object p1, p0, Lc5f;->c:Lcom/google/android/gms/internal/ads/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lc5f;->b:Leff;

    iget-object v0, p0, Lc5f;->c:Lcom/google/android/gms/internal/ads/s3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/s3;->a(Lcom/google/android/gms/internal/ads/s3;)Lt4f;

    move-result-object v0

    invoke-virtual {v0}, Lt4f;->I()Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object v0

    invoke-virtual {p1, v0}, Leff;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lc5f;->b:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc5f;->b:Leff;

    invoke-virtual {p0, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
