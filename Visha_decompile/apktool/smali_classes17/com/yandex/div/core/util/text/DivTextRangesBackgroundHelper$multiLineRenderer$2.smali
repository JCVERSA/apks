.class final Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;-><init>(Landroid/view/View;Loj3;)V
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
        "Lps6;",
        "invoke",
        "()Lps6;",
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
.field final synthetic this$0:Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;->this$0:Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;->invoke()Lps6;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lps6;
    .locals 2

    .line 2
    new-instance v0, Lps6;

    .line 3
    iget-object v1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;->this$0:Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->g()Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;->this$0:Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->e()Loj3;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, p0}, Lps6;-><init>(Landroid/view/View;Loj3;)V

    return-object v0
.end method
