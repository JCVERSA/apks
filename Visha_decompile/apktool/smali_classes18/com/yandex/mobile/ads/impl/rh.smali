.class public final Lcom/yandex/mobile/ads/impl/rh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/rh$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/yandex/mobile/ads/impl/sh;

.field public static final d:Lcom/yandex/mobile/ads/impl/rh;

.field private static final e:Lcom/yandex/mobile/ads/impl/rh;

.field private static final f:Lcom/yandex/mobile/ads/impl/lk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/lk0<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/yandex/mobile/ads/impl/nm1;->a()Lcom/yandex/mobile/ads/impl/sh;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/rh;->c:Lcom/yandex/mobile/ads/impl/sh;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rh;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/rh;-><init>([II)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/rh;->d:Lcom/yandex/mobile/ads/impl/rh;

    new-instance v0, Lcom/yandex/mobile/ads/impl/rh;

    const/4 v2, 0x5

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v2, v5}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/rh;-><init>([II)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/rh;->e:Lcom/yandex/mobile/ads/impl/rh;

    new-instance v0, Lcom/yandex/mobile/ads/impl/lk0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lk0$a;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lk0$a;->a()Lcom/yandex/mobile/ads/impl/lk0;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/rh;->f:Lcom/yandex/mobile/ads/impl/lk0;

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    :goto_0
    iput p2, p0, Lcom/yandex/mobile/ads/impl/rh;->b:I

    return-void
.end method

.method public static bridge synthetic a()Lcom/yandex/mobile/ads/impl/lk0;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/rh;->f:Lcom/yandex/mobile/ads/impl/lk0;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/rh;
    .locals 6

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/yandex/mobile/ads/impl/rh;->c:Lcom/yandex/mobile/ads/impl/sh;

    .line 5
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/sh;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/yandex/mobile/ads/impl/f92;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/sh;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "external_surround_sound_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 7
    sget-object p0, Lcom/yandex/mobile/ads/impl/rh;->e:Lcom/yandex/mobile/ads/impl/rh;

    goto :goto_1

    :cond_1
    const/16 v2, 0x1d

    const/16 v4, 0x8

    if-lt v1, v2, :cond_3

    .line 8
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/f92;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/rh;

    .line 11
    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh$a;->a()[I

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/yandex/mobile/ads/impl/rh;-><init>([II)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    .line 12
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/rh;

    .line 14
    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 15
    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/rh;-><init>([II)V

    goto :goto_1

    .line 16
    :cond_5
    :goto_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/rh;->d:Lcom/yandex/mobile/ads/impl/rh;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)Landroid/util/Pair;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jc0;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/jc0;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/w01;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 20
    sget-object v1, Lcom/yandex/mobile/ads/impl/rh;->f:Lcom/yandex/mobile/ads/impl/lk0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/lk0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/16 v6, 0x12

    if-ne v0, v6, :cond_2

    .line 21
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    if-ne v0, v5, :cond_4

    .line 22
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {v7, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 23
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-ltz v7, :cond_10

    .line 24
    iget v7, p1, Lcom/yandex/mobile/ads/impl/jc0;->z:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    if-ne v0, v6, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    iget p0, p0, Lcom/yandex/mobile/ads/impl/rh;->b:I

    if-le v7, p0, :cond_a

    return-object v3

    .line 26
    :cond_6
    :goto_2
    iget p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    if-eq p0, v8, :cond_7

    goto :goto_3

    :cond_7
    const p0, 0xbb80

    .line 27
    :goto_3
    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v6, 0x1d

    if-lt p1, v6, :cond_8

    .line 28
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/rh$a;->a(II)I

    move-result v7

    goto :goto_4

    .line 29
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 30
    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/lk0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    move-object p1, p0

    .line 31
    :cond_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 32
    :cond_a
    :goto_4
    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_c

    if-ne v7, v2, :cond_b

    move v4, v5

    goto :goto_5

    :cond_b
    const/4 p1, 0x3

    if-eq v7, p1, :cond_d

    const/4 p1, 0x4

    if-eq v7, p1, :cond_d

    const/4 p1, 0x5

    if-ne v7, p1, :cond_c

    goto :goto_5

    :cond_c
    move v4, v7

    :cond_d
    :goto_5
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_e

    .line 33
    sget-object p0, Lcom/yandex/mobile/ads/impl/rh;->c:Lcom/yandex/mobile/ads/impl/sh;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sh;->b()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/f92;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    if-ne v4, p0, :cond_e

    const/4 v4, 0x2

    .line 34
    :cond_e
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/f92;->a(I)I

    move-result p0

    if-nez p0, :cond_f

    return-object v3

    .line 35
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_10
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/rh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/rh;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/yandex/mobile/ads/impl/rh;->b:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/rh;->b:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/rh;->b:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/mobile/ads/impl/rh;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rh;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
