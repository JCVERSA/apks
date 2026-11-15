.class public final synthetic Lmnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lwth;

.field public final synthetic b:Ldwg;


# direct methods
.method public synthetic constructor <init>(Lwth;Ldwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmnh;->a:Lwth;

    iput-object p2, p0, Lmnh;->b:Ldwg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lvif;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "URL missing from httpTrack GMSG."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lvif;->zzD()Lhmh;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lhmh;->i0:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmnh;->a:Lwth;

    iget-object p1, p2, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    const/4 p2, 0x0

    invoke-virtual {p0, v4, p1, p2, p2}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    return-void

    :cond_2
    :goto_0
    check-cast p1, Lrjf;

    invoke-interface {p1}, Lrjf;->zzR()Lkmh;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Common configuration cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p0, p0, Lmnh;->b:Ldwg;

    new-instance p2, Lfwg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lkmh;->b:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lfwg;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Ldwg;->e(Lfwg;)V

    return-void
.end method
