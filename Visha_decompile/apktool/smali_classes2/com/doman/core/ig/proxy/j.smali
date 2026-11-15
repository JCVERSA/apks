.class final enum Lcom/doman/core/ig/proxy/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/doman/core/ig/proxy/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/doman/core/ig/proxy/j;

.field public static final enum b:Lcom/doman/core/ig/proxy/j;

.field public static final enum c:Lcom/doman/core/ig/proxy/j;

.field private static final synthetic d:[Lcom/doman/core/ig/proxy/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/doman/core/ig/proxy/j;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/doman/core/ig/proxy/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    new-instance v1, Lcom/doman/core/ig/proxy/j;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/doman/core/ig/proxy/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    new-instance v2, Lcom/doman/core/ig/proxy/j;

    const-string v3, "NO_RESULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/doman/core/ig/proxy/j;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/doman/core/ig/proxy/j;->c:Lcom/doman/core/ig/proxy/j;

    filled-new-array {v0, v1, v2}, [Lcom/doman/core/ig/proxy/j;

    move-result-object v0

    sput-object v0, Lcom/doman/core/ig/proxy/j;->d:[Lcom/doman/core/ig/proxy/j;

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

.method public static valueOf(Ljava/lang/String;)Lcom/doman/core/ig/proxy/j;
    .locals 1

    const-class v0, Lcom/doman/core/ig/proxy/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/doman/core/ig/proxy/j;

    return-object p0
.end method

.method public static values()[Lcom/doman/core/ig/proxy/j;
    .locals 1

    sget-object v0, Lcom/doman/core/ig/proxy/j;->d:[Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v0}, [Lcom/doman/core/ig/proxy/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/doman/core/ig/proxy/j;

    return-object v0
.end method
