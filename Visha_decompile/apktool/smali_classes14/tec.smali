.class public final synthetic Ltec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltec;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    return-void
.end method


# virtual methods
.method public final switchResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V
    .locals 0

    iget-object p0, p0, Ltec;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchVideoResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    return-void
.end method
