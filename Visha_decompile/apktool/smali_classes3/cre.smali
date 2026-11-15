.class public final Lcre;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->f0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcre;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->i0()Z

    move-result v0

    iput-boolean v0, p0, Lcre;->a:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->d0()Lcom/google/android/gms/internal/ads/k;

    move-result-object v0

    iput-object v0, p0, Lcre;->c:Lcom/google/android/gms/internal/ads/k;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->e0()Lcom/google/android/gms/internal/ads/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcre;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcre;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/k;->d0()Lcom/google/android/gms/internal/ads/k;

    move-result-object p1

    iput-object p1, p0, Lcre;->c:Lcom/google/android/gms/internal/ads/k;

    .line 6
    sget p0, Lcom/google/android/gms/internal/ads/l;->zza:I

    return-void
.end method
