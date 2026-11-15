.class public abstract Lcom/yandex/div/internal/widget/indicator/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/indicator/c$a;,
        Lcom/yandex/div/internal/widget/indicator/c$b;
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
    invoke-direct {p0}, Lcom/yandex/div/internal/widget/indicator/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()F
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/yandex/div/internal/widget/indicator/b;
.end method
