.class final Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;
.super Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field private static a:I = -0x1

.field private static b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->u()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onGranted()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onDenied()V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->d(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v0, 0x3

    .line 38
    if-ne p1, v0, :cond_5

    .line 39
    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->e()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->t()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->e()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onGranted()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->e()Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$b;->onDenied()V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic access$700(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;-><init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->a(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->h(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [Ljava/lang/String;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static start(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    .line 7
    .line 8
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->P(Lcom/blankj/utilcode/util/Utils$b;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onActivityResult(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const v0, 0x40010

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "TYPE"

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, 0x1

    .line 23
    const-string v1, "PermissionUtils"

    .line 24
    .line 25
    if-ne p2, v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    const-string p2, "sInstance is null."

    .line 34
    .line 35
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->h(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    const-string p2, "mPermissionsRequest is null."

    .line 53
    .line 54
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->h(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-gtz p2, :cond_2

    .line 74
    .line 75
    const-string p2, "mPermissionsRequest\'s size is no more than 0."

    .line 76
    .line 77
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->i(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$c;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->j(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$a;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/4 v0, 0x2

    .line 103
    if-ne p2, v0, :cond_4

    .line 104
    .line 105
    sput v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a:I

    .line 106
    .line 107
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->k(Landroid/app/Activity;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const/4 v0, 0x3

    .line 112
    if-ne p2, v0, :cond_5

    .line 113
    .line 114
    sput v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a:I

    .line 115
    .line 116
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->l(Landroid/app/Activity;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 121
    .line 122
    .line 123
    const-string p1, "type is wrong."

    .line 124
    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 2
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a(I)V

    .line 7
    .line 8
    .line 9
    sput v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->a:I

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRequestPermissionsResult(Lcom/blankj/utilcode/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1    # Lcom/blankj/utilcode/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lcom/blankj/utilcode/util/PermissionUtils;->h(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->g()Lcom/blankj/utilcode/util/PermissionUtils;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
