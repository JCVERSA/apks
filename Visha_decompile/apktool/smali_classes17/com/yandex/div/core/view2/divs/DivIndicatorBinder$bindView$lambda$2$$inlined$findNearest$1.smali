.class public final Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->i(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div2/Div$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0010\u0008\u001a\u00020\u0004\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Log2;",
        "T",
        "Lcom/yandex/div2/Div;",
        "it",
        "",
        "invoke",
        "(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;",
        "com/yandex/div/core/util/SearchUtilKt$findNearest$visitor$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $searchRoutes:Ljava/util/List;

.field final synthetic $seekerRoute:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;->$searchRoutes:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;->$seekerRoute:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;->$searchRoutes:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg59;

    .line 4
    invoke-virtual {v0}, Lg59;->c()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;->$seekerRoute:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lg59;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lg59;->c()V

    .line 6
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;->invoke(Lcom/yandex/div2/Div;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
