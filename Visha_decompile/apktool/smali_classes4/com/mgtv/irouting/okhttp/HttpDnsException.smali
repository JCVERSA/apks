.class public Lcom/mgtv/irouting/okhttp/HttpDnsException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpBusinessException;,
        Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpFormatException;
    }
.end annotation


# static fields
.field public static final ERROR_Connect:I = -0x5

.field public static final ERROR_No_route_To_Host:I = -0x4

.field public static final ERROR_OBJECT_NULL:I = -0x3e9

.field public static final ERROR_SSLHandshake:I = -0x6

.field public static final ERROR_SocketTimeout:I = -0x2

.field public static final ERROR_UNKown:I = -0x1

.field public static final ERROR_Unkown_host:I = -0x3

.field public static OK_HTTP200:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
