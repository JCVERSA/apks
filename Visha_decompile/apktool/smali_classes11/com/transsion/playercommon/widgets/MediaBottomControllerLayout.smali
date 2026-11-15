.class public Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_media_bottom_controller:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_media_play_repeat:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->b:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_media_play_previous:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->c:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_media_play_pause:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->d:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_media_play_next:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->e:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_media_operate_menu:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->f:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->b:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Lib6;

    invoke-direct {v0, p0}, Lib6;-><init>(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->c:Landroid/widget/ImageView;

    new-instance v0, Ljb6;

    invoke-direct {v0, p0}, Ljb6;-><init>(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->d:Landroid/widget/ImageView;

    new-instance v0, Lkb6;

    invoke-direct {v0, p0}, Lkb6;-><init>(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->e:Landroid/widget/ImageView;

    new-instance v0, Llb6;

    invoke-direct {v0, p0}, Llb6;-><init>(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->f:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Lmb6;

    invoke-direct {v0, p0}, Lmb6;-><init>(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic g(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;->d()V

    :cond_0
    return-void
.end method

.method public getPlayPauseImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final synthetic h(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;->c()V

    :cond_0
    return-void
.end method

.method public final synthetic i(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic j(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic k(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;->e()V

    :cond_0
    return-void
.end method

.method public setOnMediaButtonClickListener(Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->g:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;

    return-void
.end method

.method public updateRepeatBtnState(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->b:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
