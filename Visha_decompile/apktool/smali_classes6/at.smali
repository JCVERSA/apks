.class public final Lat;
.super Lib0;
.source "SourceFile"


# static fields
.field public static final b:Lat;

.field public static final c:Lyi5;

.field public static final d:Lyi5;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    sput-object v0, Lat;->b:Lat;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lys;

    invoke-direct {v1}, Lys;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    sput-object v1, Lat;->c:Lyi5;

    new-instance v1, Lzs;

    invoke-direct {v1}, Lzs;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lat;->d:Lyi5;

    const-string v12, "artist_id"

    const-string v13, "artist"

    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    const-string v5, "date_added"

    const-string v6, "date_modified"

    const-string v7, "_data"

    const-string v8, "duration"

    const-string v9, "_size"

    const-string v10, "album_id"

    const-string v11, "album"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lat;->e:[Ljava/lang/String;

    const-string v1, "bucket_display_name"

    const-string v2, "year"

    const-string v3, "bucket_id"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfi;->B([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lat;->f:[Ljava/lang/String;

    const-string v1, "cd_track_number"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfi;->B([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lat;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lib0;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lat;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lat;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lat;->b:Lat;

    invoke-virtual {v0}, Lat;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lat;->b:Lat;

    invoke-virtual {v0}, Lat;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lat;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final f()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lat;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p0, v0, :cond_0

    sget-object p0, Lat;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lat;->f:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public h()Landroid/net/Uri;
    .locals 0

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method
