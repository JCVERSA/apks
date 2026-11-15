.class public final synthetic Lzb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzb4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    return-void
.end method


# virtual methods
.method public final switchResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V
    .locals 0

    iget-object p0, p0, Lzb4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->i(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    return-void
.end method
