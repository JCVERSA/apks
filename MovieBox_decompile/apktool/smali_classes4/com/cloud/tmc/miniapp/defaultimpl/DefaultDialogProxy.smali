.class public final Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/DialogProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$callback"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    .line 30
    .line 31
    :goto_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_5

    .line 36
    :cond_1
    :goto_1
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 37
    .line 38
    instance-of v2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 44
    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_2
    const-string p1, "context as? MiniAppActiv\u2026ityUtils.getTopActivity()"

    .line 53
    .line 54
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const-string p2, "locationType"

    .line 69
    .line 70
    const-string p3, ""

    .line 71
    .line 72
    if-nez p4, :cond_4

    .line 73
    .line 74
    move-object p4, p3

    .line 75
    :cond_4
    :try_start_1
    iput-object p4, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0O:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception p4

    .line 79
    :try_start_2
    invoke-static {p2, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    :goto_3
    if-nez p5, :cond_5

    .line 83
    .line 84
    move-object p5, p3

    .line 85
    :cond_5
    :try_start_3
    iput-object p5, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0o:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :catchall_2
    move-exception p3

    .line 89
    :try_start_4
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    iput-object p6, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    .line 93
    .line 94
    new-instance p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;

    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_6

    .line 113
    :goto_5
    const-string p1, "DefaultDialogProxy"

    .line 114
    .line 115
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public final getAddHomeDialog()Lcom/cloud/tmc/miniapp/dialog/OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideLoadingDialog(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string v0, "DefaultDialogProxy"

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final setAddHomeDialog(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 2
    .line 3
    return-void
.end method

.method public showAddHomeConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/b;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p4

    .line 20
    move-object v8, p6

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/defaultimpl/b;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public showCameraPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 13
    .line 14
    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    .line 21
    .line 22
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_camera:I

    .line 26
    .line 27
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v2, "format(format, *args)"

    .line 45
    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    .line 60
    .line 61
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_camera:I

    .line 65
    .line 66
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-array v5, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v3, v5, v4

    .line 73
    .line 74
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    .line 104
    .line 105
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0OO;

    .line 114
    .line 115
    invoke-direct {v0, p4, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0OO;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p3, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;

    .line 123
    .line 124
    invoke-direct {p3, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 132
    .line 133
    const/4 p2, -0x1

    .line 134
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string v0, "DefaultDialogProxy"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public showLocationPermissionDialog(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 13
    .line 14
    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    .line 21
    .line 22
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_location:I

    .line 26
    .line 27
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v2, "format(format, *args)"

    .line 45
    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    .line 54
    .line 55
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    .line 60
    .line 61
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_location:I

    .line 65
    .line 66
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-array v5, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v3, v5, v4

    .line 73
    .line 74
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    .line 104
    .line 105
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO;

    .line 114
    .line 115
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 v0, -0x1

    .line 123
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public showPermissionDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "scope"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "dialogContent"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "appTitle"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "appIconUrl"

    .line 22
    .line 23
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "callback"

    .line 27
    .line 28
    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "getTopActivity()"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0Oo:Lkotlin/Lazy;

    .line 46
    .line 47
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p4, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0o:Lkotlin/Lazy;

    .line 60
    .line 61
    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    check-cast p4, Landroid/widget/TextView;

    .line 66
    .line 67
    if-nez p4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    if-eqz p5, :cond_2

    .line 74
    .line 75
    :try_start_0
    iget-object p3, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0O0:Lkotlin/Lazy;

    .line 76
    .line 77
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    move-object v3, p3

    .line 82
    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    const-class p3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 87
    .line 88
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    move-object v0, p3

    .line 93
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/high16 p3, 0x40800000    # 4.0f

    .line 100
    .line 101
    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 106
    .line 107
    move-object v2, p5

    .line 108
    move v5, v6

    .line 109
    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception p3

    .line 114
    const-string p4, "PermissionDialog"

    .line 115
    .line 116
    invoke-static {p4, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_2
    const-string p3, "scopeName"

    .line 120
    .line 121
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :try_start_1
    const-string p3, "notifyMessage"

    .line 125
    .line 126
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0oo:Lkotlin/Lazy;

    .line 133
    .line 134
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Landroidx/constraintlayout/widget/Group;

    .line 139
    .line 140
    if-nez p2, :cond_3

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const/4 p3, 0x0

    .line 144
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception p2

    .line 149
    iget-object p3, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooOO0o:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_3
    iput-object p6, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public showStoragePermissionDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 18
    .line 19
    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_storage:I

    .line 31
    .line 32
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-array v3, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v2, v3, v4

    .line 40
    .line 41
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "format(format, *args)"

    .line 50
    .line 51
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    .line 59
    .line 60
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    .line 65
    .line 66
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_storage:I

    .line 70
    .line 71
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-array v5, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v3, v5, v4

    .line 78
    .line 79
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    .line 95
    .line 96
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    .line 109
    .line 110
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0;

    .line 119
    .line 120
    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0O;

    .line 128
    .line 129
    invoke-direct {v0, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0O;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 137
    .line 138
    const/4 p2, -0x1

    .line 139
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 156
    .line 157
    .line 158
    return-void
.end method
