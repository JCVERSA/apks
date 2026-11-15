.class public Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;->b()Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 1

    new-instance v0, Lcom/yandex/div/internal/widget/tabs/TabView;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/widget/tabs/TabView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
