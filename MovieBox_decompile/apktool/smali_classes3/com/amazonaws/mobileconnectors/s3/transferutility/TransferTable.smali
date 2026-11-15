.class abstract Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN user_metadata text;"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN http_expires_date text;"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN content_md5 text;"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN kms_key text;"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN canned_acl text;"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN header_storage_class text;"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN transfer_utility_options text;"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static f(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    .line 1
    const-string v0, "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->g(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    if-lt p2, v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x4

    .line 18
    if-ge p1, v0, :cond_2

    .line 19
    .line 20
    if-lt p2, v0, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    const/4 v0, 0x5

    .line 26
    if-ge p1, v0, :cond_3

    .line 27
    .line 28
    if-lt p2, v0, :cond_3

    .line 29
    .line 30
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    .line 32
    .line 33
    :cond_3
    const/4 v0, 0x6

    .line 34
    if-ge p1, v0, :cond_4

    .line 35
    .line 36
    if-lt p2, v0, :cond_4

    .line 37
    .line 38
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    .line 40
    .line 41
    :cond_4
    return-void
.end method
