.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p1

    const/4 p2, 0x1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->j1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v0

    if-ne p3, v0, :cond_4

    iget-object v0, p1, Lcom/transsion/tools/beans/ThemeImage;->originImageUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    new-instance v1, Lmfb;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lmfb;-><init>(Landroid/content/Context;Lmfb$d;Z)V

    invoke-static {v0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lmfb;)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/tools/beans/ThemeImage;->originImageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmfb;->p(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2, p3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p2

    if-eq p3, p2, :cond_6

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    invoke-static {p1}, Ld16;->l(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    const-string p1, "skin_diy_edit_ps_upload_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    new-instance p3, Lmfb;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;

    move-result-object v0

    invoke-direct {p3, p1, v0, p2}, Lmfb;-><init>(Landroid/content/Context;Lmfb$d;Z)V

    invoke-static {p1, p3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lmfb;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb;

    move-result-object p1

    invoke-virtual {p1}, Lmfb;->m()V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    const-string p0, "skin_diy_edit_ps_upload_pop_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
