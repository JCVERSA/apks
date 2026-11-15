.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/CommentFragment;
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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;
    .locals 17

    .line 1
    move/from16 v0, p15

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v7, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v7, p5

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
    move/from16 v8, p6

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    move-object v9, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v9, p7

    .line 30
    .line 31
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    move-object v11, v2

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object/from16 v11, p9

    .line 39
    .line 40
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    move-object v12, v2

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-object/from16 v12, p10

    .line 47
    .line 48
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    move-object v13, v2

    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v13, p11

    .line 55
    .line 56
    :goto_5
    and-int/lit16 v1, v0, 0x400

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    move-object v14, v2

    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v14, p12

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v1, v0, 0x800

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    move-object v15, v2

    .line 69
    goto :goto_7

    .line 70
    :cond_7
    move-object/from16 v15, p13

    .line 71
    .line 72
    :goto_7
    and-int/lit16 v0, v0, 0x1000

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    move-object/from16 v16, v2

    .line 77
    .line 78
    goto :goto_8

    .line 79
    :cond_8
    move-object/from16 v16, p14

    .line 80
    .line 81
    :goto_8
    move-object/from16 v2, p0

    .line 82
    .line 83
    move-object/from16 v3, p1

    .line 84
    .line 85
    move-object/from16 v4, p2

    .line 86
    .line 87
    move-wide/from16 v5, p3

    .line 88
    .line 89
    move-object/from16 v10, p8

    .line 90
    .line 91
    invoke-virtual/range {v2 .. v16}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;->a(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;
    .locals 6

    .line 1
    move-object v0, p7

    .line 2
    const-string v1, "commentId"

    .line 3
    .line 4
    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "POST_ID"

    .line 18
    .line 19
    move-object v4, p1

    .line 20
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "TOPIC_TYPE"

    .line 24
    .line 25
    move-object v4, p2

    .line 26
    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "comment_count"

    .line 30
    .line 31
    move-wide v4, p3

    .line 32
    invoke-virtual {v2, v3, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    const-string v3, "show_download"

    .line 36
    .line 37
    move v4, p5

    .line 38
    invoke-virtual {v2, v3, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const-string v3, "from_detail"

    .line 42
    .line 43
    move v4, p6

    .line 44
    invoke-virtual {v2, v3, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v3, "page_from"

    .line 48
    .line 49
    move-object v4, p8

    .line 50
    invoke-virtual {v2, v3, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-lez v3, :cond_0

    .line 58
    .line 59
    const-string v3, "comment_id"

    .line 60
    .line 61
    invoke-virtual {v2, v3, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const-string v0, "TRACK_ID"

    .line 65
    .line 66
    move-object v3, p9

    .line 67
    invoke-virtual {v2, v0, p9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "PREVIOUS_TRACK_ID"

    .line 71
    .line 72
    move-object/from16 v3, p10

    .line 73
    .line 74
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "PREVIOUS_PAGE_VIDEO_ID"

    .line 78
    .line 79
    move-object/from16 v3, p11

    .line 80
    .line 81
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "UGC_VIDEO_ID"

    .line 85
    .line 86
    move-object/from16 v3, p12

    .line 87
    .line 88
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "PAGE_NAME"

    .line 92
    .line 93
    move-object/from16 v3, p13

    .line 94
    .line 95
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "COLLECTION_ID"

    .line 99
    .line 100
    move-object/from16 v3, p14

    .line 101
    .line 102
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    return-object v1
.end method
