.class final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->u(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;Lrg2;Lqj3;)V
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
        "\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "selectedTab",
        "Lzfb;",
        "invoke",
        "(J)V",
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
.field final synthetic $view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;->this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;->$view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;->invoke(J)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;->this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->p(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Ljava/lang/Long;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;->$view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivTabsAdapter()Lpr2;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lpr2;->G()Lwv7;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v0, 0x1f

    shr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lae5;->a:Lae5;

    .line 5
    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' to Int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    const p1, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p1, p1

    .line 8
    :goto_1
    invoke-virtual {p0}, Lwv7;->a()I

    move-result p2

    if-eq p2, p1, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lwv7;->b(I)V

    :cond_4
    return-void
.end method
