.class public final Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getSwipeOutCallback()Lc74;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
