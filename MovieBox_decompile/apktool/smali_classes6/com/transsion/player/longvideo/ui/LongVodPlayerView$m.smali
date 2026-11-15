.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->r2(Lln/b;)V
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
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->b:Lln/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    const-string v1, "LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onFailed(\u5f00\u901a\u4f1a\u5458\u5931\u8d25\uff0c\u63d0\u793a\u505a\u4efb\u52a1)"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    const-string v1, "LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onSuccess()"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getConfigViewModel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->b:Lln/b;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lln/b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
