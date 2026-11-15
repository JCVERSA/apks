.class public final Liu2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liu2$a;
    }
.end annotation


# static fields
.field public static final b:Liu2$a;


# instance fields
.field public final a:Lvu2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liu2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Liu2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Liu2;->b:Liu2$a;

    return-void
.end method

.method public constructor <init>(Lvu2;)V
    .locals 1

    const-string v0, "videoViewMapper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liu2;->a:Lvu2;

    return-void
.end method


# virtual methods
.method public final a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;
    .locals 2

    instance-of v0, p1, Lcom/yandex/div2/DivVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Log2;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivVideo;

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/DivGallery;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/yandex/div2/DivGallery;

    invoke-static {p1, p3}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzl2;

    invoke-virtual {p3}, Lzl2;->a()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p3}, Lzl2;->b()Loj3;

    move-result-object p3

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    :cond_3
    return-object v1

    :cond_4
    instance-of v0, p1, Lcom/yandex/div2/DivContainer;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/yandex/div2/DivContainer;

    invoke-static {p1, p3}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzl2;

    invoke-virtual {p3}, Lzl2;->a()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p3}, Lzl2;->b()Loj3;

    move-result-object p3

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object p3

    if-eqz p3, :cond_5

    return-object p3

    :cond_6
    return-object v1

    :cond_7
    instance-of v0, p1, Lcom/yandex/div2/DivGrid;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/yandex/div2/DivGrid;

    invoke-static {p1}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_9
    return-object v1

    :cond_a
    instance-of v0, p1, Lcom/yandex/div2/DivPager;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/yandex/div2/DivPager;

    invoke-static {p1, p3}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzl2;

    invoke-virtual {p3}, Lzl2;->a()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p3}, Lzl2;->b()Loj3;

    move-result-object p3

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object p3

    if-eqz p3, :cond_b

    return-object p3

    :cond_c
    return-object v1

    :cond_d
    instance-of v0, p1, Lcom/yandex/div2/DivTabs;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/yandex/div2/DivTabs;

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_f
    return-object v1

    :cond_10
    instance-of v0, p1, Lcom/yandex/div2/DivCustom;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/yandex/div2/DivCustom;

    iget-object p1, p1, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    if-eqz p1, :cond_12

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_12
    return-object v1

    :cond_13
    instance-of v0, p1, Lcom/yandex/div2/DivState;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/yandex/div2/DivState;

    iget-object p1, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivState$State;

    iget-object v0, v0, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_15
    return-object v1
.end method

.method public final b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Z
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Liu2;->c(Lcom/yandex/div2/DivData;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Liu2;->a:Lvu2;

    invoke-virtual {p0, p1}, Lvu2;->b(Lcom/yandex/div2/DivVideo;)Lcom/yandex/div/core/player/a;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string p1, "start"

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/yandex/div/core/player/a;->play()V

    goto :goto_0

    :cond_3
    const-string p1, "pause"

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/yandex/div/core/player/a;->pause()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No such video action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method public final c(Lcom/yandex/div2/DivData;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;
    .locals 1

    iget-object p1, p1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivData$State;

    iget-object v0, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Liu2;->a(Log2;Ljava/lang/String;Loj3;)Lcom/yandex/div2/DivVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
