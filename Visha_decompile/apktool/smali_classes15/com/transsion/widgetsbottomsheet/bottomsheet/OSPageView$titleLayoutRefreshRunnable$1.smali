.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1",
        "Ljava/lang/Runnable;",
        "Lzfb;",
        "run",
        "()V",
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


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getMDataBinding(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->l:Landroid/widget/TextView;

    const-string v2, "mDataBinding.tvTitle"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$updateTitleSideReserveIfNeeded(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getMAX_TITLE_LAYOUT_ITER_COUNT$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$scheduleTitleLayoutRefresh(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$titleLayoutRefreshRunnable$1;->this$0:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setTitleLayoutRefreshIterCount$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;I)V

    :goto_0
    return-void
.end method
