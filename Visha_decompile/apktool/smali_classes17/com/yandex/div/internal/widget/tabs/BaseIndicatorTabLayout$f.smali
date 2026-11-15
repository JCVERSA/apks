.class public Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
