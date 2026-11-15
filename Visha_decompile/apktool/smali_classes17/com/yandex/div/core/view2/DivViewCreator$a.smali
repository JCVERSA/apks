.class public final Lcom/yandex/div/core/view2/DivViewCreator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/DivViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/DivViewCreator$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/DivViewCreator$a;Lcom/yandex/div2/Div;Loj3;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator$a;->b(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/Div$b;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/yandex/div2/Div$b;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DIV2.WRAP_CONTAINER_VIEW"

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/div2/DivContainer$Orientation;->OVERLAP:Lcom/yandex/div2/DivContainer$Orientation;

    if-ne p0, p1, :cond_1

    const-string p0, "DIV2.OVERLAP_CONTAINER_VIEW"

    goto/16 :goto_0

    :cond_1
    const-string p0, "DIV2.LINEAR_CONTAINER_VIEW"

    goto/16 :goto_0

    :cond_2
    instance-of p0, p1, Lcom/yandex/div2/Div$c;

    if-eqz p0, :cond_3

    const-string p0, "DIV2.CUSTOM"

    goto/16 :goto_0

    :cond_3
    instance-of p0, p1, Lcom/yandex/div2/Div$d;

    if-eqz p0, :cond_4

    const-string p0, "DIV2.GALLERY_VIEW"

    goto/16 :goto_0

    :cond_4
    instance-of p0, p1, Lcom/yandex/div2/Div$e;

    if-eqz p0, :cond_5

    const-string p0, "DIV2.IMAGE_GIF_VIEW"

    goto/16 :goto_0

    :cond_5
    instance-of p0, p1, Lcom/yandex/div2/Div$f;

    if-eqz p0, :cond_6

    const-string p0, "DIV2.GRID_VIEW"

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lcom/yandex/div2/Div$g;

    if-eqz p0, :cond_7

    const-string p0, "DIV2.IMAGE_VIEW"

    goto :goto_0

    :cond_7
    instance-of p0, p1, Lcom/yandex/div2/Div$h;

    if-eqz p0, :cond_8

    const-string p0, "DIV2.INDICATOR"

    goto :goto_0

    :cond_8
    instance-of p0, p1, Lcom/yandex/div2/Div$i;

    if-eqz p0, :cond_9

    const-string p0, "DIV2.INPUT"

    goto :goto_0

    :cond_9
    instance-of p0, p1, Lcom/yandex/div2/Div$j;

    if-eqz p0, :cond_a

    const-string p0, "DIV2.PAGER_VIEW"

    goto :goto_0

    :cond_a
    instance-of p0, p1, Lcom/yandex/div2/Div$k;

    if-eqz p0, :cond_b

    const-string p0, "DIV2.SELECT"

    goto :goto_0

    :cond_b
    instance-of p0, p1, Lcom/yandex/div2/Div$m;

    if-eqz p0, :cond_c

    const-string p0, "DIV2.SLIDER"

    goto :goto_0

    :cond_c
    instance-of p0, p1, Lcom/yandex/div2/Div$o;

    if-eqz p0, :cond_d

    const-string p0, "DIV2.SWITCH"

    goto :goto_0

    :cond_d
    instance-of p0, p1, Lcom/yandex/div2/Div$n;

    if-eqz p0, :cond_e

    const-string p0, "DIV2.STATE"

    goto :goto_0

    :cond_e
    instance-of p0, p1, Lcom/yandex/div2/Div$p;

    if-eqz p0, :cond_f

    const-string p0, "DIV2.TAB_VIEW"

    goto :goto_0

    :cond_f
    instance-of p0, p1, Lcom/yandex/div2/Div$q;

    if-eqz p0, :cond_10

    const-string p0, "DIV2.TEXT_VIEW"

    goto :goto_0

    :cond_10
    instance-of p0, p1, Lcom/yandex/div2/Div$r;

    if-eqz p0, :cond_11

    const-string p0, "DIV2.VIDEO"

    goto :goto_0

    :cond_11
    instance-of p0, p1, Lcom/yandex/div2/Div$l;

    if-eqz p0, :cond_12

    const-string p0, ""

    :goto_0
    return-object p0

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
