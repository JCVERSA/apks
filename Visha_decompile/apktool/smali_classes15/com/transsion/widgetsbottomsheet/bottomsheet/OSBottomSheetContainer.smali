.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 (2\u00020\u0001:\u0001)B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Lzfb;",
        "onMeasure",
        "(II)V",
        "onFinishInflate",
        "()V",
        "",
        "canceledOnTouchOutside",
        "setCanceledOnTouchOutside",
        "(Z)V",
        "b",
        "Z",
        "mCanceledOnTouchOutside",
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;",
        "c",
        "Lyi5;",
        "getMDragPanel",
        "()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;",
        "mDragPanel",
        "Landroid/view/View;",
        "d",
        "getMOutsidePanel",
        "()Landroid/view/View;",
        "mOutsidePanel",
        "Landroid/view/WindowManager;",
        "e",
        "Landroid/view/WindowManager;",
        "mWindowManager",
        "Companion",
        "a",
        "widgetsbottomsheet_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$a;


# instance fields
.field public b:Z

.field public final c:Lyi5;

.field public final d:Lyi5;

.field public e:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->Companion:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->b:Z

    .line 7
    new-instance p2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$mDragPanel$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$mDragPanel$2;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->c:Lyi5;

    .line 8
    new-instance p2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$mOutsidePanel$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer$mOutsidePanel$2;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;)V

    invoke-static {p2}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->d:Lyi5;

    .line 9
    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/view/WindowManager;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->e:Landroid/view/WindowManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->b(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Landroid/view/View;)V

    return-void
.end method

.method public static final b(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->b:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->getMDragPanel()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->animateDismiss()V

    :cond_0
    return-void
.end method

.method private final getMDragPanel()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mDragPanel>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    return-object p0
.end method

.method private final getMOutsidePanel()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mOutsidePanel>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->getMDragPanel()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->getMOutsidePanel()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setOutsideView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->getMOutsidePanel()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lx47;

    invoke-direct {v1, p0}, Lx47;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_ultra_small_bottom_sheet_pull_rect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->e:Landroid/view/WindowManager;

    invoke-static {v1, v2}, Lolb;->i0(Landroid/content/Context;Landroid/view/WindowManager;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->k0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_bottom_sheet_pull_rect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;->b:Z

    return-void
.end method
