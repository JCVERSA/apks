.class public final Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->c()V
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
.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->b()V

    return-void
.end method
