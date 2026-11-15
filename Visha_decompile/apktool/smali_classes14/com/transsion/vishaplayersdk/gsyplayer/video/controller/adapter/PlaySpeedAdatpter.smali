.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThemeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/vishaplayersdk/R$layout;->item_play_speed:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/vishaplayersdk/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;->mThemeColor:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->getSpeed()F

    move-result v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSpeed:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->tv_speed:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v0, :cond_1

    .line 4
    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;->mThemeColor:I

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 5
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/Speed;)V

    return-void
.end method
