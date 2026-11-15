.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "androidx/core/view/ViewKt$doOnPreDraw$1",
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
.field final synthetic $osPageView$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

.field final synthetic $startHeight$inlined:I

.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic $topPage$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

.field final synthetic this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;ILcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$osPageView$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    iput p4, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$startHeight$inlined:I

    iput-object p5, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$topPage$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$osPageView$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMPageContainerStack$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$osPageView$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$measurePageHeight(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)I

    move-result v10

    iget v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$startHeight$inlined:I

    if-eq v0, v10, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const-string v0, "mContainerViewBinding.dragPanel"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$getMContainerViewBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v5, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    const-string v0, "mContainerViewBinding.panelContent"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$topPage$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object v7, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$osPageView$inlined:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget v9, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$addPage$lambda$11$$inlined$doOnPreDraw$1;->$startHeight$inlined:I

    new-instance v11, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$b;

    invoke-direct {v11, v6}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$b;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->p(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    :cond_2
    :goto_2
    return-void
.end method
