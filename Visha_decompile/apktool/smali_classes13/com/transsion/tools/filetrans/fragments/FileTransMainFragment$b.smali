.class public final Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final synthetic b:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    const-string p0, "tab"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 4

    const-string v0, "tab"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayout$Tab;->view:Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->getTextViewContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object p1, p1, Lcom/transsion/widgets/CustomTabLayout$Tab;->view:Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->getTextViewSize()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->a:Ljava/util/HashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->i0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorWidth(I)V

    :cond_1
    invoke-static {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->i0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)Lcom/transsion/widgets/CustomTabLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    const-string p0, "tab"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
