.class public Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->E(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Lcom/yandex/div/internal/widget/tabs/b$b$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/b$g$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/yandex/div/internal/widget/tabs/b$g$a;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->E(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Lcom/yandex/div/internal/widget/tabs/b$b$a;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/yandex/div/internal/widget/tabs/b$b$a;->a(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->E(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Lcom/yandex/div/internal/widget/tabs/b$b$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p1

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;->a:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->E(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Lcom/yandex/div/internal/widget/tabs/b$b$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/b$b$a;->b(IZ)V

    return-void
.end method
