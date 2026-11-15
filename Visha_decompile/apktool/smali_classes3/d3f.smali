.class public final Ld3f;
.super Line;
.source "SourceFile"


# instance fields
.field public final synthetic p:[B

.field public final synthetic q:Ljava/util/Map;

.field public final synthetic r:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbo;ILjava/lang/String;Ljme;Lime;[BLjava/util/Map;Lcom/google/android/gms/ads/internal/util/client/zzl;)V
    .locals 0

    iput-object p6, p0, Ld3f;->p:[B

    iput-object p7, p0, Ld3f;->q:Ljava/util/Map;

    iput-object p8, p0, Ld3f;->r:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-direct {p0, p2, p3, p4, p5}, Line;-><init>(ILjava/lang/String;Ljme;Lime;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Line;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ld3f;->r:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzg(Ljava/lang/String;)V

    invoke-super {p0, p1}, Line;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final zzl()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ld3f;->q:Ljava/util/Map;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzx()[B
    .locals 0

    iget-object p0, p0, Ld3f;->p:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
