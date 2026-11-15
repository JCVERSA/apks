.class public final enum Lcom/tmc/network/ContentType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmc/network/ContentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/tmc/network/ContentType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "FORM",
        "MULTIPART",
        "JSON",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmc/network/ContentType;

.field public static final enum FORM:Lcom/tmc/network/ContentType;

.field public static final enum JSON:Lcom/tmc/network/ContentType;

.field public static final enum MULTIPART:Lcom/tmc/network/ContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/tmc/network/ContentType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/tmc/network/ContentType;

    .line 3
    .line 4
    sget-object v1, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tmc/network/ContentType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "application/x-www-from-urlencoded"

    .line 5
    .line 6
    const-string v3, "FORM"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    .line 12
    .line 13
    new-instance v0, Lcom/tmc/network/ContentType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "multipart/form-data"

    .line 17
    .line 18
    const-string v3, "MULTIPART"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    .line 24
    .line 25
    new-instance v0, Lcom/tmc/network/ContentType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "application/json"

    .line 29
    .line 30
    const-string v3, "JSON"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    .line 36
    .line 37
    invoke-static {}, Lcom/tmc/network/ContentType;->$values()[Lcom/tmc/network/ContentType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/tmc/network/ContentType;->$VALUES:[Lcom/tmc/network/ContentType;

    .line 42
    .line 43
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const-string p1, ";charset=utf-8"

    .line 5
    .line 6
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/tmc/network/ContentType;->value:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmc/network/ContentType;
    .locals 1

    .line 1
    const-class v0, Lcom/tmc/network/ContentType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tmc/network/ContentType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tmc/network/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tmc/network/ContentType;->$VALUES:[Lcom/tmc/network/ContentType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tmc/network/ContentType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/ContentType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
