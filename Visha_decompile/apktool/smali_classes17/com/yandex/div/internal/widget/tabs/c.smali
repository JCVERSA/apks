.class public Lcom/yandex/div/internal/widget/tabs/c;
.super Lcom/yandex/div/internal/widget/tabs/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/a;-><init>(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/a;->b()V

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/a;->a(II)I

    move-result p0

    return p0
.end method

.method public c(IF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f(Lcom/yandex/div/internal/widget/tabs/f;IF)I
    .locals 0

    const p0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/tabs/f;->c(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/tabs/f;->c(I)I

    move-result p0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/tabs/f;->c(I)I

    move-result p1

    int-to-float p2, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
