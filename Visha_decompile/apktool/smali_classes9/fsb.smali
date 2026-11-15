.class public abstract Lfsb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    return-void
.end method
