.class final Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/Transition;[I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
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
.field final synthetic $copy:Landroid/widget/ImageView;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;->$copy:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;->$copy:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;->$view:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->a(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
