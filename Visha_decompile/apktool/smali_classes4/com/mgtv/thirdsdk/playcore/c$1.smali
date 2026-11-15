.class Lcom/mgtv/thirdsdk/playcore/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/playcore/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPlayStatusChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$1;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d;->onPlayStatusChange(I)V

    :cond_0
    return-void
.end method
