.class Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/View;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;->Sj:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p2}, Landroidx/core/view/z1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/a;->a(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$3;->Sj:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/window/layout/i;->a(Landroid/view/DisplayCutout;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1}, Landroidx/window/layout/j;->a(Landroid/view/DisplayCutout;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p1}, Landroidx/window/layout/g;->a(Landroid/view/DisplayCutout;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {p1}, Landroidx/window/layout/h;->a(Landroid/view/DisplayCutout;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    :cond_0
    return-object p2
.end method
