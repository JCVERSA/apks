.class public Ljwb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwb;->r(Lcom/transsion/dbdata/database/VideoPlayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/database/VideoPlayList;

.field public final synthetic c:Ljwb;


# direct methods
.method public constructor <init>(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    iput-object p1, p0, Ljwb$a;->c:Ljwb;

    iput-object p2, p0, Ljwb$a;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljwb$a;->c:Ljwb;

    invoke-static {p1}, Ljwb;->l(Ljwb;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Ljwb$a;->c:Ljwb;

    invoke-static {v0}, Ljwb;->l(Ljwb;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->add_to_playlist_toast:I

    iget-object v2, p0, Ljwb$a;->c:Ljwb;

    iget-object v3, p0, Ljwb$a;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-static {v2, v3}, Ljwb;->o(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ljwb$a;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x41d

    if-ne p1, v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ljwb$a;->c:Ljwb;

    invoke-static {p0}, Ljwb;->n(Ljwb;)Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->n(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->video_existed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const-string p0, "VideoPlayListOperateUtils"

    const-string v0, "addToPlayList complete"

    invoke-static {p0, v0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "VideoPlayListOperateUtils"

    const-string v0, "addToPlayList error"

    invoke-static {p0, v0, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljwb$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
