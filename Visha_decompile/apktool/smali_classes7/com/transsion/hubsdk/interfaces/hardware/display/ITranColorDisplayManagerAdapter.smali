.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMaximumColorTemperature(Landroid/content/Context;)I
.end method

.method public abstract getMinimumColorTemperature(Landroid/content/Context;)I
.end method

.method public abstract getNightDisplayColorTemperature()I
.end method

.method public abstract isNightDisplayActivated()Z
.end method

.method public abstract isNightDisplayAvailable(Landroid/content/Context;)Z
.end method

.method public abstract setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
.end method

.method public abstract setNightDisplayActivated(Z)Z
.end method

.method public abstract setNightDisplayColorTemperature(I)Z
.end method
