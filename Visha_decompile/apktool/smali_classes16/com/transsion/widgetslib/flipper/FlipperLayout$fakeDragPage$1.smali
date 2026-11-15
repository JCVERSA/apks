.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/animation/ValueAnimator;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroid/animation/ValueAnimator;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->invoke(Landroid/animation/ValueAnimator;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setAnimator$widgetsLib_release(Landroid/animation/ValueAnimator;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$playFakeDragAnim(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method
