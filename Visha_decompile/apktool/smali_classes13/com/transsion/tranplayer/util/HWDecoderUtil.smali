.class public Lcom/transsion/tranplayer/util/HWDecoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;,
        Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;,
        Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;,
        Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;
    }
.end annotation


# static fields
.field private static final sAudioOutputBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

.field private static final sBlacklistedDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

.field private static final sDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

.field private static final sSystemPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    sget-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v2, "ro.product.board"

    const-string v3, "MSM8225"

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    const-string v4, "hawaii"

    invoke-direct {v3, v2, v4, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    filled-new-array {v0, v3}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sBlacklistedDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v2, v0

    const-string v3, "SEMC"

    const-string v15, "ro.product.brand"

    invoke-direct {v0, v15, v3, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v3, v0

    const-string v4, "msm7627"

    const-string v14, "ro.board.platform"

    invoke-direct {v0, v14, v4, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v4, v0

    sget-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v13, "Amazon"

    invoke-direct {v0, v15, v13, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v5, v0

    sget-object v12, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->OMX:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v6, "omap3"

    invoke-direct {v0, v14, v6, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v6, v0

    const-string v7, "rockchip"

    invoke-direct {v0, v14, v7, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v7, v0

    const-string v8, "rk29"

    invoke-direct {v0, v14, v8, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v8, v0

    const-string v9, "msm7630"

    invoke-direct {v0, v14, v9, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v9, v0

    const-string v10, "s5pc"

    invoke-direct {v0, v14, v10, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v10, v0

    const-string v11, "montblanc"

    invoke-direct {v0, v14, v11, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v11, v0

    move-object/from16 v16, v13

    const-string v13, "exdroid"

    invoke-direct {v0, v14, v13, v12}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v13, v12

    move-object v12, v0

    move-object/from16 v17, v15

    const-string v15, "sun6i"

    invoke-direct {v0, v14, v15, v13}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v15, v16

    move-object v13, v0

    const-string v15, "exynos4"

    invoke-direct {v0, v14, v15, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v1, v14

    move-object v14, v0

    sget-object v15, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    move-object/from16 v23, v2

    const-string v2, "omap4"

    invoke-direct {v0, v1, v2, v15}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object v2, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object v15, v0

    move-object/from16 v26, v3

    const-string v3, "tegra"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v16, v0

    const-string v3, "tegra3"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v17, v0

    const-string v3, "msm8660"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v18, v0

    const-string v3, "exynos5"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v19, v0

    const-string v3, "rk30"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v20, v0

    const-string v3, "rk31"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v21, v0

    const-string v3, "mv88de3100"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-object/from16 v22, v0

    const-string v1, "ro.hardware"

    const-string v3, "mt83"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V

    move-object/from16 v2, v23

    move-object/from16 v0, v25

    move-object/from16 v3, v26

    filled-new-array/range {v2 .. v22}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    move-result-object v1

    sput-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    new-instance v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

    sget-object v2, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    move-object/from16 v3, v24

    invoke-direct {v1, v0, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;)V

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

    const-string v4, "ro.product.manufacturer"

    invoke-direct {v0, v4, v3, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;)V

    filled-new-array {v1, v0}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sAudioOutputBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioOutputFromDevice()Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;
    .locals 6

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sAudioOutputBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;->key:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/tranplayer/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutputBySOC;->aout:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    return-object v0
.end method

.method public static getDecoderFromDevice()Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;
    .locals 7

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sBlacklistedDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/tranplayer/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, v4, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v4, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->dec:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isJellyBeanMR2OrLater:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object v0

    :cond_2
    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sDecoderBySOCList:[Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/tranplayer/util/HWDecoderUtil;->getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->dec:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->UNKNOWN:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method private static getSystemPropertyCached(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-static {p0, v1}, Lcom/transsion/tranplayer/util/HWDecoderUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
