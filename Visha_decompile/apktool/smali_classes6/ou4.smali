.class public interface abstract Lou4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v11, "mime_type"

    const-string v12, "_size"

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_display_name"

    const-string v3, "duration"

    const-string v4, "_data"

    const-string v5, "date_added"

    const-string v6, "date_modified"

    const-string v7, "album_id"

    const-string v8, "album"

    const-string v9, "artist_id"

    const-string v10, "artist"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lou4;->a:[Ljava/lang/String;

    const-string v15, "bucket_display_name"

    const-string v16, "year"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "duration"

    const-string v5, "_data"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "album_id"

    const-string v9, "album"

    const-string v10, "artist_id"

    const-string v11, "artist"

    const-string v12, "mime_type"

    const-string v13, "_size"

    const-string v14, "bucket_id"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lou4;->b:[Ljava/lang/String;

    const-string v16, "year"

    const-string v17, "cd_track_number"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "duration"

    const-string v5, "_data"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "album_id"

    const-string v9, "album"

    const-string v10, "artist_id"

    const-string v11, "artist"

    const-string v12, "mime_type"

    const-string v13, "_size"

    const-string v14, "bucket_id"

    const-string v15, "bucket_display_name"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lou4;->c:[Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    move-object v0, v1

    :cond_0
    sput-object v0, Lou4;->d:[Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lou4;->e:Ljava/lang/String;

    return-void
.end method
