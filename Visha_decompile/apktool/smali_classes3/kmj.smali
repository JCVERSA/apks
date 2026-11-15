.class public final Lkmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapj;


# instance fields
.field public final b:Lapj;

.field public final c:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method public constructor <init>(Lapj;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkmj;->b:Lapj;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lkmj;->c:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p0, p0, Lkmj;->b:Lapj;

    invoke-interface {p0, p1, p2}, Lapj;->a(J)V

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 0

    iget-object p0, p0, Lkmj;->b:Lapj;

    invoke-interface {p0, p1}, Lapj;->b(Lz7j;)Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lkmj;->c:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public final zzb()J
    .locals 2

    iget-object p0, p0, Lkmj;->b:Lapj;

    invoke-interface {p0}, Lapj;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-object p0, p0, Lkmj;->b:Lapj;

    invoke-interface {p0}, Lapj;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()Z
    .locals 0

    iget-object p0, p0, Lkmj;->b:Lapj;

    invoke-interface {p0}, Lapj;->zzp()Z

    move-result p0

    return p0
.end method
