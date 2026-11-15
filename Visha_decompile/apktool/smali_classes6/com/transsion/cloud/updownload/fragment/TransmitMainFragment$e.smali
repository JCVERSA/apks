.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spaceStatistics onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_TransmitMainFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Ls44;->a(Landroid/content/Context;JJ)Landroid/text/SpannableString;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;->a(Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V

    return-void
.end method
