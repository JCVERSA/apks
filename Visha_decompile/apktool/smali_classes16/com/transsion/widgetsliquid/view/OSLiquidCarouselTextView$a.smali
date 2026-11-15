.class public Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;->b:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;->b:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->t(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->showWithFadeAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;->b:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->t(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;->b:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->s(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)Lcom/transsion/widgetsliquid/view/CarouselTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_0
    return v0
.end method
