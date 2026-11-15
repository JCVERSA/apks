.class final Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->g(Ljava/util/List;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "compositeLogId",
        "Lcom/yandex/div/core/view2/CompositeLogId;",
        "invoke",
        "(Lcom/yandex/div/core/view2/CompositeLogId;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $tag:Lei2;


# direct methods
.method public constructor <init>(Lei2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;->$tag:Lei2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/yandex/div/core/view2/CompositeLogId;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "compositeLogId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/CompositeLogId;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;->$tag:Lei2;

    invoke-virtual {p0}, Lei2;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/core/view2/CompositeLogId;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;->invoke(Lcom/yandex/div/core/view2/CompositeLogId;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
