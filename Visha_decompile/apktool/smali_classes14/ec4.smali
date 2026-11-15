.class public final synthetic Lec4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iput-boolean p2, p0, Lec4;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lec4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-boolean p0, p0, Lec4;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->d(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Z)V

    return-void
.end method
