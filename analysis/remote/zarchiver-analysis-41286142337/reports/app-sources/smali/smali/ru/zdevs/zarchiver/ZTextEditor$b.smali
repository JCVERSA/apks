.class public final Lru/zdevs/zarchiver/ZTextEditor$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/ActionBar;

.field public final synthetic b:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;Landroid/app/ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$b;->b:Lru/zdevs/zarchiver/ZTextEditor;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$b;->a:Landroid/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$b;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 5
    .line 6
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor$b;->a:Landroid/app/ActionBar;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0
.end method
