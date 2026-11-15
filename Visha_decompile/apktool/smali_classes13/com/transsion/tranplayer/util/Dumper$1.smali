.class Lcom/transsion/tranplayer/util/Dumper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/util/Dumper;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/transsion/tranplayer/util/Dumper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tranplayer/util/Dumper;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/util/Dumper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/util/Dumper$1;->this$0:Lcom/transsion/tranplayer/util/Dumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/transsion/tranplayer/MediaPlayer$Event;)V
    .locals 3

    .line 2
    iget v0, p1, Lcom/transsion/tranplayer/VLCEvent;->type:I

    const/16 v1, 0x103

    if-eq v0, v1, :cond_2

    const/16 v1, 0x109

    if-eq v0, v1, :cond_0

    const/16 v2, 0x10a

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/util/Dumper$1;->this$0:Lcom/transsion/tranplayer/util/Dumper;

    invoke-static {v0}, Lcom/transsion/tranplayer/util/Dumper;->access$000(Lcom/transsion/tranplayer/util/Dumper;)Lcom/transsion/tranplayer/util/Dumper$Listener;

    move-result-object v0

    iget p1, p1, Lcom/transsion/tranplayer/VLCEvent;->type:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/transsion/tranplayer/util/Dumper$Listener;->onFinish(Z)V

    .line 4
    iget-object p0, p0, Lcom/transsion/tranplayer/util/Dumper$1;->this$0:Lcom/transsion/tranplayer/util/Dumper;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/util/Dumper;->cancel()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/transsion/tranplayer/util/Dumper$1;->this$0:Lcom/transsion/tranplayer/util/Dumper;

    invoke-static {p0}, Lcom/transsion/tranplayer/util/Dumper;->access$000(Lcom/transsion/tranplayer/util/Dumper;)Lcom/transsion/tranplayer/util/Dumper$Listener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getBuffering()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/tranplayer/util/Dumper$Listener;->onProgress(F)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onEvent(Lcom/transsion/tranplayer/VLCEvent;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/util/Dumper$1;->onEvent(Lcom/transsion/tranplayer/MediaPlayer$Event;)V

    return-void
.end method
