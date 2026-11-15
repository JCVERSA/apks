.class public final Lcom/transsion/subroom/activity/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/subroom/activity/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subroom/activity/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subroom/activity/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/subroom/activity/a;->a:Lcom/transsion/subroom/activity/a;

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


# virtual methods
.method public final a(Lcom/transsion/home/bean/BottomTabItem;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->isLargeUiType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "COMMUNITY"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_big_community:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    sget p1, Lcom/transsion/subroom/R$mipmap;->ic_tab_bottom_large_default:I

    .line 26
    .line 27
    return p1

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_b

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sparse-switch v0, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_0
    const-string v0, "PREMIUM"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_premium_unactive:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :sswitch_1
    const-string v0, "NOVEL"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_novel_unactive:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :sswitch_2
    const-string v0, "MUSIC"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_music_unactive_dark:I

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :sswitch_3
    const-string v0, "HOME"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_home_unactive_dark:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :sswitch_4
    const-string v0, "ME"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_me_unactive_dark:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :sswitch_5
    const-string v0, "DOWNLOADS"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_downloads_unactive_dark:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :sswitch_6
    const-string v0, "SHORTTV"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_short_tv_unactive:I

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :sswitch_7
    const-string v0, "SUBSCRIPTION"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_a

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_a
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_subscription_unactive:I

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_b
    :goto_1
    const/4 p1, 0x0

    .line 144
    :goto_2
    return p1

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x618abee3 -> :sswitch_7
        -0x59fe1022 -> :sswitch_6
        -0xba9a735 -> :sswitch_5
        0x998 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x464f605 -> :sswitch_2
        0x4705e1c -> :sswitch_1
        0x17d05a37 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lcom/transsion/home/bean/BottomTabItem;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->isLargeUiType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "COMMUNITY"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_big_community:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    sget p1, Lcom/transsion/subroom/R$mipmap;->ic_tab_bottom_large_default:I

    .line 26
    .line 27
    return p1

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_b

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sparse-switch v0, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_0
    const-string v0, "PREMIUM"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_premium_activit:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :sswitch_1
    const-string v0, "NOVEL"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_novel_active:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :sswitch_2
    const-string v0, "MUSIC"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_music_active:I

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :sswitch_3
    const-string v0, "HOME"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_home_active:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :sswitch_4
    const-string v0, "ME"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_me_active:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :sswitch_5
    const-string v0, "DOWNLOADS"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_downloads_active:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :sswitch_6
    const-string v0, "SHORTTV"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_short_tv_active:I

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :sswitch_7
    const-string v0, "SUBSCRIPTION"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_a

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_a
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_subscription_active:I

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_b
    :goto_1
    const/4 p1, 0x0

    .line 144
    :goto_2
    return p1

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x618abee3 -> :sswitch_7
        -0x59fe1022 -> :sswitch_6
        -0xba9a735 -> :sswitch_5
        0x998 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x464f605 -> :sswitch_2
        0x4705e1c -> :sswitch_1
        0x17d05a37 -> :sswitch_0
    .end sparse-switch
.end method
