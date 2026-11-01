.class public final Lru/zdevs/zarchiver/ZTextEditor$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$h;->a:Lru/zdevs/zarchiver/ZTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/PopupMenu;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor$h;->a:Lru/zdevs/zarchiver/ZTextEditor;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lru/zdevs/zarchiver/ZTextEditor;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 13
    .line 14
    .line 15
    const v1, 0x7f070034

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    new-instance p1, Lru/zdevs/zarchiver/ZTextEditor$h$a;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZTextEditor$h$a;-><init>(Lru/zdevs/zarchiver/ZTextEditor$h;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
