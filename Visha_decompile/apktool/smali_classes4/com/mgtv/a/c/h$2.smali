.class Lcom/mgtv/a/c/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/h$2;->a:Lcom/mgtv/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerCore"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/c/h$2;->a:Lcom/mgtv/a/c/h;

    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
