.class public Lcom/transsion/tools/adapter/SkinsMenuAdapter;
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
.field public static final t:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field public final o:I

.field public final p:I

.field public final q:Lcom/transsion/dbdata/beans/ThemeData;

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->t:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/transsion/tools/R$layout;->video_skins_menu_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->s:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->o:I

    sget v0, Lcom/transsion/tools/R$color;->os_text_primary_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->p:I

    const-string v0, "skin_theme"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->q:Lcom/transsion/dbdata/beans/ThemeData;

    const-string v0, "show_model_theme_tip"

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->r:Z

    return-void
.end method

.method private static b(Landroid/widget/ImageView;)V
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

    const-string v0, "SkinsMenuAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->q:Lcom/transsion/dbdata/beans/ThemeData;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->default_skin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    :cond_1
    :goto_0
    sget v0, Lcom/transsion/tools/R$id;->iv_skin_menu:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->fl_skin:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->s:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x434e0000    # 206.0f

    goto :goto_1

    :cond_2
    const/high16 v4, 0x43720000    # 242.0f

    :goto_1
    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/magicvideo/R$drawable;->ic_theme_placeholder:I

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_3
    iget v2, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget v3, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->t:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->b(Landroid/widget/ImageView;)V

    :goto_2
    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->o:I

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->setStrokeWidth(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->talkback_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/tools/R$color;->unselected_skins_menu_stroke_color:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->setStrokeColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->setStrokeWidth(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->talkback_unselected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->local_skin_model:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget v1, Lcom/transsion/tools/R$id;->tv_theme_new:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->r:Z

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lvha;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/tools/R$id;->iv_ad_theme:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_9

    move v4, v3

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/tools/R$id;->iv_theme_tab:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/tools/R$id;->iv_skin_menu_name:I

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->showName:Ljava/lang/String;

    goto :goto_6

    :cond_b
    iget-object v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->o:I

    goto :goto_7

    :cond_c
    iget p0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->p:I

    :goto_7
    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V

    return-void
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->r:Z

    return p0
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p0, Lcom/transsion/tools/R$id;->iv_skin_menu:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->b(Landroid/widget/ImageView;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->r:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    return-void
.end method
