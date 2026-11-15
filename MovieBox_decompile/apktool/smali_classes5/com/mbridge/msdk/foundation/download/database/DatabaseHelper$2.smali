.class Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->findByDownloadUrl(Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

.field final synthetic val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$downloadUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$100(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$002(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_9

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "SELECT * FROM "

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$200(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " WHERE "

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, "download_url"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " = ?"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->this$0:Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;->access$000(Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$downloadUrl:Ljava/lang/String;

    .line 98
    .line 99
    filled-new-array {v3}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Landroid/database/Cursor;)Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 116
    .line 117
    .line 118
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v2

    .line 121
    goto :goto_3

    .line 122
    :catch_0
    move-exception v2

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception v2

    .line 135
    move-object v0, v1

    .line 136
    goto :goto_3

    .line 137
    :catch_1
    move-exception v2

    .line 138
    move-object v0, v1

    .line 139
    :goto_1
    :try_start_2
    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 140
    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    :cond_4
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    :goto_2
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;->onDatabase(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    return-void

    .line 159
    :goto_3
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;->onDatabase(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    throw v2

    .line 172
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/database/DatabaseHelper$2;->val$databaseListener:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;

    .line 181
    .line 182
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;->onDatabase(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    return-void
.end method
