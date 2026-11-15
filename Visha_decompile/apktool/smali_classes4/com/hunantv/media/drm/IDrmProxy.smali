.class public interface abstract Lcom/hunantv/media/drm/IDrmProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/IDrmProxy$DrmProxyNotifyListener;
    }
.end annotation


# virtual methods
.method public abstract disableProxy(Z)V
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hunantv/media/drm/MgtvDrmErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hunantv/media/drm/MgtvDrmErrorCodeException;
        }
    .end annotation
.end method

.method public abstract setDrmNotifyProxyListener(Lcom/hunantv/media/drm/IDrmProxy$DrmProxyNotifyListener;)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hunantv/media/drm/MgtvDrmErrorCodeException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hunantv/media/drm/MgtvDrmErrorCodeException;
        }
    .end annotation
.end method
