.class public final Lg4j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lg4j;->a:Lcom/google/android/gms/ads/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJLjava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lg4j;->a:Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/zzk;)Lrwh;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1, p4}, Lrwh;->e(IJLjava/lang/String;)Lxda;

    return-void
.end method

.method public final b(IJ)V
    .locals 2

    iget-object p0, p0, Lg4j;->a:Lcom/google/android/gms/ads/internal/zzk;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/zzk;)Lrwh;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lrwh;->d(IJ)Lxda;

    return-void
.end method
