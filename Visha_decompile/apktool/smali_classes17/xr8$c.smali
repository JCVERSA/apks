.class public final Lxr8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxr8;->d(Lcom/yandex/div/core/view2/Div2View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic d:Lxr8;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Lxr8;)V
    .locals 0

    iput-object p1, p0, Lxr8$c;->b:Landroid/view/View;

    iput-object p2, p0, Lxr8$c;->c:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lxr8$c;->d:Lxr8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lxr8$c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lxr8$c;->c:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lxr8$c;->d:Lxr8;

    iget-object p0, p0, Lxr8$c;->c:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {v0, p1, p0}, Lxr8;->b(Lxr8;Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "ReleaseManager"

    const-string p1, "Attempt to bind a Div2View, which has no LifecycleOwner. Release event will not be caught! If you\'re using some long-lived resources, like a video player, call cleanup explicitly when you don\'t need Div2View anymore"

    invoke-static {p0, p1}, Lpp5;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
