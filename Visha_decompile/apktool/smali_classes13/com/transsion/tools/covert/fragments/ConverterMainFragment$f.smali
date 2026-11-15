.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/covert/fragments/ConverterMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->t0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->v0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->q0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->y0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->z0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-le p1, p2, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p2}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->setAllEnable(Z)V

    :cond_4
    return-void
.end method

.method public d(ZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;->a:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->t0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V

    return-void
.end method
