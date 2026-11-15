.class public abstract Llc3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Landroid/media/audiofx/Equalizer;

.field public static c:Landroid/media/audiofx/BassBoost;

.field public static d:Landroid/media/audiofx/PresetReverb;

.field public static e:Landroid/media/audiofx/Virtualizer;

.field public static f:Lmc3;

.field public static final g:Ljava/util/List;

.field public static h:Landroidx/lifecycle/MutableLiveData;

.field public static volatile i:Ljava/lang/Boolean;

.field public static volatile j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Llc3;->g:Ljava/util/List;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static a(S)V
    .locals 3

    :try_start_0
    sget-object v0, Llc3;->f:Lmc3;

    iput-short p0, v0, Lmc3;->b:S

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :goto_0
    sget-object p0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result p0

    if-ge v0, p0, :cond_1

    sget-object p0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    sget-object v1, Llc3;->g:Ljava/util/List;

    sget-object v2, Llc3;->f:Lmc3;

    iget-short v2, v2, Lmc3;->b:S

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    aget-short v1, v1, v0

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {}, Llc3;->e()S

    move-result p0

    if-ge v0, p0, :cond_1

    sget-object p0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    sget-object v1, Llc3;->f:Lmc3;

    iget-object v1, v1, Lmc3;->c:[S

    aget-short v1, v1, v0

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq equalizerPreset Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static b(S)S
    .locals 2

    :try_start_0
    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p0}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq getBandLevel Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object p0, Llc3;->i:Ljava/lang/Boolean;

    sget-wide v1, Llc3;->j:J

    const-wide/16 v5, 0x7d0

    move-object v0, p0

    move-wide v3, v7

    invoke-static/range {v0 .. v6}, Llc3;->i(Ljava/lang/Boolean;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    new-instance p0, Lcom/transsion/hubsdk/api/media/TranAudioManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getDsOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Llc3;->i:Ljava/lang/Boolean;

    sput-wide v7, Llc3;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDsOn Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Llc3;->f:Lmc3;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lmc3;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()S
    .locals 3

    :try_start_0
    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set eq getNumberOfBands Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EqSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static f()Lmc3;
    .locals 2

    sget-object v0, Llc3;->f:Lmc3;

    if-nez v0, :cond_0

    invoke-static {}, Lmc3;->a()Lmc3;

    move-result-object v0

    sput-object v0, Llc3;->f:Lmc3;

    if-nez v0, :cond_0

    new-instance v0, Lmc3;

    invoke-direct {v0}, Lmc3;-><init>()V

    sput-object v0, Llc3;->f:Lmc3;

    const-string v0, "EqSetting"

    const-string v1, "getValues NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Llc3;->f:Lmc3;

    return-object v0
.end method

.method public static g(I)V
    .locals 5

    const/4 v0, 0x5

    sget-boolean v1, Lpp3;->u:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lmw2;->e()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: audioSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Llc3;->a:I

    :try_start_0
    new-instance p0, Landroid/media/audiofx/Equalizer;

    sget v1, Llc3;->a:I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object p0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    new-instance p0, Landroid/media/audiofx/BassBoost;

    sget v1, Llc3;->a:I

    invoke-direct {p0, v3, v1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object p0, Llc3;->c:Landroid/media/audiofx/BassBoost;

    new-instance p0, Landroid/media/audiofx/PresetReverb;

    sget v1, Llc3;->a:I

    invoke-direct {p0, v3, v1}, Landroid/media/audiofx/PresetReverb;-><init>(II)V

    sput-object p0, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    new-instance p0, Landroid/media/audiofx/Virtualizer;

    sget v1, Llc3;->a:I

    invoke-direct {p0, v3, v1}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    sput-object p0, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    sget-object p0, Llc3;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_2

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_4

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_5

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_6

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_7

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v0, [S

    fill-array-data v1, :array_8

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p0

    sput-object p0, Llc3;->f:Lmc3;

    iget-short p0, p0, Lmc3;->b:S

    if-lez p0, :cond_1

    move p0, v3

    :goto_0
    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    if-ge p0, v0, :cond_2

    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    sget-object v1, Llc3;->g:Ljava/util/List;

    sget-object v4, Llc3;->f:Lmc3;

    iget-short v4, v4, Lmc3;->b:S

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    aget-short v1, v1, p0

    invoke-virtual {v0, p0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p0, v3

    :goto_1
    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    if-ge p0, v0, :cond_2

    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    sget-object v1, Llc3;->f:Lmc3;

    iget-object v1, v1, Lmc3;->c:[S

    aget-short v1, v1, p0

    invoke-virtual {v0, p0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_1

    :cond_2
    sget-object p0, Llc3;->c:Landroid/media/audiofx/BassBoost;

    invoke-virtual {p0, v3}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    sget-object p0, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    sget-object v0, Llc3;->f:Lmc3;

    iget-short v0, v0, Lmc3;->d:S

    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V

    sget-object p0, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    sget-object v0, Llc3;->f:Lmc3;

    iget-short v0, v0, Lmc3;->f:S

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    sget-object p0, Llc3;->f:Lmc3;

    iget-boolean p0, p0, Lmc3;->a:Z

    invoke-static {p0}, Llc3;->m(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EqSetting exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    nop

    :array_0
    .array-data 2
        -0x64s
        -0xc8s
        0x1f4s
        0x12cs
        0x1f4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0xfas
        0x96s
        -0x32s
        0x96s
        0xfas
    .end array-data

    nop

    :array_2
    .array-data 2
        -0x32s
        0x64s
        0xfas
        0x32s
        -0x64s
    .end array-data

    nop

    :array_3
    .array-data 2
        0xfas
        0x96s
        0x0s
        0x32s
        0x96s
    .end array-data

    nop

    :array_4
    .array-data 2
        0xfas
        0x96s
        -0x64s
        0xc8s
        0xc8s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x12cs
        0x0s
        0x64s
        0xc8s
        0x32s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    nop

    :array_7
    .array-data 2
        0xc8s
        0x64s
        -0x64s
        0x64s
        0xfas
    .end array-data

    nop

    :array_8
    .array-data 2
        0xc8s
        0x32s
        0x1c2s
        0x96s
        0x0s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x96s
        0x0s
        0x0s
        0x64s
        -0x32s
    .end array-data
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Llc3;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static i(Ljava/lang/Boolean;JJJ)Z
    .locals 0

    if-eqz p0, :cond_0

    cmp-long p0, p3, p1

    if-ltz p0, :cond_0

    sub-long/2addr p3, p1

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j()V
    .locals 2

    const-string v0, "EqSetting"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    sput-object v1, Llc3;->b:Landroid/media/audiofx/Equalizer;

    :cond_0
    sget-object v0, Llc3;->c:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    sput-object v1, Llc3;->c:Landroid/media/audiofx/BassBoost;

    :cond_1
    sget-object v0, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    sput-object v1, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    :cond_2
    sget-object v0, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    sput-object v1, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    :cond_3
    return-void
.end method

.method public static k(SS)V
    .locals 1

    :try_start_0
    sget-object v0, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p0, p1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    sget-object v0, Llc3;->f:Lmc3;

    iget-object v0, v0, Lmc3;->c:[S

    aput-short p1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set eq setBandLevel Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EqSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static l(S)V
    .locals 2

    :try_start_0
    sget-object v0, Llc3;->f:Lmc3;

    iput-short p0, v0, Lmc3;->e:S

    sget-object v0, Llc3;->c:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0, p0}, Landroid/media/audiofx/BassBoost;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq setBassBoost Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static m(Z)V
    .locals 12

    const-string v0, "EqSetting"

    :try_start_0
    sget-object v1, Llc3;->b:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    sget-object v1, Llc3;->c:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    if-eqz v1, :cond_0

    sget-object v1, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "setEnable equalizer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Llc3;->a:I

    invoke-static {v1}, Llc3;->g(I)V

    :cond_1
    sget-object v1, Llc3;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v1

    sget-object v2, Llc3;->c:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v2

    sget-object v3, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v3

    sget-object v4, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v4, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v4

    sget-object v5, Llc3;->f:Lmc3;

    iput-boolean p0, v5, Lmc3;->a:Z

    const-string v6, "set eq value Enable:"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set eq enable Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Llc3;->f:Lmc3;

    iget-boolean v0, v0, Lmc3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static n(S)V
    .locals 2

    :try_start_0
    sget-object v0, Llc3;->f:Lmc3;

    iput-short p0, v0, Lmc3;->d:S

    sget-object v0, Llc3;->d:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v0, p0}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq setPresetReverb Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static o(S)V
    .locals 2

    :try_start_0
    sget-object v0, Llc3;->f:Lmc3;

    iput-short p0, v0, Lmc3;->f:S

    sget-object v0, Llc3;->e:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0, p0}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq setVirtualizer Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
