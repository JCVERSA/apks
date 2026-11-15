.class public abstract Lcom/yandex/div/internal/widget/indicator/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/indicator/b$a;,
        Lcom/yandex/div/internal/widget/indicator/b$b;
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
    invoke-direct {p0}, Lcom/yandex/div/internal/widget/indicator/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/b$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/b$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/b$a;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$a;->d()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()F
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/b$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/b$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/b$a;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$a;->d()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
