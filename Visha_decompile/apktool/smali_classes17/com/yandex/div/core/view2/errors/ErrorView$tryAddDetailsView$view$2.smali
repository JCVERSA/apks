.class final Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/errors/ErrorView;->D()V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
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
.field final synthetic this$0:Lcom/yandex/div/core/view2/errors/ErrorView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/errors/ErrorView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;->this$0:Lcom/yandex/div/core/view2/errors/ErrorView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;->this$0:Lcom/yandex/div/core/view2/errors/ErrorView;

    invoke-static {v0}, Lcom/yandex/div/core/view2/errors/ErrorView;->d(Lcom/yandex/div/core/view2/errors/ErrorView;)Lmd3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;->this$0:Lcom/yandex/div/core/view2/errors/ErrorView;

    .line 3
    invoke-static {p0}, Lcom/yandex/div/core/view2/errors/ErrorView;->b(Lcom/yandex/div/core/view2/errors/ErrorView;)Lcom/yandex/div/core/view2/errors/ErrorModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->n(Lcom/yandex/div/core/view2/errors/ErrorModel;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/errors/ErrorView;->e(Lcom/yandex/div/core/view2/errors/ErrorView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lld3;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/yandex/div/core/view2/errors/ErrorView;->b(Lcom/yandex/div/core/view2/errors/ErrorView;)Lcom/yandex/div/core/view2/errors/ErrorModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yandex/div/core/view2/errors/ErrorModel;->m(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/errors/ErrorView;->e(Lcom/yandex/div/core/view2/errors/ErrorView;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
