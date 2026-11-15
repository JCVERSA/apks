.class Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->w(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/viewcard/BaseView;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    iget-object v0, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->x(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee  startPlay 22  success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    iget-object v2, v2, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-static {v2}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->y(Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20$1;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView$20;->a:Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(IZZ)V

    :cond_0
    return-void
.end method
