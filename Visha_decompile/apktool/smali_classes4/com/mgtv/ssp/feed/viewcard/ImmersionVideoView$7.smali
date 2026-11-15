.class Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

.field final synthetic b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    iput-object p2, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPrepared()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v0}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->t(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->mDefinitionSizeMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-static {v1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;->u(Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;)Lcom/mgtv/ssp/play/PlayerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/play/PlayerCore;->getCurrentResolution()I

    move-result v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'#FF4500\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</font>M"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->b:Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/mgtv/ssp/R$string;->liuliang:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView$7;->a:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;

    iget-object p0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$VideoHolder;->k:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
