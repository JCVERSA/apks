.class public final Lcom/yandex/mobile/ads/impl/sc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l60;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sc0$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/yandex/mobile/ads/impl/tc0;

.field public static final e:Lcom/yandex/mobile/ads/impl/l60$c;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Landroid/media/MediaDrm;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/nm1;->b()Lcom/yandex/mobile/ads/impl/tc0;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/sc0;->d:Lcom/yandex/mobile/ads/impl/tc0;

    new-instance v0, Litd;

    invoke-direct {v0}, Litd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/sc0;->e:Lcom/yandex/mobile/ads/impl/l60$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/yandex/mobile/ads/impl/rm;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sc0;->a(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    iput v1, p0, Lcom/yandex/mobile/ads/impl/sc0;->c:I

    sget-object p0, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/sc0;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sc0;->a(Landroid/media/MediaDrm;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2

    .line 125
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/rm;->b:Ljava/util/UUID;

    :cond_0
    return-object p0
.end method

.method private static a(Landroid/media/MediaDrm;)V
    .locals 2

    .line 2
    const-string v0, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/l60$b;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 106
    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$b;

    .line 107
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/sz$b;->a:Lcom/yandex/mobile/ads/impl/sz;

    .line 108
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->y:Lcom/yandex/mobile/ads/impl/sz$c;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p0, p4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/sc0;Lcom/yandex/mobile/ads/impl/l60$b;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/sc0;->a(Lcom/yandex/mobile/ads/impl/l60$b;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method

.method private static synthetic b(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/l60;
    .locals 2

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sc0;->c(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/sc0;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/l82; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/et0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/yandex/mobile/ads/impl/p40;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/p40;-><init>()V

    return-object p0
.end method

.method public static c(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/sc0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/l82;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/sc0;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/sc0;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 4
    :goto_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/l82;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/l82;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 5
    :goto_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/l82;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/l82;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static synthetic d(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/l60;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sc0;->b(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/l60;

    move-result-object p0

    return-object p0
.end method

.method private static d()Z
    .locals 2

    .line 8
    sget-object v0, Lcom/yandex/mobile/ads/impl/sc0;->d:Lcom/yandex/mobile/ads/impl/tc0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tc0;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f92;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a([BLjava/util/List;ILjava/util/HashMap;)Lcom/yandex/mobile/ads/impl/l60$a;
    .locals 15
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/f40$b;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/l60$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x17

    if-eqz v1, :cond_14

    .line 3
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    .line 4
    sget-object v4, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/f40$b;

    goto/16 :goto_4

    .line 6
    :cond_0
    sget v3, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v6, 0x1c

    if-lt v3, v6, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 7
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/f40$b;

    move v6, v5

    move v7, v6

    .line 8
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 9
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/mobile/ads/impl/f40$b;

    .line 10
    iget-object v9, v8, Lcom/yandex/mobile/ads/impl/f40$b;->f:[B

    .line 11
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v10, v8, Lcom/yandex/mobile/ads/impl/f40$b;->e:Ljava/lang/String;

    iget-object v11, v3, Lcom/yandex/mobile/ads/impl/f40$b;->e:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/f40$b;->d:Ljava/lang/String;

    iget-object v10, v3, Lcom/yandex/mobile/ads/impl/f40$b;->d:Ljava/lang/String;

    .line 13
    invoke-static {v8, v10}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 14
    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/zm1;->a([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    array-length v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-array v6, v7, [B

    move v7, v5

    move v8, v7

    .line 17
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 18
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/mobile/ads/impl/f40$b;

    .line 19
    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/f40$b;->f:[B

    .line 20
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    array-length v10, v9

    .line 22
    invoke-static {v9, v5, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 23
    :cond_2
    new-instance v1, Lcom/yandex/mobile/ads/impl/f40$b;

    .line 24
    iget-object v7, v3, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    .line 25
    iget-object v8, v3, Lcom/yandex/mobile/ads/impl/f40$b;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/f40$b;->e:Ljava/lang/String;

    invoke-direct {v1, v7, v8, v3, v6}, Lcom/yandex/mobile/ads/impl/f40$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_4

    :cond_3
    move v3, v5

    .line 26
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 27
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/f40$b;

    .line 28
    iget-object v7, v6, Lcom/yandex/mobile/ads/impl/f40$b;->f:[B

    .line 29
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/zm1;->d([B)I

    move-result v7

    .line 31
    sget v8, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-ge v8, v2, :cond_4

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    if-lt v8, v2, :cond_5

    if-ne v7, v4, :cond_5

    :goto_3
    move-object v1, v6

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 32
    :cond_6
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/f40$b;

    .line 33
    :goto_4
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/f40$b;->f:[B

    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v7, Lcom/yandex/mobile/ads/impl/rm;->e:Ljava/util/UUID;

    invoke-virtual {v7, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 36
    invoke-static {v3, v6}, Lcom/yandex/mobile/ads/impl/zm1;->a(Ljava/util/UUID;[B)[B

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v8

    .line 37
    :goto_5
    new-instance v8, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {v8, v6}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    .line 38
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    move-result v9

    .line 39
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/ag1;->m()S

    move-result v10

    .line 40
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/ag1;->m()S

    move-result v11

    const-string v12, "FrameworkMediaDrm"

    if-ne v10, v4, :cond_b

    if-eq v11, v4, :cond_8

    goto :goto_6

    .line 41
    :cond_8
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/ag1;->m()S

    move-result v4

    .line 42
    sget-object v13, Lcom/yandex/mobile/ads/impl/lo;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v4, v13}, Lcom/yandex/mobile/ads/impl/ag1;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 43
    const-string v8, "<LA_URL>"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    .line 44
    :cond_9
    const-string v6, "</DATA>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_a

    .line 45
    const-string v8, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v12, v8}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v9, 0x34

    .line 49
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 50
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v8, v10

    .line 52
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v8, v11

    .line 53
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_7

    .line 57
    :cond_b
    :goto_6
    const-string v4, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v12, v4}, Lcom/yandex/mobile/ads/impl/et0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v6, :cond_c

    .line 58
    array-length v4, v6

    goto :goto_8

    :cond_c
    move v4, v5

    :goto_8
    add-int/lit8 v4, v4, 0x20

    .line 59
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 60
    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v4, 0x70737368    # 3.013775E29f

    .line 61
    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_d

    .line 65
    array-length v4, v6

    if-eqz v4, :cond_d

    .line 66
    array-length v4, v6

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    :cond_d
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 69
    :cond_e
    sget v4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-ge v4, v2, :cond_f

    sget-object v8, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 70
    :cond_f
    invoke-virtual {v7, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lcom/yandex/mobile/ads/impl/sc0;->d:Lcom/yandex/mobile/ads/impl/tc0;

    .line 71
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    const-string v7, "QW1hem9u"

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v8, "decode(...)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 73
    sget-object v7, Lcom/yandex/mobile/ads/impl/f92;->c:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 74
    const-string v7, "QUZUQg=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 75
    sget-object v7, Lcom/yandex/mobile/ads/impl/f92;->d:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 76
    const-string v9, "QUZUUw=="

    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-static {v9, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 77
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 78
    const-string v9, "QUZUTQ=="

    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-static {v9, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 79
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 80
    const-string v9, "QUZUVA=="

    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-static {v5, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 81
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 82
    :cond_10
    invoke-static {v3, v6}, Lcom/yandex/mobile/ads/impl/zm1;->a(Ljava/util/UUID;[B)[B

    move-result-object v3

    if-eqz v3, :cond_11

    move-object v6, v3

    .line 83
    :cond_11
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/f40$b;->e:Ljava/lang/String;

    const/16 v7, 0x1a

    if-ge v4, v7, :cond_13

    .line 84
    sget-object v4, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    .line 85
    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 86
    const-string v3, "video/mp4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "audio/mp4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 87
    :cond_12
    const-string v5, "cenc"

    :cond_13
    move-object v14, v6

    move-object v6, v5

    move-object v5, v14

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 88
    :goto_9
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    move-object/from16 v4, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 89
    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v3

    .line 90
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    invoke-virtual {v3}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    .line 91
    sget-object v5, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v5, 0x1b

    if-lt v0, v5, :cond_15

    goto :goto_a

    .line 93
    :cond_15
    new-instance v0, Ljava/lang/String;

    sget-object v5, Lcom/yandex/mobile/ads/impl/lo;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v4, 0x2b

    const/16 v6, 0x2d

    .line 94
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    const/16 v6, 0x5f

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 96
    :cond_16
    :goto_a
    invoke-virtual {v3}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v5, "https://x"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 98
    const-string v0, ""

    .line 99
    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v1, :cond_18

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/f40$b;->d:Ljava/lang/String;

    .line 100
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 101
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/f40$b;->d:Ljava/lang/String;

    .line 102
    :cond_18
    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-lt v1, v2, :cond_19

    invoke-virtual {v3}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    .line 103
    :cond_19
    new-instance v1, Lcom/yandex/mobile/ads/impl/l60$a;

    invoke-direct {v1, v0, v4}, Lcom/yandex/mobile/ads/impl/l60$a;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/l60$d;
    .locals 2

    .line 104
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object p0

    .line 105
    new-instance v0, Lcom/yandex/mobile/ads/impl/l60$d;

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/l60$d;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final a([B)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/l60$b;)V
    .locals 2
    .param p1    # Lcom/yandex/mobile/ads/impl/l60$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    .line 114
    new-instance v1, Lhtd;

    invoke-direct {v1, p0, p1}, Lhtd;-><init>(Lcom/yandex/mobile/ads/impl/sc0;Lcom/yandex/mobile/ads/impl/l60$b;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final a([BLcom/yandex/mobile/ads/impl/mi1;)V
    .locals 2

    .line 116
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/sc0$a;->a(Landroid/media/MediaDrm;[BLcom/yandex/mobile/ads/impl/mi1;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    const-string p0, "FrameworkMediaDrm"

    const-string p1, "setLogSessionId failed."

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a([B[B)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 2

    .line 119
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/sc0$a;->a(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 121
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    invoke-direct {v0, p0, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 124
    throw p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    return p0
.end method

.method public final b([B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final b([B[B)[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/qo;->a([B)[B

    move-result-object p2

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final c()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p0

    return-object p0
.end method

.method public final d([B)Lcom/yandex/mobile/ads/impl/fv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 2
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "securityLevel"

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/rc0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sc0;->a:Ljava/util/UUID;

    .line 7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sc0;->a(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0}, Lcom/yandex/mobile/ads/impl/rc0;-><init>(Ljava/util/UUID;[BZ)V

    return-object v1
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/sc0;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sc0;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sc0;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
