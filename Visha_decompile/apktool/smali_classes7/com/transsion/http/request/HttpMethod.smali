.class public final enum Lcom/transsion/http/request/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/http/request/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT:Lcom/transsion/http/request/HttpMethod;

.field public static final enum COPY:Lcom/transsion/http/request/HttpMethod;

.field public static final enum DELETE:Lcom/transsion/http/request/HttpMethod;

.field public static final enum GET:Lcom/transsion/http/request/HttpMethod;

.field public static final enum HEAD:Lcom/transsion/http/request/HttpMethod;

.field public static final enum MOVE:Lcom/transsion/http/request/HttpMethod;

.field public static final enum OPTIONS:Lcom/transsion/http/request/HttpMethod;

.field public static final enum PATCH:Lcom/transsion/http/request/HttpMethod;

.field public static final enum POST:Lcom/transsion/http/request/HttpMethod;

.field public static final enum PUT:Lcom/transsion/http/request/HttpMethod;

.field public static final enum TRACE:Lcom/transsion/http/request/HttpMethod;

.field private static final synthetic a:[Lcom/transsion/http/request/HttpMethod;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/transsion/http/request/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/request/HttpMethod;->GET:Lcom/transsion/http/request/HttpMethod;

    new-instance v1, Lcom/transsion/http/request/HttpMethod;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/http/request/HttpMethod;->POST:Lcom/transsion/http/request/HttpMethod;

    new-instance v2, Lcom/transsion/http/request/HttpMethod;

    const-string v3, "PUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/transsion/http/request/HttpMethod;->PUT:Lcom/transsion/http/request/HttpMethod;

    new-instance v3, Lcom/transsion/http/request/HttpMethod;

    const-string v4, "PATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/http/request/HttpMethod;->PATCH:Lcom/transsion/http/request/HttpMethod;

    new-instance v4, Lcom/transsion/http/request/HttpMethod;

    const-string v5, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/transsion/http/request/HttpMethod;->HEAD:Lcom/transsion/http/request/HttpMethod;

    new-instance v5, Lcom/transsion/http/request/HttpMethod;

    const-string v6, "MOVE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/transsion/http/request/HttpMethod;->MOVE:Lcom/transsion/http/request/HttpMethod;

    new-instance v6, Lcom/transsion/http/request/HttpMethod;

    const-string v7, "COPY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/transsion/http/request/HttpMethod;->COPY:Lcom/transsion/http/request/HttpMethod;

    new-instance v7, Lcom/transsion/http/request/HttpMethod;

    const-string v8, "DELETE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v8}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/transsion/http/request/HttpMethod;->DELETE:Lcom/transsion/http/request/HttpMethod;

    new-instance v8, Lcom/transsion/http/request/HttpMethod;

    const-string v9, "OPTIONS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v9}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/http/request/HttpMethod;->OPTIONS:Lcom/transsion/http/request/HttpMethod;

    new-instance v9, Lcom/transsion/http/request/HttpMethod;

    const-string v10, "TRACE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v10}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/transsion/http/request/HttpMethod;->TRACE:Lcom/transsion/http/request/HttpMethod;

    new-instance v10, Lcom/transsion/http/request/HttpMethod;

    const-string v11, "CONNECT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v11}, Lcom/transsion/http/request/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/transsion/http/request/HttpMethod;->CONNECT:Lcom/transsion/http/request/HttpMethod;

    filled-new-array/range {v0 .. v10}, [Lcom/transsion/http/request/HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/transsion/http/request/HttpMethod;->a:[Lcom/transsion/http/request/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/http/request/HttpMethod;->b:Ljava/lang/String;

    return-void
.end method

.method public static permitsCache(Lcom/transsion/http/request/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->GET:Lcom/transsion/http/request/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->POST:Lcom/transsion/http/request/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRequestBody(Lcom/transsion/http/request/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->POST:Lcom/transsion/http/request/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->PUT:Lcom/transsion/http/request/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->PATCH:Lcom/transsion/http/request/HttpMethod;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->DELETE:Lcom/transsion/http/request/HttpMethod;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static permitsRetry(Lcom/transsion/http/request/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->GET:Lcom/transsion/http/request/HttpMethod;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/http/request/HttpMethod;
    .locals 1

    const-class v0, Lcom/transsion/http/request/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/http/request/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/transsion/http/request/HttpMethod;
    .locals 1

    sget-object v0, Lcom/transsion/http/request/HttpMethod;->a:[Lcom/transsion/http/request/HttpMethod;

    invoke-virtual {v0}, [Lcom/transsion/http/request/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/http/request/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/request/HttpMethod;->b:Ljava/lang/String;

    return-object p0
.end method
