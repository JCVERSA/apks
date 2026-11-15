.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFitStatusIcons:[I

.field private mFitStatusTitle:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/vishaplayersdk/R$layout;->item_option_menu:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->ic_crop:I

    sget v1, Lcom/transsion/vishaplayersdk/R$drawable;->ic_stretch:I

    sget v2, Lcom/transsion/vishaplayersdk/R$drawable;->ic_fit_to_screen:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->mFitStatusIcons:[I

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->fit_crop:I

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->fit_screen:I

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->fit_stratch:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->mFitStatusTitle:[I

    return-void
.end method

.method private getIcon(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)I
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->mFitStatusIcons:[I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    rem-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getResId()I

    move-result p0

    return p0
.end method

.method private getTitle(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->mFitStatusTitle:[I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    rem-int/lit8 v0, v0, 0x3

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)V
    .locals 2

    .line 2
    sget v0, Lcom/transsion/vishaplayersdk/R$id;->icon:I

    invoke-direct {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->getIcon(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    sget v0, Lcom/transsion/vishaplayersdk/R$id;->title:I

    invoke-direct {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->getTitle(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;)V

    return-void
.end method
