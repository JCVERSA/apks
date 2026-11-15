.class public Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/MusicModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->o(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->m(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->lambda$getItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->n(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;->getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lqu6;

    invoke-direct {v0, p0}, Lqu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Llu6;

    invoke-direct {v0, p0}, Llu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lmu6;

    invoke-direct {v0, p0}, Lmu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lnu6;

    invoke-direct {v0, p0}, Lnu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lpu6;

    invoke-direct {v0, p0}, Lpu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lou6;

    invoke-direct {v0, p0}, Lou6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 1

    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->e()V

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->c()V

    return-void
.end method

.method public final synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->q()V

    return-void
.end method

.method public final synthetic l(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->r()V

    return-void
.end method

.method public final synthetic lambda$getItemClickListener$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->p()V

    return-void
.end method

.method public final synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->i()V

    return-void
.end method

.method public final synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->j()V

    return-void
.end method

.method public final synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->h()V

    return-void
.end method

.method public p()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->d()V

    return-void
.end method

.method public q()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->f()V

    return-void
.end method

.method public r()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;->A0(Landroid/content/Context;)V

    return-void
.end method
