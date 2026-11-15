.class public final Lv2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lejf;


# direct methods
.method public constructor <init>(Lejf;)V
    .locals 0

    iput-object p1, p0, Lv2f;->a:Lejf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "DefaultGmsgHandlers.attributionReportingManager"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 6

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lv2f;->a:Lejf;

    invoke-interface {p0}, Lejf;->zzD()Lhmh;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lejf;->zzD()Lhmh;

    move-result-object p1

    iget-object p1, p1, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/google/android/gms/ads/internal/util/zzbw;

    invoke-interface {p0}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lejf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loth;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lim5;

    return-void
.end method
