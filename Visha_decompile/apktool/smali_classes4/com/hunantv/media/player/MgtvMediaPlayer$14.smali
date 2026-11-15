.class Lcom/hunantv/media/player/MgtvMediaPlayer$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchSourceComplete(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->b()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12602(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setP2ps(I)Lcom/hunantv/media/report/ReportParams;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/a;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;->onSwitchSourceComplete(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public onSwitchSourceFailed(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v1, ""

    invoke-static {v0, p2, p3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1100(Lcom/hunantv/media/player/MgtvMediaPlayer;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;->onSwitchSourceFailed(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onSwitchSourceInfo(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12202(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$14;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;->onSwitchSourceInfo(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method
