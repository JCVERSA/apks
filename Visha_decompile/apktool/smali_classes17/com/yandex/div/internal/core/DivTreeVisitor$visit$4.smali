.class final Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/core/DivTreeVisitor;->o(Lcom/yandex/div2/Div$j;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00020\u0001\"\u0004\u0008\u0000\u0010\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "T",
        "",
        "Lkotlin/Triple;",
        "Lcom/yandex/div2/Div;",
        "Lcom/yandex/div/core/view2/a;",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "invoke",
        "()Ljava/util/List;",
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
.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $data:Lcom/yandex/div2/Div$j;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;

.field final synthetic this$0:Lcom/yandex/div/internal/core/DivTreeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/internal/core/DivTreeVisitor;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/core/DivTreeVisitor;Lcom/yandex/div2/Div$j;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/internal/core/DivTreeVisitor;",
            "Lcom/yandex/div2/Div$j;",
            "Lcom/yandex/div/core/view2/a;",
            "Lcom/yandex/div/core/state/DivStatePath;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->this$0:Lcom/yandex/div/internal/core/DivTreeVisitor;

    iput-object p2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$data:Lcom/yandex/div2/Div$j;

    iput-object p3, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$path:Lcom/yandex/div/core/state/DivStatePath;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Lcom/yandex/div2/Div;",
            "Lcom/yandex/div/core/view2/a;",
            "Lcom/yandex/div/core/state/DivStatePath;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->this$0:Lcom/yandex/div/internal/core/DivTreeVisitor;

    iget-object v1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$data:Lcom/yandex/div2/Div$j;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-static {v1, v2}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$context:Lcom/yandex/div/core/view2/a;

    iget-object p0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$4;->$path:Lcom/yandex/div/core/state/DivStatePath;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/div/internal/core/DivTreeVisitor;->b(Lcom/yandex/div/internal/core/DivTreeVisitor;Ljava/util/List;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
