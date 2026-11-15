.class public Lcom/transsion/liblan/TranMediaPlayer$Equalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Equalizer"
.end annotation


# instance fields
.field private mInstance:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeNew()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeNewFromPreset(I)V

    return-void
.end method

.method public static create()Lcom/transsion/liblan/TranMediaPlayer$Equalizer;
    .locals 1

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;

    invoke-direct {v0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;-><init>()V

    return-object v0
.end method

.method public static createFromPreset(I)Lcom/transsion/liblan/TranMediaPlayer$Equalizer;
    .locals 1

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;-><init>(I)V

    return-object v0
.end method

.method public static getBandCount()I
    .locals 1

    invoke-static {}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetBandCount()I

    move-result v0

    return v0
.end method

.method public static getBandFrequency(I)F
    .locals 0

    invoke-static {p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetBandFrequency(I)F

    move-result p0

    return p0
.end method

.method public static getPresetCount()I
    .locals 1

    invoke-static {}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetPresetCount()I

    move-result v0

    return v0
.end method

.method public static getPresetName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetPresetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native nativeGetAmp(I)F
.end method

.method private static native nativeGetBandCount()I
.end method

.method private static native nativeGetBandFrequency(I)F
.end method

.method private native nativeGetPreAmp()F
.end method

.method private static native nativeGetPresetCount()I
.end method

.method private static native nativeGetPresetName(I)Ljava/lang/String;
.end method

.method private native nativeNew()V
.end method

.method private native nativeNewFromPreset(I)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAmp(IF)Z
.end method

.method private native nativeSetPreAmp(F)Z
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAmp(I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetAmp(I)F

    move-result p0

    return p0
.end method

.method public getPreAmp()F
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeGetPreAmp()F

    move-result p0

    return p0
.end method

.method public setAmp(IF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeSetAmp(IF)Z

    move-result p0

    return p0
.end method

.method public setPreAmp(F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer$Equalizer;->nativeSetPreAmp(F)Z

    move-result p0

    return p0
.end method
