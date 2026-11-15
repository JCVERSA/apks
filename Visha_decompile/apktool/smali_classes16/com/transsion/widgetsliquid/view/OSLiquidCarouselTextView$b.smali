.class public Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetsliquid/view/CarouselTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;->a:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;->a:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-static {v0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->u(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;->a:Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
