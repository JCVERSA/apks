.class public Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ResourcesAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniapp/action/ActivityAction;",
        "Lcom/cloud/tmc/miniapp/action/ResourcesAction;",
        "Lcom/cloud/tmc/miniapp/action/ClickAction;",
        "Lcom/cloud/tmc/miniapp/action/KeyboardAction;"
    }
.end annotation


# instance fields
.field private animStyle:I

.field private backgroundDimAmount:F

.field private backgroundDimEnabled:Z

.field private final cancelListeners$delegate:Lkotlin/Lazy;

.field private cancelable:Z

.field private canceledOnTouchOutside:Z

.field private clickArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private contentView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

.field private dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field private final dismissListeners$delegate:Lkotlin/Lazy;

.field private extendToEdgesListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;

.field private gravity:I

.field private height:I

.field private keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

.field private final showListeners$delegate:Lkotlin/Lazy;

.field private themeId:I

.field private width:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    .line 10
    .line 11
    sget p1, Lcom/cloud/tmc/miniapp/R$style;->MiniSDKDialogTheme:I

    .line 12
    .line 13
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    .line 17
    .line 18
    const/4 p1, -0x2

    .line 19
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    .line 20
    .line 21
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    .line 29
    .line 30
    const/high16 p1, 0x3f000000    # 0.5f

    .line 31
    .line 32
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    .line 33
    .line 34
    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0OO;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->showListeners$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO00o;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelListeners$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0O0;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismissListeners$delegate:Lkotlin/Lazy;

    .line 57
    .line 58
    return-void
.end method

.method private final getCancelListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelListeners$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDismissListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismissListeners$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getShowListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->showListeners$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getCancelListeners()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDismissListeners()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getShowListeners()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne v0, v1, :cond_6

    .line 26
    .line 27
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v0, v2, :cond_5

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-eq v0, v2, :cond_4

    .line 34
    .line 35
    const/16 v2, 0x30

    .line 36
    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    const/16 v2, 0x50

    .line 40
    .line 41
    if-eq v0, v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_TOP()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_RIGHT()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_LEFT()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_0
    iput v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    .line 72
    .line 73
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    .line 74
    .line 75
    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    .line 76
    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getShowListeners()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getCancelListeners()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDismissListeners()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "window.attributes"

    .line 145
    .line 146
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    .line 150
    .line 151
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 152
    .line 153
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    .line 154
    .line 155
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 156
    .line 157
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    .line 158
    .line 159
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    .line 161
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->xOffset:I

    .line 162
    .line 163
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 164
    .line 165
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->yOffset:I

    .line 166
    .line 167
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 168
    .line 169
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    .line 170
    .line 171
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 172
    .line 173
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    .line 174
    .line 175
    const/4 v4, 0x2

    .line 176
    if-eqz v3, :cond_8

    .line 177
    .line 178
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 179
    .line 180
    .line 181
    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_8
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    .line 194
    .line 195
    if-eqz v1, :cond_b

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-ge v2, v3, :cond_b

    .line 203
    .line 204
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 205
    .line 206
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_a

    .line 218
    .line 219
    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;

    .line 226
    .line 227
    invoke-direct {v4, v0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_b
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-eqz v1, :cond_c

    .line 241
    .line 242
    const-string v2, "activity"

    .line 243
    .line 244
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;

    .line 248
    .line 249
    invoke-direct {v2, v1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;-><init>(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    .line 250
    .line 251
    .line 252
    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

    .line 253
    .line 254
    if-eqz v1, :cond_d

    .line 255
    .line 256
    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;->onCreate(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    .line 257
    .line 258
    .line 259
    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 260
    .line 261
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string v1, "are you ok?"

    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0
.end method

.method public createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    return-void

    .line 31
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "dismiss ->"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "BaseDialog"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_2
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "are you ok?"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getColor(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getColor(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getDrawable(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getResources(Lcom/cloud/tmc/miniapp/action/ResourcesAction;)Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isCreated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;-><init>(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;-><init>(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public setBackground(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 36
    .line 37
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 17
    .line 18
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    if-ne v0, v2, :cond_3

    .line 9
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setWidth(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 10
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setHeight(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 11
    :cond_3
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    if-nez v0, :cond_6

    .line 12
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 13
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 14
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    goto :goto_1

    .line 15
    :cond_4
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_5

    .line 16
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 18
    :cond_5
    :goto_1
    iget p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    if-nez p1, :cond_6

    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 20
    :cond_6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "are you ok?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtendToEdgesListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->extendToEdgesListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;

    .line 7
    .line 8
    return-void
.end method

.method public setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public setHeight(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 48
    :goto_2
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public setHint(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setHint(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setHint(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageDrawable(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnClickListener(ILcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "+",
            "Landroid/view/View;",
            ">;)TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-direct {v0, v1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public setOnCreateListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

    .line 7
    .line 8
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setOnKeyListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;",
            ")TB;"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public setText(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setText(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setText(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public setThemeStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "are you ok?"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public setVisibility(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public setWidth(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 48
    :goto_2
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public setXOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->xOffset:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public setYOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->yOffset:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public show()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_1
    return-void

    .line 48
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "show ->"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "BaseDialog"

    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_3
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
