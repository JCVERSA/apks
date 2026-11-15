.class Lcom/transsion/blur/ShapeBlurView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/blur/ShapeBlurView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/blur/ShapeBlurView;


# direct methods
.method public constructor <init>(Lcom/transsion/blur/ShapeBlurView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView$2;->this$0:Lcom/transsion/blur/ShapeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView$2;->this$0:Lcom/transsion/blur/ShapeBlurView;

    invoke-static {v0}, Lcom/transsion/blur/ShapeBlurView;->d(Lcom/transsion/blur/ShapeBlurView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView$2;->this$0:Lcom/transsion/blur/ShapeBlurView;

    invoke-static {p0}, Lcom/transsion/blur/ShapeBlurView;->h(Lcom/transsion/blur/ShapeBlurView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
