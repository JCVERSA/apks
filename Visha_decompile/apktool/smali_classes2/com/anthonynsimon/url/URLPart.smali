.class final enum Lcom/anthonynsimon/url/URLPart;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anthonynsimon/url/URLPart;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREDENTIALS:Lcom/anthonynsimon/url/URLPart;

.field public static final enum ENCODE_ZONE:Lcom/anthonynsimon/url/URLPart;

.field public static final enum FRAGMENT:Lcom/anthonynsimon/url/URLPart;

.field public static final enum HOST:Lcom/anthonynsimon/url/URLPart;

.field public static final enum PATH:Lcom/anthonynsimon/url/URLPart;

.field public static final enum QUERY:Lcom/anthonynsimon/url/URLPart;

.field public static final synthetic b:[Lcom/anthonynsimon/url/URLPart;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/anthonynsimon/url/URLPart;

    const-string v1, "CREDENTIALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anthonynsimon/url/URLPart;->CREDENTIALS:Lcom/anthonynsimon/url/URLPart;

    new-instance v1, Lcom/anthonynsimon/url/URLPart;

    const-string v2, "HOST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anthonynsimon/url/URLPart;->HOST:Lcom/anthonynsimon/url/URLPart;

    new-instance v2, Lcom/anthonynsimon/url/URLPart;

    const-string v3, "PATH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/anthonynsimon/url/URLPart;->PATH:Lcom/anthonynsimon/url/URLPart;

    new-instance v3, Lcom/anthonynsimon/url/URLPart;

    const-string v4, "QUERY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/anthonynsimon/url/URLPart;->QUERY:Lcom/anthonynsimon/url/URLPart;

    new-instance v4, Lcom/anthonynsimon/url/URLPart;

    const-string v5, "FRAGMENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/anthonynsimon/url/URLPart;->FRAGMENT:Lcom/anthonynsimon/url/URLPart;

    new-instance v5, Lcom/anthonynsimon/url/URLPart;

    const-string v6, "ENCODE_ZONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/anthonynsimon/url/URLPart;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/anthonynsimon/url/URLPart;->ENCODE_ZONE:Lcom/anthonynsimon/url/URLPart;

    filled-new-array/range {v0 .. v5}, [Lcom/anthonynsimon/url/URLPart;

    move-result-object v0

    sput-object v0, Lcom/anthonynsimon/url/URLPart;->b:[Lcom/anthonynsimon/url/URLPart;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anthonynsimon/url/URLPart;
    .locals 1

    const-class v0, Lcom/anthonynsimon/url/URLPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anthonynsimon/url/URLPart;

    return-object p0
.end method

.method public static values()[Lcom/anthonynsimon/url/URLPart;
    .locals 1

    sget-object v0, Lcom/anthonynsimon/url/URLPart;->b:[Lcom/anthonynsimon/url/URLPart;

    invoke-virtual {v0}, [Lcom/anthonynsimon/url/URLPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anthonynsimon/url/URLPart;

    return-object v0
.end method
