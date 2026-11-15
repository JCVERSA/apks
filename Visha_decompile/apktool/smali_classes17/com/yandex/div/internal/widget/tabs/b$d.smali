.class public Lcom/yandex/div/internal/widget/tabs/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/b$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$d;->a:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b$d;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$d;->a:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->g(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$c;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/b$c;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/b$d;->a:Lcom/yandex/div/internal/widget/tabs/b;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/yandex/div/internal/widget/tabs/b;->f(Lcom/yandex/div/internal/widget/tabs/b;Z)Z

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$d;->a:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method
