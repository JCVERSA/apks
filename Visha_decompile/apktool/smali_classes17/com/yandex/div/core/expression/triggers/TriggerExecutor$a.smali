.class public final Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->j(Lcom/yandex/div/core/view2/Div2View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic b:Lcom/yandex/div/core/expression/triggers/TriggerExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;->b:Lcom/yandex/div/core/expression/triggers/TriggerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/view2/Div2View;->removePersistentDivDataObserver$div_release(Lw08;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;->b:Lcom/yandex/div/core/expression/triggers/TriggerExecutor;

    invoke-static {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->d(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    return-void
.end method
