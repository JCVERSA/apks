.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->s0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->g()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v5, v4, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v5, v5, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v4, v4, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    move v3, v0

    goto :goto_0

    :cond_2
    move v2, v1

    move v3, v2

    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    sget p0, Lcom/transsion/sniffer_load/R$string;->visha_video_transcoding_unable_pause:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_4
    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1, v1}, Lri4;->j(Z)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_upload_paused:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Z)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->f(Z)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_download_paused:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0, v1, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;ZZ)V

    goto :goto_3

    :cond_6
    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_7

    sget p0, Lcom/transsion/sniffer_load/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_7
    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-nez p1, :cond_8

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-static {p1}, Lpz6;->c(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->E0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->o()V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_start_upload:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Z)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->q()V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_start_download:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_2
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;->e:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;ZZ)V

    :goto_3
    return-void
.end method
