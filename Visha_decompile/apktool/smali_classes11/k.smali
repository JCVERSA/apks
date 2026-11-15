.class public Lk;
.super Leb0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Leb0;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$drawable;->dark_popup_background:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Leb0;->n(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public g()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;

    iget-object v1, p0, Leb0;->a:Landroid/content/Context;

    iget-object p0, p0, Leb0;->j:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public i()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$layout;->video_popup_window_ai_language_layout:I

    return p0
.end method

.method public k(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->recyclerView:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method
