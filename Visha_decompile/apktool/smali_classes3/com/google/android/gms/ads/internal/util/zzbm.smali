.class public final Lcom/google/android/gms/ads/internal/util/zzbm;
.super Lcom/google/android/gms/internal/ads/c;
.source "SourceFile"


# instance fields
.field public final n:Leff;

.field public final o:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Leff;)V
    .locals 1

    new-instance p2, Lb5f;

    invoke-direct {p2, p3}, Lb5f;-><init>(Leff;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/c;-><init>(ILjava/lang/String;Lime;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->n:Leff;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/client/zzl;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->o:Lcom/google/android/gms/ads/internal/util/client/zzl;

    const-string p0, "GET"

    invoke-virtual {p2, p1, p0, p3, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method public final a(Lfme;)Lkme;
    .locals 0

    invoke-static {p1}, Lane;->b(Lfme;)Lxle;

    move-result-object p0

    invoke-static {p1, p0}, Lkme;->b(Ljava/lang/Object;Lxle;)Lkme;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lfme;

    iget-object v0, p1, Lfme;->c:Ljava/util/Map;

    iget v1, p1, Lfme;->a:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->o:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzf(Ljava/util/Map;I)V

    iget-object v0, p1, Lfme;->b:[B

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzh([B)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->n:Leff;

    invoke-virtual {p0, p1}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method
