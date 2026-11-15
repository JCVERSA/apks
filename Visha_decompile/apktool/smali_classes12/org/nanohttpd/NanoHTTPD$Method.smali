.class public final enum Lorg/nanohttpd/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nanohttpd/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum CONNECT:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum DELETE:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum GET:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum HEAD:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum PATCH:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum POST:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum PUT:Lorg/nanohttpd/NanoHTTPD$Method;

.field public static final enum TRACE:Lorg/nanohttpd/NanoHTTPD$Method;


# direct methods
.method private static synthetic $values()[Lorg/nanohttpd/NanoHTTPD$Method;
    .locals 9

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->GET:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v1, Lorg/nanohttpd/NanoHTTPD$Method;->PUT:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v2, Lorg/nanohttpd/NanoHTTPD$Method;->POST:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v3, Lorg/nanohttpd/NanoHTTPD$Method;->DELETE:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v4, Lorg/nanohttpd/NanoHTTPD$Method;->HEAD:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v5, Lorg/nanohttpd/NanoHTTPD$Method;->OPTIONS:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v6, Lorg/nanohttpd/NanoHTTPD$Method;->TRACE:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v7, Lorg/nanohttpd/NanoHTTPD$Method;->CONNECT:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v8, Lorg/nanohttpd/NanoHTTPD$Method;->PATCH:Lorg/nanohttpd/NanoHTTPD$Method;

    filled-new-array/range {v0 .. v8}, [Lorg/nanohttpd/NanoHTTPD$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->GET:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "PUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->PUT:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "POST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->POST:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->DELETE:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->HEAD:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->OPTIONS:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->TRACE:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->CONNECT:Lorg/nanohttpd/NanoHTTPD$Method;

    new-instance v0, Lorg/nanohttpd/NanoHTTPD$Method;

    const-string v1, "PATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->PATCH:Lorg/nanohttpd/NanoHTTPD$Method;

    invoke-static {}, Lorg/nanohttpd/NanoHTTPD$Method;->$values()[Lorg/nanohttpd/NanoHTTPD$Method;

    move-result-object v0

    sput-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->$VALUES:[Lorg/nanohttpd/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Method;
    .locals 5

    invoke-static {}, Lorg/nanohttpd/NanoHTTPD$Method;->values()[Lorg/nanohttpd/NanoHTTPD$Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Method;
    .locals 1

    const-class v0, Lorg/nanohttpd/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/nanohttpd/NanoHTTPD$Method;

    return-object p0
.end method

.method public static values()[Lorg/nanohttpd/NanoHTTPD$Method;
    .locals 1

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Method;->$VALUES:[Lorg/nanohttpd/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lorg/nanohttpd/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nanohttpd/NanoHTTPD$Method;

    return-object v0
.end method
