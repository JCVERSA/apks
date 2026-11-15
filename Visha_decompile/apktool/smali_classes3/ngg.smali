.class public final Lngg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Leff;


# direct methods
.method public constructor <init>(Logg;Leff;)V
    .locals 0

    iput-object p2, p0, Lngg;->a:Leff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to load media data due to video view load failure."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p0, p0, Lngg;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lejf;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lngg;->a:Leff;

    new-instance v0, Lnhf;

    new-instance v1, Lmgg;

    invoke-direct {v1, p0}, Lmgg;-><init>(Leff;)V

    invoke-direct {v0, v1}, Lnhf;-><init>(Ljava/util/function/Consumer;)V

    const-string p0, "/video"

    invoke-interface {p1, p0, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    invoke-interface {p1}, Lejf;->zzaa()V

    return-void

    :cond_0
    iget-object p0, p0, Lngg;->a:Leff;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 v0, 0x1

    const-string v1, "Missing webview from video view future."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
