.class public final Lcom/yandex/div/internal/widget/DivViewGroup$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/DivViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public final synthetic d:Lcom/yandex/div/internal/widget/DivViewGroup;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/DivViewGroup;FFI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->d:Lcom/yandex/div/internal/widget/DivViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    .line 3
    iput p3, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    .line 4
    iput p4, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/DivViewGroup;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/DivViewGroup$b;-><init>(Lcom/yandex/div/internal/widget/DivViewGroup;FFI)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c:I

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    return p0
.end method

.method public final d(FII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    iput v0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c:I

    const/4 v0, 0x2

    sparse-switch p2, :sswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid gravity is set: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    sget-object p2, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->d(FI)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    int-to-float p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c:I

    goto :goto_0

    :sswitch_1
    sget-object p2, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->c(FI)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    goto :goto_0

    :sswitch_2
    sget-object p2, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->b(FI)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    int-to-float p2, v0

    mul-float p3, p1, p2

    iput p3, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c:I

    goto :goto_0

    :sswitch_3
    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    goto :goto_0

    :sswitch_4
    int-to-float p2, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a:F

    :goto_0
    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x10 -> :sswitch_4
        0x30 -> :sswitch_5
        0x50 -> :sswitch_3
        0x1000000 -> :sswitch_2
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_0
        0x10000000 -> :sswitch_2
        0x20000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method
