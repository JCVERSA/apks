.class public final synthetic Lqa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/TabView$a;


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa0;->a:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    return-void
.end method


# virtual methods
.method public final getMaxWidth()I
    .locals 0

    iget-object p0, p0, Lqa0;->a:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)I

    move-result p0

    return p0
.end method
