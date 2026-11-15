.class public Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/SkinsPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->U(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->b0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/transsion/dbdata/beans/SkinsMenu;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->Z(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->Z(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->v(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->Y(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/dbdata/beans/SkinsMenu;

    move-result-object p1

    invoke-static {p1}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->a0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->Y(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/dbdata/beans/SkinsMenu;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->e0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->T(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/Button;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->T(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/Button;

    move-result-object v0

    if-nez p1, :cond_1

    sget p1, Lcom/transsion/tools/R$string;->apply:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/tools/R$string;->theme_applied:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;->d:Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->Y(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/dbdata/beans/SkinsMenu;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    sput-object p0, Lhb0;->name:Ljava/lang/String;

    invoke-static {}, Lc16;->b()V

    :cond_2
    return-void
.end method
