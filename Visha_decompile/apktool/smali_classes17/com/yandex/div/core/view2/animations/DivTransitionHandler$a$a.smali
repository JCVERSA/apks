.class public final Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;
.super Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;->a:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;->a:I

    return p0
.end method
