.class public Lcom/transsion/audio/fragments/AudioMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/audio/fragments/AudioMainFragment$b;ZIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioMainFragment$b;->f(ZIZ)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->J0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->K0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p3}, Lcom/transsion/audio/fragments/AudioMainFragment;->x0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p2}, Lcom/transsion/audio/fragments/AudioMainFragment;->B0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p2}, Lcom/transsion/audio/fragments/AudioMainFragment;->B0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->L0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->none_select:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->M0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/content/Context;

    move-result-object p0

    const/4 p3, 0x1

    if-le p1, p3, :cond_2

    sget p3, Lcom/transsion/audio/R$string;->items:I

    goto :goto_0

    :cond_2
    sget p3, Lcom/transsion/audio/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public d(ZIZ)V
    .locals 1

    new-instance v0, Lws;

    invoke-direct {v0, p0, p1, p2, p3}, Lws;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment$b;ZIZ)V

    const-wide/16 p0, 0x32

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final synthetic f(ZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$b;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioMainFragment;->startEditMode(ZIZ)V

    return-void
.end method
