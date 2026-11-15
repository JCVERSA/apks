.class public final Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/DivTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/transition/Transition;

.field public final b:Landroid/view/View;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changes"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savedChanges"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->a:Landroidx/transition/Transition;

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->c:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public final c()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->b:Landroid/view/View;

    return-object p0
.end method

.method public final d()Landroidx/transition/Transition;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->a:Landroidx/transition/Transition;

    return-object p0
.end method
