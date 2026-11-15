.class public final Lvji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyji;


# instance fields
.field public final a:Leri;

.field public final b:Lcom/google/android/gms/internal/ads/k9;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/k9;Leri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvji;->b:Lcom/google/android/gms/internal/ads/k9;

    iput-object p2, p0, Lvji;->a:Leri;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/k9;)Lvji;
    .locals 2

    new-instance v0, Lvji;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfki;->a(Ljava/lang/String;)Leri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvji;-><init>(Lcom/google/android/gms/internal/ads/k9;Leri;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/k9;)Lvji;
    .locals 2

    new-instance v0, Lvji;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvji;-><init>(Lcom/google/android/gms/internal/ads/k9;Leri;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/k9;
    .locals 0

    iget-object p0, p0, Lvji;->b:Lcom/google/android/gms/internal/ads/k9;

    return-object p0
.end method

.method public final zzd()Leri;
    .locals 0

    iget-object p0, p0, Lvji;->a:Leri;

    return-object p0
.end method
