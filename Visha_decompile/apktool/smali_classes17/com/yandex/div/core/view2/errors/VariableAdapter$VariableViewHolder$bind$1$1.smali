.class final Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->b(Lynb;)V
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
        "\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "newValue",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/String;)V",
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
.field final synthetic $variable:Lynb;

.field final synthetic this$0:Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;Lynb;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->this$0:Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->$variable:Lynb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->this$0:Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->a(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;)Lu74;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->$variable:Lynb;

    invoke-virtual {v1}, Lynb;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder$bind$1$1;->$variable:Lynb;

    invoke-virtual {p0}, Lynb;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
