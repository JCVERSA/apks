.class public Lcom/yandex/div/internal/widget/tabs/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$f;->a:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b$f;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$f;->a:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->k(Lcom/yandex/div/internal/widget/tabs/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$f;->a:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/widget/tabs/b$e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b$e;->b()V

    :cond_1
    return-void
.end method
