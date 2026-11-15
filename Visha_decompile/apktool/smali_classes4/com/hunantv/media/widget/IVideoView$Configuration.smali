.class public Lcom/hunantv/media/widget/IVideoView$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/IVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# static fields
.field public static final MGTV_RENDER_SURFACE_VIEW:I = 0x0

.field public static final MGTV_RENDER_TEXTURE_VIEW:I = 0x1


# instance fields
.field public enableTexture:Z

.field public forceReuseTexture:Z

.field public isLiveMode:Z

.field public isLoopMode:Z

.field public opengl:Z

.field public renderViewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->renderViewType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->enableTexture:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->opengl:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLiveMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLoopMode:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->forceReuseTexture:Z

    return-void
.end method


# virtual methods
.method public setEnableTexture(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->enableTexture:Z

    return-object p0
.end method

.method public setForceReuseTexture(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->forceReuseTexture:Z

    return-object p0
.end method

.method public setLiveMode(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLiveMode:Z

    return-object p0
.end method

.method public setLoopMode(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->isLoopMode:Z

    return-object p0
.end method

.method public setOpengl(Z)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->opengl:Z

    return-object p0
.end method

.method public setRenderViewType(I)Lcom/hunantv/media/widget/IVideoView$Configuration;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/IVideoView$Configuration;->renderViewType:I

    return-object p0
.end method
