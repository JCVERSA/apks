.class Lcom/mgtv/thirdsdk/playcore/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/c;
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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->removeSubtitleSource()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ">;",
            "Lcom/mgtv/ssp/play/bean/SubTitleData;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->ontSubtitleList(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$4;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->setSubtitleSource([B)V

    :cond_0
    return-void
.end method
