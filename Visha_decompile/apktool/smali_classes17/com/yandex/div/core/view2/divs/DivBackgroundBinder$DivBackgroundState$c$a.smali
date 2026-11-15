.class public abstract Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;->b()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;-><init>(F)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;

    check-cast p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;->b()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;-><init>(F)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
