.class public enum Lcom/transsion/transfer/androidasync/http/Protocol;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/transfer/androidasync/http/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/transfer/androidasync/http/Protocol;

.field public static final enum HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

.field public static final enum HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

.field public static final enum HTTP_2:Lcom/transsion/transfer/androidasync/http/Protocol;

.field public static final enum SPDY_3:Lcom/transsion/transfer/androidasync/http/Protocol;

.field private static final protocols:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/transsion/transfer/androidasync/http/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/transfer/androidasync/http/Protocol;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->SPDY_3:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_2:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "http/1.0"

    .line 5
    .line 6
    const-string v3, "HTTP_1_0"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/transfer/androidasync/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "http/1.1"

    .line 17
    .line 18
    const-string v4, "HTTP_1_1"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/transsion/transfer/androidasync/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 24
    .line 25
    new-instance v2, Lcom/transsion/transfer/androidasync/http/Protocol$1;

    .line 26
    .line 27
    const-string v3, "SPDY_3"

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const-string v5, "spdy/3.1"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/transsion/transfer/androidasync/http/Protocol$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/transfer/androidasync/http/x;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/transsion/transfer/androidasync/http/Protocol;->SPDY_3:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 37
    .line 38
    new-instance v3, Lcom/transsion/transfer/androidasync/http/Protocol$2;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    const-string v5, "h2-13"

    .line 42
    .line 43
    const-string v7, "HTTP_2"

    .line 44
    .line 45
    invoke-direct {v3, v7, v4, v5, v6}, Lcom/transsion/transfer/androidasync/http/Protocol$2;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/transfer/androidasync/http/x;)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_2:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 49
    .line 50
    invoke-static {}, Lcom/transsion/transfer/androidasync/http/Protocol;->$values()[Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sput-object v4, Lcom/transsion/transfer/androidasync/http/Protocol;->$VALUES:[Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 55
    .line 56
    new-instance v4, Ljava/util/Hashtable;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v4, Lcom/transsion/transfer/androidasync/http/Protocol;->protocols:Ljava/util/Hashtable;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/Protocol;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/Protocol;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/http/Protocol;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/http/Protocol;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/transfer/androidasync/http/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lcom/transsion/transfer/androidasync/http/Protocol;->protocols:Ljava/util/Hashtable;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/transfer/androidasync/http/Protocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/http/Protocol;->$VALUES:[Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/transsion/transfer/androidasync/http/Protocol;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/Protocol;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
