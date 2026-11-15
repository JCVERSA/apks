.class public Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;
.super Lcom/transsion/playercommon/widgets/RoundFrameLayout;
.source "SourceFile"


# instance fields
.field public i:Landroid/content/Context;

.field public j:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public k:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->j:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->a(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->view_video_drag_animation:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->round_framelayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->k:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->l:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->l:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lz7c;->d(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->l:Landroid/widget/ImageView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->m:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;->m:Landroid/widget/TextView;

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v0, v1}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
