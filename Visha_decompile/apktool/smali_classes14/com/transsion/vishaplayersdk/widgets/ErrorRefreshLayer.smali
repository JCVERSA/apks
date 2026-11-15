.class public Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mRefrash:Landroid/widget/TextView;

.field private mRemindLayout:Landroid/view/View;

.field private mTip:Landroid/widget/TextView;

.field refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

.field private time:I

.field timeCountDownTask:Ljava/lang/Runnable;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    .line 5
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    .line 11
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    .line 12
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xa

    .line 20
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "visha_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    .line 22
    new-instance p2, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;

    invoke-direct {p2, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xa

    .line 25
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "visha_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    .line 27
    new-instance p2, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;

    invoke-direct {p2, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRefrash:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->updateTime()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v1, Lcom/transsion/vishaplayersdk/R$layout;->layout_error_refrash:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->tip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mTip:Landroid/widget/TextView;

    iget v2, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    invoke-virtual {p0, v2}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->getTip(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->remind:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRemindLayout:Landroid/view/View;

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->iv_remind_checkBox:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget v1, Lcom/transsion/vishaplayersdk/R$id;->refrash:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRefrash:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    const/16 v2, 0x42c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->player_live_exit:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_2

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->error_resume_sec:I

    iget v4, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/vishaplayersdk/R$string;->error_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRemindLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "moble_remind"

    invoke-virtual {p1, v0, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcd3;

    invoke-direct {v0, p0}, Lcd3;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->updateTime()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRefrash:Landroid/widget/TextView;

    new-instance v0, Ldd3;

    invoke-direct {v0, p0}, Ldd3;-><init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    const/16 p1, 0x3ea

    if-ne p0, p1, :cond_5

    invoke-static {}, Lwz5;->A()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const-string v0, "moble_remind"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    const/16 v0, 0x42c

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;->exit(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    invoke-static {}, Lwz5;->v()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    sget p0, Lcom/transsion/vishaplayersdk/R$string;->tip_no_net:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_3
    iget p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lwz5;->b()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    if-eqz p1, :cond_5

    invoke-static {}, Lwz5;->w()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    iget v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    invoke-interface {p1, v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;->retry(I)V

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    iget v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRefrash:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTip(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->eror_no_net:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->eror_no_wifi:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "110103"

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->error_zone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "110108"

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->error_auhtor:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "140100"

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->eror_no_net:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->error_play_code:I

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->value:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0x42c

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->player_live_complete:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$string;->error_play:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->type:I

    return p0
.end method

.method public hideError()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->mRefrash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->timeCountDownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->time:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRefrashListener(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    return-void
.end method
