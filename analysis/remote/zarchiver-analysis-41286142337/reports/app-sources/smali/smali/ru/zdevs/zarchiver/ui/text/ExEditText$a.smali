.class public final Lru/zdevs/zarchiver/ui/text/ExEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/text/ExEditText;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/text/ExEditText;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/text/ExEditText;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExEditText$a;->a:Lru/zdevs/zarchiver/ui/text/ExEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lru/zdevs/zarchiver/ui/text/ExEditText;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExEditText$a;->a:Lru/zdevs/zarchiver/ui/text/ExEditText;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "input_method"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 30
    .line 31
    return-void
.end method
