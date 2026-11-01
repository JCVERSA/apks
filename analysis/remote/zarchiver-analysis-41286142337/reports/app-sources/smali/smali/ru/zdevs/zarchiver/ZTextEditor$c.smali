.class public final Lru/zdevs/zarchiver/ZTextEditor$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->f()Z
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

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$c;->a:Lru/zdevs/zarchiver/ZTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$c;->a:Lru/zdevs/zarchiver/ZTextEditor;

    .line 2
    .line 3
    iget-object p1, p1, Lru/zdevs/zarchiver/ZTextEditor;->c:Landroid/widget/SearchView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p1, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 2
    .line 3
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$c;->a:Lru/zdevs/zarchiver/ZTextEditor;

    .line 4
    .line 5
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZTextEditor;->i()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
