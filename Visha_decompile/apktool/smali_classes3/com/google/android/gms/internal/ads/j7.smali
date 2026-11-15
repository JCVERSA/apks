.class public final Lcom/google/android/gms/internal/ads/j7;
.super Lq3i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzfwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwf;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j7;->d:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {p0}, Lq3i;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwf;->zzg(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j7;->d:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwf;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfwf;->zzg(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lt2i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j7;->d:Lcom/google/android/gms/internal/ads/zzfwf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwf;->zzd(Lcom/google/android/gms/internal/ads/zzfwf;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j7;->d:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j7;->a()V

    iget p0, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzj(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j7;->d:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzl()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j7;->a()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j7;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwf;->zzj(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/j7;->c:I

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;->zzn(Lcom/google/android/gms/internal/ads/zzfwf;ILjava/lang/Object;)V

    return-object v1
.end method
