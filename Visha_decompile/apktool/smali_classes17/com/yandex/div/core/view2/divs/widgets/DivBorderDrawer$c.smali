.class public final Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;FFF)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;->b(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(FFF)F
    .locals 2

    const/4 p0, 0x0

    cmpg-float v0, p3, p0

    if-lez v0, :cond_2

    cmpg-float v0, p2, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p0, p2

    cmpl-float p2, p1, p0

    if-lez p2, :cond_1

    sget-object p2, Lne5;->a:Lne5;

    sget-object p3, Lcom/yandex/div/logging/Severity;->WARNING:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p2, p3}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Corner radius "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " is greater than half of the smallest side "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x5

    const-string v1, "DivBorderDrawer"

    invoke-virtual {p2, v0, v1, p3}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method
