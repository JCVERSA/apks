.class public Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/activiy/TorrentItemViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagnetLoaded(Ljava/lang/String;[B)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onMagnetLoaded(Ljava/lang/String;[B)V

    return-void
.end method

.method public onTorrentAdded(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentAdded(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTorrentAdded:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTorrentError:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentFinished(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentFinished(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTorrentFinished:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentPaused(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentPaused(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->F(Z)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTorrentPaused:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentRemoved(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentRemoved(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTorrentRemoved:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public onTorrentResumed(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentResumed(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTorrentResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_TorrentItemViewModel"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->F(Z)V

    :cond_0
    return-void
.end method

.method public onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object p2

    iget-object p2, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p3, p2, :cond_1

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p3, p2, :cond_1

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->F(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->F(Z)V

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTorrentStateChanged:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TorrentItemViewModel"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method
