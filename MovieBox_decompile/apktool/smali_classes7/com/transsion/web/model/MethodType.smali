.class public final enum Lcom/transsion/web/model/MethodType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/web/model/MethodType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/web/model/MethodType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "DENY",
        "DOWNLOAD",
        "JS",
        "ALLOW",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/web/model/MethodType;

.field public static final enum ALLOW:Lcom/transsion/web/model/MethodType;

.field public static final enum DENY:Lcom/transsion/web/model/MethodType;

.field public static final enum DOWNLOAD:Lcom/transsion/web/model/MethodType;

.field public static final enum JS:Lcom/transsion/web/model/MethodType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/web/model/MethodType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/transsion/web/model/MethodType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/web/model/MethodType;->DENY:Lcom/transsion/web/model/MethodType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/web/model/MethodType;->DOWNLOAD:Lcom/transsion/web/model/MethodType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/web/model/MethodType;->JS:Lcom/transsion/web/model/MethodType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/web/model/MethodType;->ALLOW:Lcom/transsion/web/model/MethodType;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/web/model/MethodType;

    .line 2
    .line 3
    const-string v1, "DENY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/web/model/MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/web/model/MethodType;->DENY:Lcom/transsion/web/model/MethodType;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/web/model/MethodType;

    .line 12
    .line 13
    const-string v1, "DOWNLOAD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/web/model/MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/web/model/MethodType;->DOWNLOAD:Lcom/transsion/web/model/MethodType;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/web/model/MethodType;

    .line 22
    .line 23
    const-string v1, "JS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/web/model/MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/web/model/MethodType;->JS:Lcom/transsion/web/model/MethodType;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/web/model/MethodType;

    .line 32
    .line 33
    const-string v1, "ALLOW"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/web/model/MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/web/model/MethodType;->ALLOW:Lcom/transsion/web/model/MethodType;

    .line 40
    .line 41
    invoke-static {}, Lcom/transsion/web/model/MethodType;->$values()[Lcom/transsion/web/model/MethodType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/transsion/web/model/MethodType;->$VALUES:[Lcom/transsion/web/model/MethodType;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/transsion/web/model/MethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 52
    .line 53
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
    iput-object p3, p0, Lcom/transsion/web/model/MethodType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/web/model/MethodType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/web/model/MethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/web/model/MethodType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/web/model/MethodType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/web/model/MethodType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/web/model/MethodType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/web/model/MethodType;->$VALUES:[Lcom/transsion/web/model/MethodType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/web/model/MethodType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/web/model/MethodType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/web/model/MethodType;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
