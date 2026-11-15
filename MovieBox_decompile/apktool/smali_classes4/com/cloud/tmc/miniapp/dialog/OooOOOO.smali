.class public Lcom/cloud/tmc/miniapp/dialog/OooOOOO;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;,
        Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO0o:Z

.field public final OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOOO;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M0(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/w;->supportRequestWindowFeature(I)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/view/View;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 54
    .line 55
    const/4 v5, -0x2

    .line 56
    invoke-direct {v4, v2, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x31

    .line 60
    .line 61
    iput v2, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 62
    .line 63
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOOO;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U0(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v0, 0x101035b

    .line 25
    .line 26
    .line 27
    filled-new-array {v0}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "context.obtainStyledAttr\u2026ndowCloseOnTouchOutside))"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    .line 52
    .line 53
    :cond_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->cancel()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/high16 v0, 0x4000000

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 14
    .line 15
    .line 16
    const/high16 v0, -0x80000000

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "window.decorView"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    or-int/lit16 v1, v1, 0x1002

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x5

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U0(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M0(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    .line 16
    .line 17
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(layoutResId, null, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method
