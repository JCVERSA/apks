.class public Le5/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljavax/ws/rs/ext/MessageBodyReader;
.implements Ljavax/ws/rs/ext/MessageBodyWriter;


# static fields
.field public static final f:[Ljava/lang/Class;

.field public static final g:[Ljava/lang/Class;


# instance fields
.field protected a:Ljava/nio/charset/Charset;

.field protected b:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field protected c:[Lc5/h1;

.field private d:Ld5/a;

.field private e:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v0, v2, v3

    .line 8
    .line 9
    const-class v4, Ljava/io/Reader;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    aput-object v4, v2, v5

    .line 13
    .line 14
    sput-object v2, Le5/b;->f:[Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    new-array v2, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const-class v0, Ljava/io/OutputStream;

    .line 22
    .line 23
    aput-object v0, v2, v5

    .line 24
    .line 25
    const-class v0, Ljava/io/Writer;

    .line 26
    .line 27
    aput-object v0, v2, v1

    .line 28
    .line 29
    const-class v0, Ljavax/ws/rs/core/StreamingOutput;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    aput-object v0, v2, v1

    .line 33
    .line 34
    const-class v0, Ljavax/ws/rs/core/Response;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    sput-object v2, Le5/b;->g:[Ljava/lang/Class;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UTF-8"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Le5/b;->a:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 14
    .line 15
    iput-object v1, p0, Le5/b;->b:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 16
    .line 17
    new-array v0, v0, [Lc5/h1;

    .line 18
    .line 19
    iput-object v0, p0, Le5/b;->c:[Lc5/h1;

    .line 20
    .line 21
    new-instance v0, Ld5/a;

    .line 22
    .line 23
    invoke-direct {v0}, Ld5/a;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Le5/b;->d:Ld5/a;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Le5/b;->e:[Ljava/lang/Class;

    .line 30
    .line 31
    return-void
.end method
