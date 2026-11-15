.class public final synthetic Lsi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsi9;->b:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    iput-object p2, p0, Lsi9;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lsi9;->b:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    iget-object p0, p0, Lsi9;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->a(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V

    return-void
.end method
