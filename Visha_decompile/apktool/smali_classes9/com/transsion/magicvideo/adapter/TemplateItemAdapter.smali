.class public Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$layout;->template_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;->o:Ljava/lang/String;

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "original"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_template_id:I

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_original_quality:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_template_id:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;->o:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sget p2, Lcom/transsion/magicvideo/R$id;->cb_template:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/TemplateItemAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;)V

    return-void
.end method
