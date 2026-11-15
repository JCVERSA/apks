.class Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->startSaveBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ZLjava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->g(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Z)V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SUCCESS CREATE FILE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
