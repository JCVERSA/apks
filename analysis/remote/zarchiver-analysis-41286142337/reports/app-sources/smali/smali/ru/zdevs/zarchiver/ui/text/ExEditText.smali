.class public Lru/zdevs/zarchiver/ui/text/ExEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Z

.field public b:Landroid/view/View$OnClickListener;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onEditorAction(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    const v1, 0x4000006

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    const/16 v1, 0x42

    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Lru/zdevs/zarchiver/ui/text/ExEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExEditText;->b:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    iget p3, p0, Lru/zdevs/zarchiver/ui/text/ExEditText;->c:I

    if-eqz p3, :cond_0

    if-ne p3, p2, :cond_1

    .line 5
    :cond_0
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa0

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x6

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "input_method"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lru/zdevs/zarchiver/ui/text/ExEditText$a;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/text/ExEditText$a;-><init>(Lru/zdevs/zarchiver/ui/text/ExEditText;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 p2, 0x12c

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
