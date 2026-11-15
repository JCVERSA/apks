.class public final Lojh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lsjh;


# direct methods
.method public constructor <init>(Lsjh;)V
    .locals 0

    iput-object p1, p0, Lojh;->a:Lsjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxq;

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lojh;->a:Lsjh;

    new-instance p1, Lqjh;

    const/4 v0, 0x0

    invoke-static {p0}, Lsjh;->b(Lsjh;)Lcph;

    move-result-object v1

    invoke-direct {p1, v0, v1, v0}, Lqjh;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcph;Lrjh;)V

    invoke-static {p0, p1}, Lsjh;->d(Lsjh;Lqjh;)V

    invoke-static {p0}, Lsjh;->a(Lsjh;)Lqjh;

    move-result-object p0

    return-object p0
.end method
