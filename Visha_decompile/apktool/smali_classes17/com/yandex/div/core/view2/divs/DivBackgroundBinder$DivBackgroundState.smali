.class public abstract Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DivBackgroundState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->c(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;->b()I

    move-result p0

    invoke-direct {p1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_2
    instance-of p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;

    if-eqz p1, :cond_3

    new-instance p1, Lfl5;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;->b()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;->c()Ly91;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lfl5;-><init>(FLy91;)V

    goto :goto_0

    :cond_3
    instance-of p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->e()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;->a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;->a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object p3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;->a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-direct {p1, p2, p3, v0, p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;-><init>(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[I)V

    goto :goto_0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
