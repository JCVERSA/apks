.class public abstract synthetic Landroidx/media3/exoplayer/audio/s0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioRouting;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
