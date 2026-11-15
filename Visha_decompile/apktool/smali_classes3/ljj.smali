.class public final Lljj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lojj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lerj;)I
    .locals 0

    iget-object p0, p1, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic b(Ljjj;Lerj;)Lnjj;
    .locals 0

    sget-object p0, Lnjj;->a:Lnjj;

    return-object p0
.end method

.method public final c(Ljjj;Lerj;)Lpjj;
    .locals 1

    iget-object p0, p2, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lpjj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrr;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzsb;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzsb;-><init>(I)V

    const/16 v0, 0x1771

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzrr;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p1}, Lpjj;-><init>(Lcom/google/android/gms/internal/ads/zzrr;)V

    return-object p0
.end method
