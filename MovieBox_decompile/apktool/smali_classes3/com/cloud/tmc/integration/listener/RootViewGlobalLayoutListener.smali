.class public final Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "tmcFragment",
        "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
        "(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V",
        "lastKeyboardHeight",
        "",
        "onKeyboardListeners",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;",
        "Lkotlin/collections/ArrayList;",
        "view",
        "Landroid/view/View;",
        "addOnKeyboardListener",
        "",
        "listener",
        "onGlobalLayout",
        "release",
        "removeOnKeyboardListener",
        "Companion",
        "com.cloud.tmc.integration"
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
.field public static final Companion:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

.field private static final TAG:Ljava/lang/String; = "RootViewGlobalLayoutLis"


# instance fields
.field private lastKeyboardHeight:I

.field private final onKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->Companion:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 1

    .line 1
    const-string v0, "tmcFragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    sub-int v1, v0, v1

    .line 24
    .line 25
    iget v2, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->lastKeyboardHeight:I

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    iput v1, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->lastKeyboardHeight:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    .line 48
    .line 49
    invoke-interface {v3, v1, v0}, Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;->onKeyBoardChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    const-string v1, "RootViewGlobalLayoutLis"

    .line 55
    .line 56
    const-string v2, "Failed to adjust TabBarView"

    .line 57
    .line 58
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    .line 8
    .line 9
    return-void
.end method

.method public final removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
