.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lnw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->onResolutionTipFailedFromDialog(Lln/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lln/b;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->b:Lln/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getConfigViewModel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->b:Lln/b;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lln/b;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " --> onResolutionTipFailedFromDialog() --> \u7ee7\u7eed\u64ad\u653e"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
