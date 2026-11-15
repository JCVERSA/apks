.class public final Lwv7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;)V
    .locals 1

    const-string v0, "scrollableViewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwv7;->a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lwv7;->a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 1

    iget-object p0, p0, Lwv7;->a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->setCurrentItem(IZ)V

    return-void
.end method
