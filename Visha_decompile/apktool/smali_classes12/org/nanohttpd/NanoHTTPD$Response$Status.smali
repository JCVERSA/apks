.class public final enum Lorg/nanohttpd/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/nanohttpd/NanoHTTPD$Response$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nanohttpd/NanoHTTPD$Response$Status;",
        ">;",
        "Lorg/nanohttpd/NanoHTTPD$Response$b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum ACCEPTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum CONFLICT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum NOT_ACCEPTABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum OK:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum REQUEST_TIMEOUT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum SWITCH_PROTOCOL:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum TEMPORARY_REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_HTTP_VERSION:Lorg/nanohttpd/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method private static synthetic $values()[Lorg/nanohttpd/NanoHTTPD$Response$Status;
    .locals 21

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v1, Lorg/nanohttpd/NanoHTTPD$Response$Status;->OK:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v2, Lorg/nanohttpd/NanoHTTPD$Response$Status;->CREATED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v3, Lorg/nanohttpd/NanoHTTPD$Response$Status;->ACCEPTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v4, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NO_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v5, Lorg/nanohttpd/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v6, Lorg/nanohttpd/NanoHTTPD$Response$Status;->REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v7, Lorg/nanohttpd/NanoHTTPD$Response$Status;->TEMPORARY_REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v8, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v9, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v10, Lorg/nanohttpd/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v11, Lorg/nanohttpd/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v12, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v13, Lorg/nanohttpd/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v14, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v15, Lorg/nanohttpd/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v16, Lorg/nanohttpd/NanoHTTPD$Response$Status;->CONFLICT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v17, Lorg/nanohttpd/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v18, Lorg/nanohttpd/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v19, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    sget-object v20, Lorg/nanohttpd/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    filled-new-array/range {v0 .. v20}, [Lorg/nanohttpd/NanoHTTPD$Response$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    const-string v3, "SWITCH_PROTOCOL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/4 v1, 0x1

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->OK:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0xc9

    const-string v2, "Created"

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->CREATED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    const-string v3, "ACCEPTED"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->ACCEPTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    const-string v3, "NO_CONTENT"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NO_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    const-string v3, "PARTIAL_CONTENT"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    const-string v3, "REDIRECT"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x12e

    const-string v2, "Moved Temporarily"

    const-string v3, "TEMPORARY_REDIRECT"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->TEMPORARY_REDIRECT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    const-string v3, "NOT_MODIFIED"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    const-string v3, "BAD_REQUEST"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    const-string v3, "UNAUTHORIZED"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    const-string v3, "FORBIDDEN"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    const-string v3, "NOT_FOUND"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    const-string v3, "METHOD_NOT_ALLOWED"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    const-string v3, "NOT_ACCEPTABLE"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    const-string v3, "REQUEST_TIMEOUT"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    const-string v3, "CONFLICT"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->CONFLICT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    const-string v3, "RANGE_NOT_SATISFIABLE"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    const-string v3, "INTERNAL_ERROR"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    const-string v3, "NOT_IMPLEMENTED"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    const-string v3, "UNSUPPORTED_HTTP_VERSION"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {}, Lorg/nanohttpd/NanoHTTPD$Response$Status;->$values()[Lorg/nanohttpd/NanoHTTPD$Response$Status;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->$VALUES:[Lorg/nanohttpd/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->requestStatus:I

    iput-object p4, p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response$Status;
    .locals 1

    const-class v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;

    return-object p0
.end method

.method public static values()[Lorg/nanohttpd/NanoHTTPD$Response$Status;
    .locals 1

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->$VALUES:[Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, [Lorg/nanohttpd/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nanohttpd/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestStatus()I
    .locals 0

    iget p0, p0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->requestStatus:I

    return p0
.end method
