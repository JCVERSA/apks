.class public final Lcom/transsion/share/share/ShareDialogFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/share/share/ShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/share/share/ShareDialogFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;
    .locals 16

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v8, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v8, p5

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v9, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v9, p6

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move v10, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v10, p7

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    move v11, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v11, p8

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    move v12, v3

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v12, p9

    .line 45
    .line 46
    :goto_4
    and-int/lit16 v1, v0, 0x400

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    move-object v14, v2

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v14, p11

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v0, v0, 0x800

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    move-object v15, v2

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move-object/from16 v15, p12

    .line 61
    .line 62
    :goto_6
    move-object/from16 v3, p0

    .line 63
    .line 64
    move-object/from16 v4, p1

    .line 65
    .line 66
    move-object/from16 v5, p2

    .line 67
    .line 68
    move-object/from16 v6, p3

    .line 69
    .line 70
    move-object/from16 v7, p4

    .line 71
    .line 72
    move-object/from16 v13, p10

    .line 73
    .line 74
    invoke-virtual/range {v3 .. v15}, Lcom/transsion/share/share/ShareDialogFragment$a;->a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p4

    .line 3
    move-object/from16 v2, p10

    .line 4
    .line 5
    const-string v3, "postType"

    .line 6
    .line 7
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v4, "reportType"

    .line 11
    .line 12
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v4, "source"

    .line 16
    .line 17
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Lcom/transsion/share/share/ShareDialogFragment;

    .line 21
    .line 22
    invoke-direct {v5}, Lcom/transsion/share/share/ShareDialogFragment;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v6, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "subjectId"

    .line 34
    .line 35
    move-object v3, p2

    .line 36
    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "subject_delete"

    .line 40
    .line 41
    move v3, p8

    .line 42
    invoke-virtual {v6, v0, p8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "subject_download"

    .line 46
    .line 47
    move v3, p7

    .line 48
    invoke-virtual {v6, v0, p7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v0, "subject_checkout"

    .line 52
    .line 53
    move/from16 v3, p9

    .line 54
    .line 55
    invoke-virtual {v6, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "share_title"

    .line 59
    .line 60
    move-object v3, p5

    .line 61
    invoke-virtual {v6, v0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "share_score"

    .line 65
    .line 66
    move-object v3, p6

    .line 67
    invoke-virtual {v6, v0, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "author_id"

    .line 74
    .line 75
    move-object v2, p3

    .line 76
    invoke-virtual {v6, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "report_type"

    .line 80
    .line 81
    invoke-virtual {v6, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "ops"

    .line 85
    .line 86
    move-object/from16 v1, p11

    .line 87
    .line 88
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "download_name"

    .line 92
    .line 93
    move-object/from16 v1, p12

    .line 94
    .line 95
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    return-object v5
.end method
