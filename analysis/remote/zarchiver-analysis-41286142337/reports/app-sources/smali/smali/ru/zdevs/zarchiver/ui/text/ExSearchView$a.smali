.class public final Lru/zdevs/zarchiver/ui/text/ExSearchView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/text/ExSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/text/ExSearchView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/text/ExSearchView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView$a;->a:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView$a;->a:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 2
    .line 3
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a(Lru/zdevs/zarchiver/ui/text/ExSearchView;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method
