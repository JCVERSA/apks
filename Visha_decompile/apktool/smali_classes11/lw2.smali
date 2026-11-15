.class public Llw2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public a:I

.field public b:Ljava/util/List;

.field public c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llw2;->d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Llw2;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llw2;->b:Ljava/util/List;

    const/16 v0, 0xc

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Llw2;->c:[I

    invoke-virtual {p0}, Llw2;->d()V

    return-void
.end method

.method public static b(II)I
    .locals 0

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static c()Llw2;
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "dolby_audio_eq_value"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Llw2;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llw2;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Llw2;->j()V

    :cond_0
    return-object v0
.end method

.method public static g(I)I
    .locals 0

    return p0
.end method

.method public static l(Llw2;)V
    .locals 2

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "dolby_audio_eq_value"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Llw2;->a:I

    return p0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llw2;->e()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    const/16 v1, 0x14

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llw2;->b:Ljava/util/List;

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Llw2;->b:Ljava/util/List;

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        -0xa
        -0xa
        -0xe
        -0x10
        -0x12
        -0x14
        -0x1
        0x10
        0x21
        0x32
        0x2d
        0x28
        0x23
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x32
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x19
        0x15
        0x13
        0x11
        0xf
        0xa
        0x5
        0x0
        -0x5
        0x0
        0x5
        0xa
        0xf
        0x13
        0x15
        0x17
        0x19
        0x19
        0x19
    .end array-data

    :array_2
    .array-data 4
        -0x5
        -0x5
        0x1
        0x4
        0x7
        0xa
        0x10
        0x13
        0x16
        0x19
        0x14
        0xf
        0xa
        0x5
        -0x1
        -0x4
        -0x7
        -0xa
        -0xa
        -0xa
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x19
        0x15
        0x13
        0x11
        0xf
        0x9
        0x6
        0x3
        0x0
        0x2
        0x3
        0x4
        0x5
        0x9
        0xb
        0xd
        0xf
        0xf
        0xf
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x19
        0x15
        0x13
        0x11
        0xf
        0x8
        0x2
        -0x4
        -0xa
        -0x1
        0x6
        0xd
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
    .end array-data

    :array_5
    .array-data 4
        0x1e
        0x1e
        0x15
        0xe
        0x7
        0x0
        0x4
        0x6
        0x8
        0xa
        0xe
        0x10
        0x12
        0x14
        0xe
        0xb
        0x8
        0x5
        0x5
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x14
        0x10
        0xe
        0xc
        0xa
        0x5
        0x0
        -0x5
        -0xa
        -0x5
        0x0
        0x5
        0xa
        0x10
        0x13
        0x16
        0x19
        0x19
        0x19
    .end array-data

    :array_8
    .array-data 4
        0x14
        0x14
        0xe
        0xb
        0x8
        0x5
        0xf
        0x19
        0x23
        0x2d
        0x24
        0x1d
        0x16
        0xf
        0x9
        0x6
        0x3
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xf
        0xf
        0x9
        0x6
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x6
        0x8
        0xa
        0x4
        0x1
        -0x2
        -0x5
        -0x5
        -0x5
    .end array-data
.end method

.method public f()Z
    .locals 4

    const-string v0, "DolbyAudioEqValue"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Llw2;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Llw2;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Llw2;->k(Ljava/lang/Object;)[I

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    if-le v2, v3, :cond_1

    aget p0, p0, v3

    if-nez p0, :cond_0

    move v1, v3

    :cond_0
    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "Invalid preset structure in isOldPreset"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in isOldPreset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public h([I[II)V
    .locals 7

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Llw2;->c:[I

    aget v1, v0, p3

    const/4 v2, 0x4

    if-nez p3, :cond_1

    aget p0, p2, v1

    aput p0, p1, p3

    add-int/lit8 p0, p3, 0x1

    aget v3, p2, v1

    aput v3, p1, p0

    aget v3, p2, v1

    aget p0, v0, p0

    aget p0, p2, p0

    invoke-static {v3, p0}, Llw2;->b(II)I

    move-result p0

    add-int/lit8 v0, p3, 0x2

    aget v3, p2, v1

    sub-int/2addr v3, p0

    aput v3, p1, v0

    add-int/lit8 v0, p3, 0x3

    aget v3, p2, v1

    mul-int/lit8 v4, p0, 0x2

    sub-int/2addr v3, v4

    aput v3, p1, v0

    add-int/2addr p3, v2

    aget p2, p2, v1

    mul-int/lit8 p0, p0, 0x3

    sub-int/2addr p2, p0

    aput p2, p1, p3

    goto/16 :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    add-int/lit8 p0, p3, -0x1

    aget p0, v0, p0

    aget p0, p2, p0

    aget v0, p2, v1

    invoke-static {p0, v0}, Llw2;->b(II)I

    move-result p0

    mul-int/2addr p3, v2

    add-int/lit8 v0, p3, -0x2

    aget v2, p2, v1

    mul-int/lit8 v3, p0, 0x3

    add-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, p3, -0x1

    aget v2, p2, v1

    mul-int/lit8 v3, p0, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v0

    aget v0, p2, v1

    add-int/2addr v0, p0

    aput v0, p1, p3

    add-int/lit8 p0, p3, 0x1

    aget v0, p2, v1

    aput v0, p1, p0

    add-int/lit8 p0, p3, 0x2

    aget v0, p2, v1

    aput v0, p1, p0

    add-int/lit8 p3, p3, 0x3

    aget p0, p2, v1

    aput p0, p1, p3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p3, -0x1

    aget v0, v0, v3

    aget v0, p2, v0

    aget v3, p2, v1

    invoke-static {v0, v3}, Llw2;->b(II)I

    move-result v0

    mul-int/lit8 v3, p3, 0x4

    add-int/lit8 v4, v3, -0x2

    aget v5, p2, v1

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v3, -0x1

    aget v5, p2, v1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    aput v5, p1, v4

    aget v4, p2, v1

    add-int/2addr v4, v0

    aput v4, p1, v3

    aget v0, p2, v1

    iget-object p0, p0, Llw2;->c:[I

    add-int/lit8 p3, p3, 0x1

    aget p0, p0, p3

    aget p0, p2, p0

    invoke-static {v0, p0}, Llw2;->b(II)I

    move-result p0

    add-int/lit8 p3, v3, 0x1

    aget v0, p2, v1

    aput v0, p1, p3

    add-int/lit8 p3, v3, 0x2

    aget v0, p2, v1

    sub-int/2addr v0, p0

    aput v0, p1, p3

    add-int/lit8 p3, v3, 0x3

    aget v0, p2, v1

    mul-int/lit8 v4, p0, 0x2

    sub-int/2addr v0, v4

    aput v0, p1, p3

    add-int/2addr v3, v2

    aget p2, p2, v1

    sub-int/2addr p2, p0

    mul-int/lit8 p2, p2, 0x3

    aput p2, p1, v3

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "DolbyAudioEqValue"

    const-string p1, "mappingBandGain: invalid param"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i([I)[I
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Llw2;->c:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0, p1, v1}, Llw2;->h([I[II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandGains mapping before:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\rBandGains mapping after:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DolbyAudioEqValue"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public j()V
    .locals 4

    const-string v0, "DolbyAudioEqValue"

    :try_start_0
    iget-object v1, p0, Llw2;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Llw2;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Llw2;->k(Ljava/lang/Object;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Llw2;->i([I)[I

    move-result-object v1

    iget-object v2, p0, Llw2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Llw2;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llw2;->e()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v1, "Failed to get custom gains in resetPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Llw2;->d()V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v1, "preset is null or empty in resetPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in resetPreset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Llw2;->d()V

    :goto_2
    return-void
.end method

.method public final k(Ljava/lang/Object;)[I
    .locals 6

    const/4 p0, 0x0

    const-string v0, "DolbyAudioEqValue"

    if-nez p1, :cond_0

    const-string p1, "Object is null in safeGetIntArray"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    instance-of v1, p1, [I

    if-eqz v1, :cond_1

    check-cast p1, [I

    return-object p1

    :cond_1
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-numeric item in ArrayList at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully converted ArrayList to int[] with size: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert ArrayList to int[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported object type in safeGetIntArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Llw2;->a:I

    return-void
.end method
