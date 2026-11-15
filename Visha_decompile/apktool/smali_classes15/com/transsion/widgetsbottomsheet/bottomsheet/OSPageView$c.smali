.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getMDataBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->b()Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setTitleLayoutRefreshScheduled$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Z)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleLayoutRefreshRunnable$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->run()V

    return-void
.end method
