.class public final Ly1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebg;


# instance fields
.field public final synthetic a:Lnxg;

.field public final synthetic b:Lhmh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/h5;Lnxg;Lhmh;)V
    .locals 0

    iput-object p2, p0, Ly1h;->a:Lnxg;

    iput-object p3, p0, Ly1h;->b:Lhmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lwzf;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Ly1h;->a:Lnxg;

    iget-object p0, p0, Lnxg;->b:Ljava/lang/Object;

    check-cast p0, Leoh;

    invoke-virtual {p0, p1}, Leoh;->A(Z)V

    invoke-virtual {p0}, Leoh;->a()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot show rewarded video."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfl;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zza()Lhmh;
    .locals 0

    iget-object p0, p0, Ly1h;->b:Lhmh;

    return-object p0
.end method
