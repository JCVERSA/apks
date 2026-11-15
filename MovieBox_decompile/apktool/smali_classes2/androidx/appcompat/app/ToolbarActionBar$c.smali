.class final Landroidx/appcompat/app/ToolbarActionBar$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/appcompat/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$c;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$c;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->a:Landroidx/appcompat/widget/t;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/t;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x6c

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$c;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->b:Landroid/view/Window$Callback;

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$c;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->b:Landroid/view/Window$Callback;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$c;->a:Landroidx/appcompat/app/ToolbarActionBar;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->b:Landroid/view/Window$Callback;

    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
