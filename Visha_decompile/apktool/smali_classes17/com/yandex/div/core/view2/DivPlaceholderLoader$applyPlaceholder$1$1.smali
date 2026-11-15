.class final Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivPlaceholderLoader;->b(Lkn5;Lwc3;Ljava/lang/String;IZLe74;Le74;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lby4;",
        "decoded",
        "Lzfb;",
        "invoke",
        "(Lby4;)V",
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
.field final synthetic $currentPlaceholderColor:I

.field final synthetic $errorCollector:Lwc3;

.field final synthetic $onSetPlaceholder:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic $onSetPreview:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/core/view2/DivPlaceholderLoader;


# direct methods
.method public constructor <init>(Lwc3;Le74;Lcom/yandex/div/core/view2/DivPlaceholderLoader;ILe74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwc3;",
            "Le74;",
            "Lcom/yandex/div/core/view2/DivPlaceholderLoader;",
            "I",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$errorCollector:Lwc3;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$onSetPlaceholder:Le74;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->this$0:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    iput p4, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$currentPlaceholderColor:I

    iput-object p5, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$onSetPreview:Le74;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lby4;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->invoke(Lby4;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lby4;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$errorCollector:Lwc3;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Preview doesn\'t contain base64 image"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lwc3;->f(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$onSetPlaceholder:Le74;

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->this$0:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->a(Lcom/yandex/div/core/view2/DivPlaceholderLoader;)Lfd2;

    move-result-object v0

    iget p0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$currentPlaceholderColor:I

    invoke-interface {v0, p0}, Lfd2;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;->$onSetPreview:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
