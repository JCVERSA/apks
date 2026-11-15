.class public Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b1()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "vd_more_hide_file_add"

    const-string v3, "from"

    const-string v4, "num"

    invoke-static {v2, v3, v0, v4, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean p0, Lpp3;->p:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x473

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
