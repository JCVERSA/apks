.class public Lcom/transsion/tools/covert/adapter/ConvertingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/convert/ConvertingTask;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$layout;->converting_adapter_items:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->q:Ljava/util/ArrayList;

    sget v0, Lcom/transsion/tools/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->o:I

    sget v0, Lcom/transsion/tools/R$color;->visha_download_error_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->p:I

    return-void
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->s(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/tools/covert/adapter/ConvertingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/convert/ConvertingTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->unregister()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/convert/ConvertingTask;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 5

    sget v0, Lcom/transsion/tools/R$id;->tv_main_fragment_item_content:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/tools/R$id;->tv_main_fragment_item:I

    iget-object v1, p2, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/tools/R$id;->iv_converting_remove:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$drawable;->main_fragment_placeholder:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v3}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    iget v0, p2, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    sget v0, Lcom/transsion/tools/R$id;->progressBar:I

    iget-wide v1, p2, Lcom/transsion/playercommon/convert/ConvertingTask;->progress:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/playercommon/convert/ConvertingTask;->unregister()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter$a;-><init>(Lcom/transsion/tools/covert/adapter/ConvertingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/convert/ConvertingTask;->register(Lcom/transsion/playercommon/convert/ConvertingTask$b;)Lcom/transsion/playercommon/convert/ConvertingTask;

    return-void
.end method

.method public final r(I)I
    .locals 0

    const/4 p0, -0x2

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb

    if-eq p1, p0, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->download_status_wait:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/tools/R$string;->converting:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/tools/R$string;->convert_fail:I

    return p0

    :cond_2
    sget p0, Lcom/transsion/tools/R$string;->video_has_no_audio:I

    return p0

    :cond_3
    sget p0, Lcom/transsion/tools/R$string;->video_format_not_support:I

    return p0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->q:Ljava/util/ArrayList;

    new-instance v1, Ldj1;

    invoke-direct {v1}, Ldj1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->progressBar:I

    invoke-static {p2}, Lcom/transsion/playercommon/convert/ConvertingTask;->statusNotFailed(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/tools/R$id;->tv_main_fragment_item_status:I

    invoke-virtual {p0, p2}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->r(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {p2}, Lcom/transsion/playercommon/convert/ConvertingTask;->statusNotFailed(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->o:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->p:I

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
