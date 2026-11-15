.class public Lcom/transsion/audio/widgets/AudioAnimationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mAudioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private mContext:Landroid/content/Context;

.field private mTvAuthor:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioAnimationView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioAnimationView;->mAudioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p2}, Lcom/transsion/audio/widgets/AudioAnimationView;->init(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private init(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->item_audio_stack:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioAnimationView;->mTvName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/audio/R$id;->tv_author:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioAnimationView;->mTvAuthor:Landroid/widget/TextView;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
