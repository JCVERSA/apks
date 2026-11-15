.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;
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
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;-><init>()V

    return-void
.end method

.method private final c()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->access$getMmkv$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x7

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    const-string v8, "context"

    .line 11
    .line 12
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->b()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    invoke-virtual {v8}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;->getLabelList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    sget v8, Lcom/transsion/usercenter/R$string;->feedback_viewing_experience:I

    .line 27
    .line 28
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const-string v9, "getString(...)"

    .line 33
    .line 34
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget v10, Lcom/transsion/usercenter/R$string;->feedback_subtitls:I

    .line 38
    .line 39
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget v11, Lcom/transsion/usercenter/R$string;->feedback_download:I

    .line 47
    .line 48
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget v12, Lcom/transsion/usercenter/R$string;->feedback_file_management:I

    .line 56
    .line 57
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget v13, Lcom/transsion/usercenter/R$string;->feedback_copyright:I

    .line 65
    .line 66
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget v14, Lcom/transsion/usercenter/R$string;->feedback_pornographic_content:I

    .line 74
    .line 75
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget v15, Lcom/transsion/usercenter/R$string;->other:I

    .line 83
    .line 84
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 92
    .line 93
    invoke-direct {v9, v7, v8}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 97
    .line 98
    invoke-direct {v8, v6, v10}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v10, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 102
    .line 103
    invoke-direct {v10, v5, v11}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v11, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 107
    .line 108
    invoke-direct {v11, v4, v12}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v12, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 112
    .line 113
    invoke-direct {v12, v3, v13}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v13, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 117
    .line 118
    invoke-direct {v13, v2, v14}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 122
    .line 123
    invoke-direct {v14, v1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-array v0, v2, [Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    aput-object v9, v0, v2

    .line 130
    .line 131
    aput-object v8, v0, v7

    .line 132
    .line 133
    aput-object v10, v0, v6

    .line 134
    .line 135
    aput-object v11, v0, v5

    .line 136
    .line 137
    aput-object v12, v0, v4

    .line 138
    .line 139
    aput-object v13, v0, v1

    .line 140
    .line 141
    aput-object v14, v0, v3

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method

.method public final b()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "LAST_SERVER_OPTION"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public final d(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->Companion:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "LAST_SERVER_OPTION"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method
