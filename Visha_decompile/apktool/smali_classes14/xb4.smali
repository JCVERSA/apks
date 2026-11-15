.class public final synthetic Lxb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxb4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lxb4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->appliedSubtitle(Ljava/lang/String;)V

    return-void
.end method
