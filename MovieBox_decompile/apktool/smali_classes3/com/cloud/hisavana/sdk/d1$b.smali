.class Lcom/cloud/hisavana/sdk/d1$b;
.super Landroidx/room/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/d1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/d1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/d1;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/d1;

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
    const-string v0, "UPDATE OR ABORT `retry_tracking_table_room` SET `uuid` = ?,`create_time` = ?,`retry_times` = ?,`tracking_data` = ?,`md5` = ? WHERE `uuid` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic j(Lz3/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/i1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/d1$b;->m(Lz3/h;Lcom/cloud/hisavana/sdk/i1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected m(Lz3/h;Lcom/cloud/hisavana/sdk/i1;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->a()Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->a()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->c(IJ)V

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->g()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x3

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->g()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    int-to-long v2, v0

    .line 61
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->c(IJ)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->i()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x4

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
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->i()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->e()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x5

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->e()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->j()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v1, 0x6

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->j()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {p1, v1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_5
    return-void
.end method
