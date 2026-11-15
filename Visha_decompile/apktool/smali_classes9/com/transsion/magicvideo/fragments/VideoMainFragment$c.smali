.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->f(ZI)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    sget p2, Lcom/transsion/magicvideo/R$string;->talkback_none_selected:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    sget p3, Lcom/transsion/magicvideo/R$string;->talkback_item_selected:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public d(ZIZ)V
    .locals 0

    new-instance p3, Lktb;

    invoke-direct {p3, p0, p1, p2}, Lktb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;ZI)V

    const-wide/16 p0, 0x32

    invoke-static {p3, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final synthetic f(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->startEditMode(ZIZ)V

    return-void
.end method
