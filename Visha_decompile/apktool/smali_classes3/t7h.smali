.class public final Lt7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7h;->a:Lg8i;

    iput-object p2, p0, Lt7h;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lt7h;)Lu7h;
    .locals 13

    iget-object p0, p0, Lt7h;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzab;->zza()F

    move-result v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzab;->zze()Z

    move-result v11

    if-nez p0, :cond_0

    new-instance p0, Lu7h;

    const/4 v9, -0x1

    const/4 v12, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lu7h;-><init>(IZZIIIIIFZZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sget-object v1, Lcye;->db:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzj(Landroid/media/AudioManager;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    move v7, v0

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    move v6, v0

    move v7, v6

    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    new-instance p0, Lu7h;

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lu7h;-><init>(IZZIIIIIFZZ)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Ls7h;

    invoke-direct {v0, p0}, Ls7h;-><init>(Lt7h;)V

    iget-object p0, p0, Lt7h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
