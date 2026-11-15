.class public abstract Ljrb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Landroid/media/audiofx/Equalizer;

.field public static c:Landroid/media/audiofx/BassBoost;

.field public static d:Landroid/media/audiofx/PresetReverb;

.field public static e:Landroid/media/audiofx/Virtualizer;

.field public static f:Lkrb;

.field public static g:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Ljrb;->g:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static a(S)V
    .locals 2

    :try_start_0
    sget-object v0, Ljrb;->f:Lkrb;

    iput-short p0, v0, Lkrb;->b:S

    if-eqz p0, :cond_0

    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Ljrb;->d()S

    move-result v0

    if-ge p0, v0, :cond_1

    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    sget-object v1, Ljrb;->f:Lkrb;

    iget-object v1, v1, Lkrb;->c:[S

    aget-short v1, v1, p0

    invoke-virtual {v0, p0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq equalizerPreset Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqSetting_Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public static b(S)S
    .locals 2

    :try_start_0
    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

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

    const-string v0, "EqSetting_Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Ljrb;->f:Lkrb;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lkrb;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()S
    .locals 3

    :try_start_0
    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

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

    const-string v1, "EqSetting_Video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static e()Lkrb;
    .locals 2

    sget-object v0, Ljrb;->f:Lkrb;

    if-nez v0, :cond_0

    invoke-static {}, Lkrb;->a()Lkrb;

    move-result-object v0

    sput-object v0, Ljrb;->f:Lkrb;

    if-nez v0, :cond_0

    new-instance v0, Lkrb;

    invoke-direct {v0}, Lkrb;-><init>()V

    sput-object v0, Ljrb;->f:Lkrb;

    const-string v0, "EqSetting_Video"

    const-string v1, "getValues NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Ljrb;->f:Lkrb;

    return-object v0
.end method

.method public static f(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EqSetting_Video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Ljrb;->a:I

    :try_start_0
    new-instance p0, Landroid/media/audiofx/Equalizer;

    sget v0, Ljrb;->a:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object p0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    new-instance p0, Landroid/media/audiofx/BassBoost;

    sget v0, Ljrb;->a:I

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object p0, Ljrb;->c:Landroid/media/audiofx/BassBoost;

    new-instance p0, Landroid/media/audiofx/PresetReverb;

    sget v0, Ljrb;->a:I

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/PresetReverb;-><init>(II)V

    sput-object p0, Ljrb;->d:Landroid/media/audiofx/PresetReverb;

    new-instance p0, Landroid/media/audiofx/Virtualizer;

    sget v0, Ljrb;->a:I

    invoke-direct {p0, v2, v0}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    sput-object p0, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p0

    sput-object p0, Ljrb;->f:Lkrb;

    iget-short p0, p0, Lkrb;->b:S

    if-lez p0, :cond_0

    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result p0

    if-ge v2, p0, :cond_1

    sget-object p0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    sget-object v0, Ljrb;->f:Lkrb;

    iget-object v0, v0, Lkrb;->c:[S

    aget-short v0, v0, v2

    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Ljrb;->c:Landroid/media/audiofx/BassBoost;

    sget-object v0, Ljrb;->f:Lkrb;

    iget-short v0, v0, Lkrb;->e:S

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    sget-object p0, Ljrb;->d:Landroid/media/audiofx/PresetReverb;

    sget-object v0, Ljrb;->f:Lkrb;

    iget-short v0, v0, Lkrb;->d:S

    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V

    sget-object p0, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

    sget-object v0, Ljrb;->f:Lkrb;

    iget-short v0, v0, Lkrb;->f:S

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    sget-object p0, Ljrb;->f:Lkrb;

    iget-boolean p0, p0, Lkrb;->a:Z

    invoke-static {p0}, Ljrb;->i(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EqSetting exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static g(SS)V
    .locals 1

    :try_start_0
    sget-object v0, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p0, p1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    sget-object v0, Ljrb;->f:Lkrb;

    iget-object v0, v0, Lkrb;->c:[S

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

    const-string p1, "EqSetting_Video"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static h(S)V
    .locals 2

    :try_start_0
    sget-object v0, Ljrb;->f:Lkrb;

    iput-short p0, v0, Lkrb;->e:S

    sget-object v0, Ljrb;->c:Landroid/media/audiofx/BassBoost;

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

    const-string v0, "EqSetting_Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Z)V
    .locals 11

    const-string v0, "EqSetting_Video"

    :try_start_0
    sget-object v1, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    sget-object v1, Ljrb;->c:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    sget-object v1, Ljrb;->d:Landroid/media/audiofx/PresetReverb;

    if-eqz v1, :cond_0

    sget-object v1, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "setEnable equalizer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Ljrb;->a:I

    invoke-static {v1}, Ljrb;->f(I)V

    :cond_1
    sget-object v1, Ljrb;->b:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_2

    sget-object v2, Ljrb;->c:Landroid/media/audiofx/BassBoost;

    if-eqz v2, :cond_2

    sget-object v2, Ljrb;->d:Landroid/media/audiofx/PresetReverb;

    if-eqz v2, :cond_2

    sget-object v2, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v1

    sget-object v2, Ljrb;->c:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v2

    sget-object v3, Ljrb;->d:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v3

    sget-object v4, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v4, p0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v4

    const-string v5, "set eq value Enable:"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Ljrb;->f:Lkrb;

    iput-boolean p0, v1, Lkrb;->a:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

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
    sget-object p0, Ljrb;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljrb;->f:Lkrb;

    iget-boolean v0, v0, Lkrb;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static j(S)V
    .locals 2

    :try_start_0
    sget-object v0, Ljrb;->f:Lkrb;

    iput-short p0, v0, Lkrb;->f:S

    sget-object v0, Ljrb;->e:Landroid/media/audiofx/Virtualizer;

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

    const-string v0, "EqSetting_Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
