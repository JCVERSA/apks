.class public final Lqq3;
.super Lib0;
.source "SourceFile"


# static fields
.field public static final b:Lqq3;

.field public static final c:Lyi5;

.field public static final d:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqq3;

    invoke-direct {v0}, Lqq3;-><init>()V

    sput-object v0, Lqq3;->b:Lqq3;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Loq3;

    invoke-direct {v1}, Loq3;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    sput-object v1, Lqq3;->c:Lyi5;

    new-instance v1, Lpq3;

    invoke-direct {v1}, Lpq3;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lqq3;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lib0;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lqq3;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lqq3;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lqq3;->b:Lqq3;

    invoke-virtual {v0}, Lqq3;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lqq3;->b:Lqq3;

    invoke-virtual {v0}, Lqq3;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lqq3;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final f()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lqq3;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public g()[Ljava/lang/String;
    .locals 15

    const-string v13, "width"

    const-string v14, "height"

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_display_name"

    const-string v3, "mime_type"

    const-string v4, "date_added"

    const-string v5, "date_modified"

    const-string v6, "_data"

    const-string v7, "duration"

    const-string v8, "_size"

    const-string v9, "datetaken"

    const-string v10, "bucket_id"

    const-string v11, "bucket_display_name"

    const-string v12, "orientation"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Landroid/net/Uri;
    .locals 0

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method
