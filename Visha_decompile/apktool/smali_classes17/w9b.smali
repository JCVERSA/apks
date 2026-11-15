.class public final synthetic Lw9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic c:Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9b;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lw9b;->c:Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lw9b;->b:Lcom/yandex/div/core/view2/Div2View;

    iget-object p0, p0, Lw9b;->c:Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;

    invoke-static {v0, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V

    return-void
.end method
