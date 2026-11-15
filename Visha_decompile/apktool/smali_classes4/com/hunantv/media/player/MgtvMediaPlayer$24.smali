.class Lcom/hunantv/media/player/MgtvMediaPlayer$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->addSubtitleSource(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field final synthetic val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-interface {p1, p0}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14100(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/b;->b()V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onSuccess(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_1
    :goto_0
    return-void
.end method
