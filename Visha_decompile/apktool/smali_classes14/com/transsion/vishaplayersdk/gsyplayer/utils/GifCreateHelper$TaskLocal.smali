.class Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskLocal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;


# direct methods
.method private constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Lei4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->g(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V

    :cond_0
    return-void
.end method
