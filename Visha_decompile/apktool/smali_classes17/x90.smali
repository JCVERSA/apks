.class public final synthetic Lx90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx90;->b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx90;->b:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
