.class public Lcom/transsion/tools/adapter/ThemePreviewAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/SkinsMenu;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final q:I


# instance fields
.field public final o:Lcom/transsion/dbdata/beans/ThemeData;

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->iv_preview_skin:I

    sput v0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/transsion/tools/R$layout;->item_theme_preview:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-string v0, "skin_theme"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object p1, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->o:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/tools/adapter/ThemePreviewAdapter;Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->s(Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->i(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->u(Landroid/view/View;)V

    return-void
.end method

.method public static g(Landroid/widget/ImageView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearGlideRequest error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThemePreviewAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public static u(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->q:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V

    return-void
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->o:Lcom/transsion/dbdata/beans/ThemeData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->default_skin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sget v3, Lcom/transsion/tools/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    sget v4, Lcom/transsion/tools/R$id;->iv_preview_skin:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v5, Lcom/transsion/tools/R$id;->iv_select_frame:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/tools/R$string;->local_skin_model:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget v5, Lcom/transsion/tools/R$id;->iv_theme_tab:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    :cond_3
    iget p1, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    if-eqz p1, :cond_5

    invoke-static {v3}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->u(Landroid/view/View;)V

    invoke-static {v4}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->g(Landroid/widget/ImageView;)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    if-ne p0, v1, :cond_4

    sget p0, Lcom/transsion/tools/R$color;->white:I

    goto :goto_2

    :cond_4
    sget p0, Lcom/transsion/tools/R$color;->black:I

    :goto_2
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->r(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v3}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->u(Landroid/view/View;)V

    invoke-static {v4}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->g(Landroid/widget/ImageView;)V

    sget p0, Lcom/transsion/tools/R$drawable;->os_window_background:I

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_6
    iget-object p1, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->s(Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    iget p1, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    if-eqz p1, :cond_8

    const/4 p2, 0x0

    invoke-virtual {p0, v3, v4, p2, p1}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->s(Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->g(Landroid/widget/ImageView;)V

    sget p0, Lcom/transsion/tools/R$drawable;->os_window_background:I

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    return-void
.end method

.method public final r(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->p:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s(Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 7

    invoke-static {p1}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->u(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_2
    if-lez v0, :cond_6

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->i(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget p1, Lcom/transsion/tools/R$drawable;->os_window_background:I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance p1, Lcom/transsion/glidetransformation/CropTransformation;

    invoke-direct {p1, v0, v1}, Lcom/transsion/glidetransformation/CropTransformation;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    if-eqz p3, :cond_5

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void

    :cond_6
    :goto_1
    new-instance v6, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/tools/adapter/ThemePreviewAdapter$a;-><init>(Lcom/transsion/tools/adapter/ThemePreviewAdapter;Lcom/transsion/playercommon/widgets/RoundFrameLayout;Landroid/widget/ImageView;Ljava/lang/String;I)V

    sget p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->q:I

    invoke-virtual {p1, p0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-static {p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->u(Landroid/view/View;)V

    sget p0, Lcom/transsion/tools/R$id;->iv_preview_skin:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->g(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->p:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->p:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gt v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method
