.class public Lcom/transsion/tools/fragments/PrivacyFileAddFragment;
.super Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;-><init>()V

    return-void
.end method

.method public static synthetic h2(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic i2(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->add_remove_to_playlist:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->N(Z)V

    new-instance p1, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$b;

    invoke-direct {p1, p0}, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$b;-><init>(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance p2, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$a;

    invoke-direct {p2, p0}, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$a;-><init>(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
