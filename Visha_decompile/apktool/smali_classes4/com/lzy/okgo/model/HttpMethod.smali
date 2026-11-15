.class public final enum Lcom/lzy/okgo/model/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum DELETE:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum GET:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum HEAD:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum PATCH:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum POST:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum PUT:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum TRACE:Lcom/lzy/okgo/model/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/lzy/okgo/model/HttpMethod;
    .locals 8

    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->GET:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v1, Lcom/lzy/okgo/model/HttpMethod;->POST:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->PUT:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v3, Lcom/lzy/okgo/model/HttpMethod;->DELETE:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v4, Lcom/lzy/okgo/model/HttpMethod;->HEAD:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v5, Lcom/lzy/okgo/model/HttpMethod;->PATCH:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v6, Lcom/lzy/okgo/model/HttpMethod;->OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

    sget-object v7, Lcom/lzy/okgo/model/HttpMethod;->TRACE:Lcom/lzy/okgo/model/HttpMethod;

    filled-new-array/range {v0 .. v7}, [Lcom/lzy/okgo/model/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->GET:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->POST:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->PUT:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->DELETE:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "HEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->HEAD:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "PATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->PATCH:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "TRACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->TRACE:Lcom/lzy/okgo/model/HttpMethod;

    invoke-static {}, Lcom/lzy/okgo/model/HttpMethod;->$values()[Lcom/lzy/okgo/model/HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->$VALUES:[Lcom/lzy/okgo/model/HttpMethod;

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

    iput-object p3, p0, Lcom/lzy/okgo/model/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    const-class v0, Lcom/lzy/okgo/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/model/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->$VALUES:[Lcom/lzy/okgo/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/lzy/okgo/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/model/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public hasBody()Z
    .locals 2

    sget-object v0, Lcom/lzy/okgo/model/HttpMethod$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/model/HttpMethod;->value:Ljava/lang/String;

    return-object p0
.end method
