.class Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->stopGif(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->val$path:Ljava/io/File;

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->d(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->f(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I

    move-result v7

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->createGif(Ljava/io/File;Ljava/util/List;IIILcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    :goto_0
    return-void
.end method
