.class Lcom/cloud/hisavana/sdk/w3$b;
.super Landroidx/room/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/w3;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/w3;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w3$b;->d:Lcom/cloud/hisavana/sdk/w3;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/f;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `adList_room` SET `_id` = ?,`ad_creative_id` = ?,`codeSeatId` = ?,`file_path` = ?,`price` = ?,`is_offline_ad` = ?,`ad_request_ver` = ?,`ad_bean` = ? WHERE `_id` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic j(Lz3/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/y3;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/w3$b;->m(Lz3/h;Lcom/cloud/hisavana/sdk/y3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected m(Lz3/h;Lcom/cloud/hisavana/sdk/y3;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->f()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->k()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->k()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->m()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->n()Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x5

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->n()Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->a(ID)V

    .line 84
    .line 85
    .line 86
    :goto_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->p()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x6

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->p()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    int-to-long v2, v0

    .line 106
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->c(IJ)V

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->i()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x7

    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->i()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    int-to-long v2, v0

    .line 129
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->c(IJ)V

    .line 130
    .line 131
    .line 132
    :goto_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->a()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_6
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_6
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/y3;->o()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    int-to-long v0, p2

    .line 156
    const/16 p2, 0x9

    .line 157
    .line 158
    invoke-interface {p1, p2, v0, v1}, Lz3/f;->c(IJ)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
