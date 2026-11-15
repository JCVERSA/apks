.class public final synthetic Lqr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

.field public final synthetic b:Lcom/yandex/div/core/view2/a;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr2;->a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    iput-object p2, p0, Lqr2;->b:Lcom/yandex/div/core/view2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lqr2;->a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    iget-object p0, p0, Lqr2;->b:Lcom/yandex/div/core/view2/a;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->h(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V

    return-void
.end method
