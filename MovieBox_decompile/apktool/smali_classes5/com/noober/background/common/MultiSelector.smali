.class public final enum Lcom/noober/background/common/MultiSelector;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noober/background/common/MultiSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Activated:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Checkable:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Checked:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Enabled:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Focused:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Hovered:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Pressed:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Selected:Lcom/noober/background/common/MultiSelector;


# instance fields
.field public id:I

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/noober/background/common/MultiSelector;

    .line 2
    .line 3
    const-string v1, "state_checkable"

    .line 4
    .line 5
    const v2, 0x101009f

    .line 6
    .line 7
    .line 8
    const-string v3, "State_Checkable"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/noober/background/common/MultiSelector;->State_Checkable:Lcom/noober/background/common/MultiSelector;

    .line 15
    .line 16
    new-instance v1, Lcom/noober/background/common/MultiSelector;

    .line 17
    .line 18
    const-string v2, "state_checked"

    .line 19
    .line 20
    const v3, 0x10100a0

    .line 21
    .line 22
    .line 23
    const-string v5, "State_Checked"

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/noober/background/common/MultiSelector;->State_Checked:Lcom/noober/background/common/MultiSelector;

    .line 30
    .line 31
    new-instance v2, Lcom/noober/background/common/MultiSelector;

    .line 32
    .line 33
    const-string v3, "state_enabled"

    .line 34
    .line 35
    const v5, 0x101009e

    .line 36
    .line 37
    .line 38
    const-string v7, "State_Enabled"

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    invoke-direct {v2, v7, v8, v3, v5}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/noober/background/common/MultiSelector;->State_Enabled:Lcom/noober/background/common/MultiSelector;

    .line 45
    .line 46
    new-instance v3, Lcom/noober/background/common/MultiSelector;

    .line 47
    .line 48
    const-string v5, "state_selected"

    .line 49
    .line 50
    const v7, 0x10100a1

    .line 51
    .line 52
    .line 53
    const-string v9, "State_Selected"

    .line 54
    .line 55
    const/4 v10, 0x3

    .line 56
    invoke-direct {v3, v9, v10, v5, v7}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v3, Lcom/noober/background/common/MultiSelector;->State_Selected:Lcom/noober/background/common/MultiSelector;

    .line 60
    .line 61
    new-instance v5, Lcom/noober/background/common/MultiSelector;

    .line 62
    .line 63
    const-string v7, "state_pressed"

    .line 64
    .line 65
    const v9, 0x10100a7

    .line 66
    .line 67
    .line 68
    const-string v11, "State_Pressed"

    .line 69
    .line 70
    const/4 v12, 0x4

    .line 71
    invoke-direct {v5, v11, v12, v7, v9}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sput-object v5, Lcom/noober/background/common/MultiSelector;->State_Pressed:Lcom/noober/background/common/MultiSelector;

    .line 75
    .line 76
    new-instance v7, Lcom/noober/background/common/MultiSelector;

    .line 77
    .line 78
    const-string v9, "state_focused"

    .line 79
    .line 80
    const v11, 0x101009c

    .line 81
    .line 82
    .line 83
    const-string v13, "State_Focused"

    .line 84
    .line 85
    const/4 v14, 0x5

    .line 86
    invoke-direct {v7, v13, v14, v9, v11}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    sput-object v7, Lcom/noober/background/common/MultiSelector;->State_Focused:Lcom/noober/background/common/MultiSelector;

    .line 90
    .line 91
    new-instance v9, Lcom/noober/background/common/MultiSelector;

    .line 92
    .line 93
    const-string v11, "state_hovered"

    .line 94
    .line 95
    const v13, 0x1010367

    .line 96
    .line 97
    .line 98
    const-string v15, "State_Hovered"

    .line 99
    .line 100
    const/4 v14, 0x6

    .line 101
    invoke-direct {v9, v15, v14, v11, v13}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sput-object v9, Lcom/noober/background/common/MultiSelector;->State_Hovered:Lcom/noober/background/common/MultiSelector;

    .line 105
    .line 106
    new-instance v11, Lcom/noober/background/common/MultiSelector;

    .line 107
    .line 108
    const-string v13, "state_activated"

    .line 109
    .line 110
    const v15, 0x10102fe

    .line 111
    .line 112
    .line 113
    const-string v14, "State_Activated"

    .line 114
    .line 115
    const/4 v12, 0x7

    .line 116
    invoke-direct {v11, v14, v12, v13, v15}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    sput-object v11, Lcom/noober/background/common/MultiSelector;->State_Activated:Lcom/noober/background/common/MultiSelector;

    .line 120
    .line 121
    const/16 v13, 0x8

    .line 122
    .line 123
    new-array v13, v13, [Lcom/noober/background/common/MultiSelector;

    .line 124
    .line 125
    aput-object v0, v13, v4

    .line 126
    .line 127
    aput-object v1, v13, v6

    .line 128
    .line 129
    aput-object v2, v13, v8

    .line 130
    .line 131
    aput-object v3, v13, v10

    .line 132
    .line 133
    const/4 v0, 0x4

    .line 134
    aput-object v5, v13, v0

    .line 135
    .line 136
    const/4 v0, 0x5

    .line 137
    aput-object v7, v13, v0

    .line 138
    .line 139
    const/4 v0, 0x6

    .line 140
    aput-object v9, v13, v0

    .line 141
    .line 142
    aput-object v11, v13, v12

    .line 143
    .line 144
    sput-object v13, Lcom/noober/background/common/MultiSelector;->$VALUES:[Lcom/noober/background/common/MultiSelector;

    .line 145
    .line 146
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/noober/background/common/MultiSelector;->value:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/noober/background/common/MultiSelector;->id:I

    .line 7
    .line 8
    return-void
.end method

.method public static getMultiAttr(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v1, "state_enabled"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x7

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v1, "state_checkable"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x6

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v1, "state_hovered"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x5

    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    const-string v1, "state_activated"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x4

    .line 57
    goto :goto_0

    .line 58
    :sswitch_4
    const-string v1, "state_checked"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v0, 0x3

    .line 68
    goto :goto_0

    .line 69
    :sswitch_5
    const-string v1, "state_pressed"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/4 v0, 0x2

    .line 79
    goto :goto_0

    .line 80
    :sswitch_6
    const-string v1, "state_focused"

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 91
    :sswitch_7
    const-string v1, "state_selected"

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_7

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const/4 v0, 0x0

    .line 101
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0

    .line 106
    :pswitch_0
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Enabled:Lcom/noober/background/common/MultiSelector;

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Checkable:Lcom/noober/background/common/MultiSelector;

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_2
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Hovered:Lcom/noober/background/common/MultiSelector;

    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_3
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Activated:Lcom/noober/background/common/MultiSelector;

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_4
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Checked:Lcom/noober/background/common/MultiSelector;

    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_5
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Pressed:Lcom/noober/background/common/MultiSelector;

    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_6
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Focused:Lcom/noober/background/common/MultiSelector;

    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_7
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Selected:Lcom/noober/background/common/MultiSelector;

    .line 128
    .line 129
    return-object p0

    .line 130
    nop

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x66aa0d77 -> :sswitch_7
        -0x60572a37 -> :sswitch_6
        -0x4a1f098c -> :sswitch_5
        -0xae7e607 -> :sswitch_4
        0x3dec7a3 -> :sswitch_3
        0xa79c12d -> :sswitch_2
        0xf77b434 -> :sswitch_1
        0x68e8d593 -> :sswitch_0
    .end sparse-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;
    .locals 1

    .line 1
    const-class v0, Lcom/noober/background/common/MultiSelector;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/noober/background/common/MultiSelector;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/noober/background/common/MultiSelector;
    .locals 1

    .line 1
    sget-object v0, Lcom/noober/background/common/MultiSelector;->$VALUES:[Lcom/noober/background/common/MultiSelector;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/noober/background/common/MultiSelector;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/noober/background/common/MultiSelector;

    .line 8
    .line 9
    return-object v0
.end method
