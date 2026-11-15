.class public final synthetic Lhtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdyu;

.field public final synthetic c:Lim5;

.field public final synthetic d:Lim5;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic f:Lwrh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyu;Lim5;Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lwrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhtg;->b:Lcom/google/android/gms/internal/ads/zzdyu;

    iput-object p2, p0, Lhtg;->c:Lim5;

    iput-object p3, p0, Lhtg;->d:Lim5;

    iput-object p4, p0, Lhtg;->e:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p5, p0, Lhtg;->f:Lwrh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lhtg;->b:Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object v1, p0, Lhtg;->c:Lim5;

    iget-object v2, p0, Lhtg;->d:Lim5;

    iget-object v3, p0, Lhtg;->e:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p0, p0, Lhtg;->f:Lwrh;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzk(Lcom/google/android/gms/internal/ads/zzdyu;Lim5;Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lwrh;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
