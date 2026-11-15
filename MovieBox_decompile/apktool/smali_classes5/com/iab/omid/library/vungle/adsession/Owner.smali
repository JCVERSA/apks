.class public final enum Lcom/iab/omid/library/vungle/adsession/Owner;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/vungle/adsession/Owner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/vungle/adsession/Owner;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/Owner;

.field public static final enum NATIVE:Lcom/iab/omid/library/vungle/adsession/Owner;

.field public static final enum NONE:Lcom/iab/omid/library/vungle/adsession/Owner;


# instance fields
.field private final owner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "native"

    .line 5
    .line 6
    const-string v3, "NATIVE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/vungle/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 12
    .line 13
    new-instance v2, Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "javascript"

    .line 17
    .line 18
    const-string v5, "JAVASCRIPT"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/iab/omid/library/vungle/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 24
    .line 25
    new-instance v4, Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "none"

    .line 29
    .line 30
    const-string v7, "NONE"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/iab/omid/library/vungle/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/iab/omid/library/vungle/adsession/Owner;->NONE:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    new-array v6, v6, [Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 39
    .line 40
    aput-object v0, v6, v1

    .line 41
    .line 42
    aput-object v2, v6, v3

    .line 43
    .line 44
    aput-object v4, v6, v5

    .line 45
    .line 46
    sput-object v6, Lcom/iab/omid/library/vungle/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 47
    .line 48
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
    iput-object p3, p0, Lcom/iab/omid/library/vungle/adsession/Owner;->owner:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/Owner;
    .locals 1

    .line 1
    const-class v0, Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/vungle/adsession/Owner;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/vungle/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/iab/omid/library/vungle/adsession/Owner;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/Owner;->owner:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
