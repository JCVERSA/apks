.class public final Lggj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lggj;

.field public static final d:Lcom/google/android/gms/internal/ads/zzfww;

.field public static final e:Lcom/google/android/gms/internal/ads/zzfwz;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lggj;

    sget-object v1, Legj;->d:Legj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    invoke-direct {v0, v1}, Lggj;-><init>(Ljava/util/List;)V

    sput-object v0, Lggj;->c:Lggj;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    sput-object v0, Lggj;->d:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance v0, Lcom/google/android/gms/internal/ads/l7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l7;->c()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v0

    sput-object v0, Lggj;->e:Lcom/google/android/gms/internal/ads/zzfwz;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lggj;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Legj;

    iget-object v3, p0, Lggj;->a:Landroid/util/SparseArray;

    iget v4, v2, Legj;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Legj;

    iget v1, v1, Legj;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Lggj;->b:I

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lggj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_surround_sound_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lggj;->d(Landroid/content/Context;Landroid/content/Intent;Lhvg;Lsgj;)Lggj;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;Lhvg;Lsgj;)Lggj;
    .locals 9

    const/4 v0, 0x1

    invoke-static {p0}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-nez p3, :cond_2

    sget p3, Lkfh;->a:I

    const/4 v4, 0x0

    if-lt p3, v2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lhvg;->a()Ljgf;

    move-result-object p3

    iget-object p3, p3, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-static {v1, p3}, Lln;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :catch_0
    :cond_0
    :goto_0
    move-object p3, v4

    goto :goto_1

    :cond_1
    new-instance v4, Lsgj;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioDeviceInfo;

    invoke-direct {v4, p3}, Lsgj;-><init>(Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    :cond_2
    :goto_1
    sget v4, Lkfh;->a:I

    const/16 v5, 0xc

    const/4 v6, 0x2

    if-lt v4, v2, :cond_a

    invoke-static {p0}, Lkfh;->n(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p0}, Lkfh;->j(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    invoke-virtual {p2}, Lhvg;->a()Ljgf;

    move-result-object p0

    iget-object p0, p0, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-static {v1, p0}, Lmn;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lggj;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Ljava/util/HashSet;

    filled-new-array {v5}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/s7;->h([I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lgn;->a(Ljava/lang/Object;)Landroid/media/AudioProfile;

    move-result-object p3

    invoke-static {p3}, Lhn;->a(Landroid/media/AudioProfile;)I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lin;->a(Landroid/media/AudioProfile;)I

    move-result v1

    invoke-static {v1}, Lkfh;->k(I)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lggj;->e:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfwz;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Set;

    invoke-static {p3}, Ljn;->a(Landroid/media/AudioProfile;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/s7;->h([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p3}, Ljn;->a(Landroid/media/AudioProfile;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/s7;->h([I)Ljava/util/List;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/2addr v3, v0

    goto :goto_2

    :cond_8
    sget p0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance p0, Ll4i;

    invoke-direct {p0}, Ll4i;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    new-instance v0, Legj;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-direct {v0, v1, p3}, Legj;-><init>(ILjava/util/Set;)V

    invoke-virtual {p0, v0}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    invoke-direct {p1, p0}, Lggj;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p3

    goto :goto_5

    :cond_b
    new-array v1, v0, [Landroid/media/AudioDeviceInfo;

    iget-object p3, p3, Lsgj;->a:Landroid/media/AudioDeviceInfo;

    aput-object p3, v1, v3

    move-object p3, v1

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/ads/m7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/m7;->h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/m7;

    const/16 v7, 0x1f

    if-lt v4, v7, :cond_c

    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/m7;->h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/m7;

    :cond_c
    if-lt v4, v2, :cond_d

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/m7;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/m7;

    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m7;->j()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v1

    array-length v2, p3

    move v7, v3

    :goto_6
    if-ge v7, v2, :cond_f

    aget-object v8, p3, v7

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfwr;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object p0, Lggj;->c:Lggj;

    return-object p0

    :cond_e
    add-int/2addr v7, v0

    goto :goto_6

    :cond_f
    new-instance p3, Lcom/google/android/gms/internal/ads/m7;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/m7;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/m7;

    const/16 v1, 0x1d

    const/16 v2, 0xa

    if-lt v4, v1, :cond_13

    invoke-static {p0}, Lkfh;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0}, Lkfh;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_10
    sget p0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance p0, Ll4i;

    invoke-direct {p0}, Ll4i;-><init>()V

    sget-object p1, Lggj;->e:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwz;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxb;->zze()Lx5i;

    move-result-object p1

    :cond_11
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lkfh;->C(I)I

    move-result v3

    if-lt v4, v3, :cond_11

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    const v3, 0xbb80

    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-virtual {p2}, Lhvg;->a()Ljgf;

    move-result-object v3

    iget-object v3, v3, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-static {v1, v3}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    goto :goto_7

    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    invoke-virtual {p0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/m7;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/m7;

    new-instance p0, Lggj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/m7;->j()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s7;->i(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v2}, Lggj;->e([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lggj;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "use_external_surround_sound_flag"

    invoke-static {p0, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_14

    move p2, v0

    goto :goto_8

    :cond_14
    move p2, v3

    :goto_8
    if-nez p2, :cond_15

    invoke-static {}, Lggj;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const-string v1, "external_surround_sound_enabled"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_16

    sget-object p0, Lggj;->d:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/m7;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/m7;

    :cond_16
    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_18

    const-string p0, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/s7;->h([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/m7;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/m7;

    :cond_17
    new-instance p0, Lggj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/m7;->j()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/s7;->i(Ljava/util/Collection;)[I

    move-result-object p2

    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lggj;->e([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lggj;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_18
    new-instance p0, Lggj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/m7;->j()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s7;->i(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v2}, Lggj;->e([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lggj;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static e([II)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v0, Ll4i;

    invoke-direct {v0}, Ll4i;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    new-instance v3, Legj;

    invoke-direct {v3, v2, p1}, Legj;-><init>(II)V

    invoke-virtual {v0, v3}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public static f()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final b(Lerj;Lhvg;)Landroid/util/Pair;
    .locals 8

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lerj;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lbue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lggj;->e:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwz;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/16 v5, 0x12

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-static {v1, v5}, Lkfh;->h(Landroid/util/SparseArray;I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    move v1, v5

    :cond_2
    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-static {v1, v3}, Lkfh;->h(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v6, 0x1e

    if-ne v1, v6, :cond_5

    iget-object v7, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-static {v7, v6}, Lkfh;->h(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    iget-object p0, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-static {p0, v1}, Lkfh;->h(Landroid/util/SparseArray;I)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Legj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, p1, Lerj;->E:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    if-ne v1, v5, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lkfh;->a:I

    const/16 p2, 0x21

    if-ge p1, p2, :cond_7

    const/16 p0, 0xa

    if-le v6, p0, :cond_a

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v6}, Legj;->b(I)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_8
    :goto_3
    iget p1, p1, Lerj;->F:I

    if-ne p1, v7, :cond_9

    const p1, 0xbb80

    :cond_9
    invoke-virtual {p0, p1, p2}, Legj;->a(ILhvg;)I

    move-result v6

    :cond_a
    sget p0, Lkfh;->a:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_d

    if-ne v6, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 p1, 0x3

    if-eq v6, p1, :cond_c

    const/4 p1, 0x4

    if-eq v6, p1, :cond_c

    const/4 p1, 0x5

    if-ne v6, p1, :cond_d

    :cond_c
    move v3, v4

    goto :goto_4

    :cond_d
    move v3, v6

    :goto_4
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_e

    const-string p0, "fugu"

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    if-ne v3, p0, :cond_e

    const/4 v3, 0x2

    :cond_e
    invoke-static {v3}, Lkfh;->D(I)I

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lggj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lggj;

    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    iget-object v3, p1, Lggj;->a:Landroid/util/SparseArray;

    sget v4, Lkfh;->a:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    invoke-static {v1, v3}, Lmkb;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget p0, p0, Lggj;->b:I

    iget p1, p1, Lggj;->b:I

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    sget v0, Lkfh;->a:I

    iget-object v1, p0, Lggj;->a:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Llkb;->a(Landroid/util/SparseArray;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x11

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    iget p0, p0, Lggj;->b:I

    mul-int/2addr v0, v2

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lggj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lggj;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", audioProfiles="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
