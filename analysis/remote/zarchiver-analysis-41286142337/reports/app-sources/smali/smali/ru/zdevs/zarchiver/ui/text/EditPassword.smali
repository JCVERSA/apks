.class public Lru/zdevs/zarchiver/ui/text/EditPassword;
.super Lru/zdevs/zarchiver/ui/text/ExEditText;
.source "SourceFile"


# instance fields
.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lru/zdevs/zarchiver/ui/text/ExEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v0, 0x7f0600dc

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->f:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v0, 0x7f0600db

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->e:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lz0/c;->d(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->f:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->e:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lz0/f;->d(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->h:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/16 v0, 0x80

    .line 67
    .line 68
    invoke-static {p2, v0}, La0/c;->K(II)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_0

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->g:Z

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/text/EditPassword;->a()V

    .line 105
    .line 106
    .line 107
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v0, 0x1a

    .line 110
    .line 111
    if-lt p2, v0, :cond_2

    .line 112
    .line 113
    new-array p1, p1, [Ljava/lang/String;

    .line 114
    .line 115
    const/4 p2, 0x0

    .line 116
    const-string v0, "password"

    .line 117
    .line 118
    aput-object v0, p1, p2

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setAutofillHints([Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->f:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->e:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    :goto_0
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->h:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v3, v2

    .line 18
    :goto_1
    if-eqz v1, :cond_2

    .line 19
    .line 20
    move-object v0, v2

    .line 21
    :cond_2
    invoke-virtual {p0, v3, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->e:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->h:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v3

    .line 38
    add-int/lit8 v0, v0, 0x32

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr v3, v0

    .line 50
    add-int/lit8 v0, v3, -0x32

    .line 51
    .line 52
    :goto_0
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->h:Z

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    if-gt v2, v0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-lt v2, v0, :cond_3

    .line 60
    .line 61
    :goto_1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->g:Z

    .line 62
    .line 63
    xor-int/2addr v0, v1

    .line 64
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->g:Z

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/text/EditPassword;->g:Z

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/text/EditPassword;->a()V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/text/EditPassword;->a()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
