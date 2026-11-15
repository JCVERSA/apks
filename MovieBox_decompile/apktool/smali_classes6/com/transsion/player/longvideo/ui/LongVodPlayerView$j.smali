.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lnw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->onResolutionTipFailedFromMemberTipView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Lmn/j;->o:Lmn/k;

    .line 10
    .line 11
    iget-object p1, p1, Lmn/k;->r:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->onShowComplete()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsion/player/longvideo/member/r;->a:Lcom/transsion/player/longvideo/member/r;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/transsion/player/longvideo/member/r;->h(Ljava/util/List;)Lln/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getConfigViewModel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lln/b;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lln/b;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " --> onResolutionTipFailedFromMemberTipView() --> \u81ea\u52a8\u64ad\u653e\u6700\u9ad8\u5206\u8fa8\u7387 --> maxResolution = "

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$j;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " --> onResolutionTipFailedFromMemberTipView() --> \u7ee7\u7eed\u64ad\u653e"

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
