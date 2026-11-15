.class public final Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0000\u0018\u00002\u00020\u0001:\u00012B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\"\u0010(\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R$\u00101\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u00063"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;",
        "heightCalculator",
        "Lzfb;",
        "setHeightCalculator",
        "(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;)V",
        "position",
        "",
        "positionOffset",
        "",
        "shouldRequestLayoutOnScroll",
        "(IF)Z",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "b",
        "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;",
        "c",
        "I",
        "_collapsiblePaddingBottom",
        "Landroid/graphics/Rect;",
        "d",
        "Landroid/graphics/Rect;",
        "visibleRect",
        "e",
        "Z",
        "getAnimateOnScroll",
        "()Z",
        "setAnimateOnScroll",
        "(Z)V",
        "animateOnScroll",
        "f",
        "Ljava/lang/Integer;",
        "lastHeightMeasureSpec",
        "padding",
        "getCollapsiblePaddingBottom",
        "()I",
        "setCollapsiblePaddingBottom",
        "(I)V",
        "collapsiblePaddingBottom",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

.field public c:I

.field public d:Landroid/graphics/Rect;

.field public e:Z

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getAnimateOnScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->e:Z

    return p0
.end method

.method public final getCollapsiblePaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->c:I

    return p0
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->a(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAnimateOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->e:Z

    return-void
.end method

.method public final setCollapsiblePaddingBottom(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->c:I

    :cond_0
    return-void
.end method

.method public final setHeightCalculator(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    return-void
.end method

.method public final shouldRequestLayoutOnScroll(IF)Z
    .locals 4

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->c(IF)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->d:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->d:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    invoke-interface {v0, p2, v2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->a(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-eq p2, p0, :cond_5

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_5

    if-gt p0, p2, :cond_5

    move v1, v3

    :cond_5
    :goto_1
    return v1
.end method
