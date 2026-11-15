.class public Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/ArrayList;

.field public p:Z

.field public q:Z

.field public final r:I

.field public final s:I

.field public final t:Landroid/graphics/drawable/Drawable;

.field public final u:Landroid/graphics/drawable/Drawable;

.field public final v:Landroid/graphics/drawable/Drawable;

.field public final w:Landroid/graphics/drawable/Drawable;

.field public x:Lcu4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/sniffer_load/R$layout;->transfer_rv_transmitted_item_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_others_default_holder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_audio_default_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_subtitle_defalut_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->w:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/transsion/sniffer_load/R$color;->visha_download_error_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->r:I

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->s:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 10

    :try_start_0
    iget-object v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_e

    :cond_0
    const-string v0, "Unknown File"

    :goto_0
    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-wide v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_cloud_deleted:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    iget-boolean v1, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->s:I

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->r:I

    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_8

    :cond_4
    iget v1, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-eqz v1, :cond_6

    iget-boolean v4, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-nez v4, :cond_6

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    sget v4, Lcom/transsion/sniffer_load/R$string;->visha_local_deleted:I

    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_5

    :cond_6
    sget v4, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_5
    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    if-eqz v1, :cond_7

    iget-boolean v4, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-nez v4, :cond_7

    iget v4, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->r:I

    goto :goto_6

    :cond_7
    iget v4, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->s:I

    :goto_6
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_data_source:I

    if-eqz v1, :cond_9

    iget-boolean v1, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_source_cloud:I

    goto :goto_7

    :cond_8
    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_source_cloud_error:I

    goto :goto_7

    :cond_9
    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_source_website:I

    :goto_7
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_8
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_data_source:I

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->q:Z

    if-nez v1, :cond_a

    invoke-virtual {p0, p2}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->h(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    iget v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->t:Landroid/graphics/drawable/Drawable;

    :goto_a
    move-object v8, v0

    goto :goto_b

    :cond_b
    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :cond_c
    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :goto_b
    iget-object v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-static/range {v4 .. v9}, Lz7c;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_c

    :cond_e
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iget v1, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-static/range {v4 .. v9}, Lz7c;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    :goto_c
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item_more:I

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_checkBox:I

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->p:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_f

    move p2, v3

    goto :goto_d

    :cond_f
    move p2, v0

    :goto_d
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->p:Z

    if-eqz p0, :cond_10

    move v3, v0

    :cond_10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error converting item: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_cloud_DownloadedAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final h(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Z
    .locals 0

    iget p0, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->x:Lcu4;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcu4;->c(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->x:Lcu4;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcu4;->c(Z)V

    :cond_2
    return-void
.end method

.method public j(Lcom/transsion/cloudcore/db/CloudTaskEntity;ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "visha_cloud_DownloadedAdapter"

    invoke-static {v0, p3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->x:Lcu4;

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcu4;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->p:Z

    return-void
.end method

.method public l(Lcu4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->x:Lcu4;

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->q:Z

    return-void
.end method
