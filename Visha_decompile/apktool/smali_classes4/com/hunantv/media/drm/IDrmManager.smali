.class public interface abstract Lcom/hunantv/media/drm/IDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/IDrmManager$OnInitListener;,
        Lcom/hunantv/media/drm/IDrmManager$SessionConfig;,
        Lcom/hunantv/media/drm/IDrmManager$InitConfig;
    }
.end annotation


# static fields
.field public static final ERROR_DEFAULT:I = -0x1

.field public static final ERROR_NULL:I = -0xa

.field public static final ERROR_NULLPOINT:I = -0xb

.field public static final RES_OK:I = 0x0

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_INITED:I = 0x2

.field public static final STATUS_INITING:I = 0x1

.field public static final STATUS_NONE:I


# virtual methods
.method public abstract genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;
.end method

.method public abstract getCurrentStatus()I
.end method

.method public abstract getErrorCode()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I
.end method

.method public abstract isInited()Z
.end method

.method public abstract isIniting()Z
.end method

.method public abstract release()I
.end method

.method public abstract setOnInitListener(Lcom/hunantv/media/drm/IDrmManager$OnInitListener;)V
.end method
