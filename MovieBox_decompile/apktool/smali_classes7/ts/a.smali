.class public final Lts/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lts/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lts/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lts/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lts/a;->a:Lts/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lts/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v7, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    move v8, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v8, p5

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v9, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v9, p6

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move-object v10, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v10, p7

    .line 36
    .line 37
    :goto_3
    and-int/lit16 v0, v0, 0x80

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    move-object v11, v0

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-object/from16 v11, p8

    .line 46
    .line 47
    :goto_4
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object v5, p2

    .line 50
    move-object v6, p3

    .line 51
    invoke-virtual/range {v3 .. v11}, Lts/a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 11

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p3

    .line 3
    const-string v2, "activity"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "ops"

    .line 9
    .line 10
    const-string v3, "download"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez p5, :cond_2

    .line 14
    .line 15
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    move-object/from16 v6, p8

    .line 18
    .line 19
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    sget-object v5, Lpr/a;->a:Lpr/a;

    .line 26
    .line 27
    invoke-virtual {v5}, Lpr/a;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-virtual {v5, v3, v6}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez p7, :cond_1

    .line 41
    .line 42
    if-eqz p6, :cond_0

    .line 43
    .line 44
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv_pugc/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v5, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object/from16 v5, p7

    .line 52
    .line 53
    :goto_0
    const-string v6, "id"

    .line 54
    .line 55
    invoke-virtual {v3, v6, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3, v2, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x2

    .line 64
    invoke-static {v1, p1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    move-object v8, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    move-object v1, v4

    .line 95
    goto :goto_1

    .line 96
    :goto_3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "getSupportFragmentManager(...)"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 106
    .line 107
    invoke-virtual {v1}, Lqi/h;->h()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    sget-object v4, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->k:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;

    .line 112
    .line 113
    move-object v5, p2

    .line 114
    move-object/from16 v7, p6

    .line 115
    .line 116
    move-object v9, p4

    .line 117
    move/from16 v10, p5

    .line 118
    .line 119
    invoke-virtual/range {v4 .. v10}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0, v3}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
