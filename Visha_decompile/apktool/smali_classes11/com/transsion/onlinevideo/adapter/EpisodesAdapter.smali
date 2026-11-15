.class public Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_episodes_expand:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_episodes:I

    :goto_0
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->r:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_episodes_expand:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_episodes:I

    :goto_0
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    iput-boolean p3, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->r:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->r:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$color;->os_color_white70:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$color;->os_text_secondary_color:I

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->o:I

    sget v0, Lcom/transsion/onlinevideo/R$color;->os_button_on_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->p:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/onlinevideo/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->q:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V
    .locals 5

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_episode:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sCurrentSerialId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v1

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->p:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->o:I

    :goto_1
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->container_episode:I

    if-eqz v1, :cond_2

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->bg_episodes_round_5dp_selected:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->bg_episodes_round_5dp:I

    :goto_2
    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result p2

    if-lez p2, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    return-void
.end method
