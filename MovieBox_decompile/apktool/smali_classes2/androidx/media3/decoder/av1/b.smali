.class public abstract Landroidx/media3/decoder/av1/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/media3/common/util/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "media3.decoder.av1"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/media3/decoder/av1/b$a;

    .line 7
    .line 8
    const-string v1, "gav1JNI"

    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroidx/media3/decoder/av1/b$a;-><init>([Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/media3/decoder/av1/b;->a:Landroidx/media3/common/util/q;

    .line 18
    .line 19
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/decoder/av1/b;->a:Landroidx/media3/common/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/q;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
