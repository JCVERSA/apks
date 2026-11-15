.class public interface abstract Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVideoAuthResultCallback"
.end annotation


# virtual methods
.method public abstract onAuthFailure(ILjava/lang/String;)V
.end method

.method public abstract onAuthSuccess()V
.end method

.method public abstract onAuthVideoPreview(J)V
.end method

.method public abstract onPlayPayVideoNormalUser()V
.end method

.method public abstract onPlayPayVideoNotLogin()V
.end method

.method public abstract onUserAuthFailed()V
.end method
