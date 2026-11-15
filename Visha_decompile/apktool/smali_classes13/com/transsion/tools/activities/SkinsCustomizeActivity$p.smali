.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v3

    iget v3, v3, Lcom/transsion/tools/beans/CustomThemeCache;->customFrameIndex:I

    invoke-virtual {p1, v3}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v3

    iget v3, v3, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    invoke-static {p1, v3, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;IZ)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p0

    iget p0, p0, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    if-ne p0, v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;->a(Ljava/util/List;)V

    return-void
.end method
