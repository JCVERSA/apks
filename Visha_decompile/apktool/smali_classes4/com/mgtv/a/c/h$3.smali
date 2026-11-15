.class Lcom/mgtv/a/c/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnInfoListener;


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

    iput-object p1, p0, Lcom/mgtv/a/c/h$3;->a:Lcom/mgtv/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoPlayerCore"

    invoke-static {v0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x384

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/c/h$3;->a:Lcom/mgtv/a/c/h;

    invoke-virtual {p1}, Lcom/mgtv/a/c/a;->e()V

    iget-object p1, p0, Lcom/mgtv/a/c/h$3;->a:Lcom/mgtv/a/c/h;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    iget-object p0, p0, Lcom/mgtv/a/c/h$3;->a:Lcom/mgtv/a/c/h;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
