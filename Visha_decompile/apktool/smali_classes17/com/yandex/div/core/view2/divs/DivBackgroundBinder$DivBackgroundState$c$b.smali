.class public abstract Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$c;
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
    .locals 2

    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;->b()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;-><init>(F)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;->b()Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;

    move-result-object p0

    sget-object v1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->NEAREST_SIDE:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->FARTHEST_SIDE:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->NEAREST_CORNER:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->FARTHEST_CORNER:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    :goto_0
    invoke-direct {v0, p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;-><init>(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;)V

    :goto_1
    return-object v0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
