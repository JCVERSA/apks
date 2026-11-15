.class final Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/downloader/DivPatchApply;->u(Lcom/yandex/div2/Div;Ljava/util/Iterator;Loj3;)Lcom/yandex/div2/Div;
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/yandex/div2/Div;",
        "invoke"
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
.field final synthetic $currentDivValue:Log2;

.field final synthetic $resolver:Loj3;

.field final synthetic this$0:Lcom/yandex/div/core/downloader/DivPatchApply;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/downloader/DivPatchApply;Log2;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->this$0:Lcom/yandex/div/core/downloader/DivPatchApply;

    iput-object p2, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->$currentDivValue:Log2;

    iput-object p3, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->$resolver:Loj3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/yandex/div2/Div;
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/div/core/downloader/DivPatchApply;

    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->this$0:Lcom/yandex/div/core/downloader/DivPatchApply;

    invoke-static {v1}, Lcom/yandex/div/core/downloader/DivPatchApply;->e(Lcom/yandex/div/core/downloader/DivPatchApply;)Ldo2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    iget-object v1, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->$currentDivValue:Log2;

    check-cast v1, Lcom/yandex/div2/DivContainer;

    iget-object p0, p0, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->$resolver:Loj3;

    invoke-static {v0, v1, p0}, Lcom/yandex/div/core/downloader/DivPatchApply;->a(Lcom/yandex/div/core/downloader/DivPatchApply;Lcom/yandex/div2/DivContainer;Loj3;)Lcom/yandex/div2/Div$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/downloader/DivPatchApply$getPatchedTreeByPath$2;->invoke()Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0
.end method
