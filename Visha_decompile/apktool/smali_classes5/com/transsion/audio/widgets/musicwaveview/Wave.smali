.class public interface abstract Lcom/transsion/audio/widgets/musicwaveview/Wave;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final F_COUNT:I = 0x200

.field public static final MAX_F:I = 0x2710


# virtual methods
.method public abstract drawWave(Landroid/graphics/Canvas;[FII)V
.end method

.method public abstract getDrawData()[F
.end method

.method public abstract onAttached()V
.end method

.method public abstract onDetached()V
.end method

.method public abstract onFftData([B)V
.end method

.method public abstract onMusicChange()V
.end method

.method public abstract onSurfaceSize(II)V
.end method
