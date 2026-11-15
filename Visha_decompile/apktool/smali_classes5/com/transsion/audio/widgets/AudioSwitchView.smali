.class public Lcom/transsion/audio/widgets/AudioSwitchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;
    }
.end annotation


# instance fields
.field private isMusic:Z

.field private mContext:Landroid/content/Context;

.field private mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

.field private mView:Landroid/view/View;

.field private tvMusic:Landroid/widget/TextView;

.field private tvVideo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private changeBg(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvMusic:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvVideo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/audio/R$drawable;->bg_switch_selected:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvVideo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/audio/R$drawable;->bg_switch_selected:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvMusic:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/audio/R$drawable;->bg_audio_switch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$layout;->layout_audio_switch_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->tv_music:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvMusic:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->tv_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->tvVideo:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->changeBg(Z)V

    return-void
.end method


# virtual methods
.method public isMusic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->changeBg(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    invoke-interface {p1, p0}, Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;->isSelected(Z)V

    :cond_0
    return-void
.end method

.method public registerIsSelectedListener(Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    return-void
.end method

.method public setIsMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic:Z

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->changeBg(Z)V

    return-void
.end method

.method public unregisterIsSelectedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioSwitchView;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    return-void
.end method
