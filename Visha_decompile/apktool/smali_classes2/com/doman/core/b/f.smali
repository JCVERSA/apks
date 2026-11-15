.class public final enum Lcom/doman/core/b/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/doman/core/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/doman/core/b/f;

.field public static final enum b:Lcom/doman/core/b/f;

.field public static final enum c:Lcom/doman/core/b/f;

.field public static final enum d:Lcom/doman/core/b/f;

.field public static final enum e:Lcom/doman/core/b/f;

.field public static final enum f:Lcom/doman/core/b/f;

.field public static final enum g:Lcom/doman/core/b/f;

.field public static final enum h:Lcom/doman/core/b/f;

.field public static final enum i:Lcom/doman/core/b/f;

.field public static final enum j:Lcom/doman/core/b/f;

.field public static final enum k:Lcom/doman/core/b/f;

.field private static final synthetic m:[Lcom/doman/core/b/f;


# instance fields
.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/doman/core/b/f;

    const/4 v1, 0x0

    const-string v2, "/init/check"

    const-string v3, "INITCONFIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/doman/core/b/f;->a:Lcom/doman/core/b/f;

    new-instance v1, Lcom/doman/core/b/f;

    const/4 v2, 0x1

    const-string v3, "/app/tk_a"

    const-string v4, "ADCONFIG"

    invoke-direct {v1, v4, v2, v3}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/doman/core/b/f;->b:Lcom/doman/core/b/f;

    new-instance v2, Lcom/doman/core/b/f;

    const/4 v3, 0x2

    const-string v4, "/app/tk_al"

    const-string v5, "APPLIST"

    invoke-direct {v2, v5, v3, v4}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/doman/core/b/f;->c:Lcom/doman/core/b/f;

    new-instance v3, Lcom/doman/core/b/f;

    const/4 v4, 0x3

    const-string v5, "/app/tk_d"

    const-string v6, "GETDEVICES"

    invoke-direct {v3, v6, v4, v5}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/doman/core/b/f;->d:Lcom/doman/core/b/f;

    new-instance v4, Lcom/doman/core/b/f;

    const/4 v5, 0x4

    const-string v6, "/app/tk_r"

    const-string v7, "GETAPPTASKREQUEST"

    invoke-direct {v4, v7, v5, v6}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/doman/core/b/f;->e:Lcom/doman/core/b/f;

    new-instance v5, Lcom/doman/core/b/f;

    const/4 v6, 0x5

    const-string v7, "/app/tk_l"

    const-string v8, "GETTASKDETIAL"

    invoke-direct {v5, v8, v6, v7}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/doman/core/b/f;->f:Lcom/doman/core/b/f;

    new-instance v6, Lcom/doman/core/b/f;

    const/4 v7, 0x6

    const-string v8, "/app/tk_e"

    const-string v9, "TRACKEVENT"

    invoke-direct {v6, v9, v7, v8}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/doman/core/b/f;->g:Lcom/doman/core/b/f;

    new-instance v7, Lcom/doman/core/b/f;

    const/4 v8, 0x7

    const-string v9, "/mt/tk_a"

    const-string v10, "MQTT"

    invoke-direct {v7, v10, v8, v9}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/doman/core/b/f;->h:Lcom/doman/core/b/f;

    new-instance v8, Lcom/doman/core/b/f;

    const/16 v9, 0x8

    const-string v10, "/app/tk_dk"

    const-string v11, "DEEP"

    invoke-direct {v8, v11, v9, v10}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/doman/core/b/f;->i:Lcom/doman/core/b/f;

    new-instance v9, Lcom/doman/core/b/f;

    const/16 v10, 0x9

    const-string v11, "/tk/pe"

    const-string v12, "CLIP"

    invoke-direct {v9, v12, v10, v11}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/doman/core/b/f;->j:Lcom/doman/core/b/f;

    new-instance v10, Lcom/doman/core/b/f;

    const/16 v11, 0xa

    const-string v12, "/tk/ct"

    const-string v13, "CLICK"

    invoke-direct {v10, v13, v11, v12}, Lcom/doman/core/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/doman/core/b/f;->k:Lcom/doman/core/b/f;

    filled-new-array/range {v0 .. v10}, [Lcom/doman/core/b/f;

    move-result-object v0

    sput-object v0, Lcom/doman/core/b/f;->m:[Lcom/doman/core/b/f;

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

    iput-object p3, p0, Lcom/doman/core/b/f;->l:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/doman/core/b/f;
    .locals 1

    const-class v0, Lcom/doman/core/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/doman/core/b/f;

    return-object p0
.end method

.method public static values()[Lcom/doman/core/b/f;
    .locals 1

    sget-object v0, Lcom/doman/core/b/f;->m:[Lcom/doman/core/b/f;

    invoke-virtual {v0}, [Lcom/doman/core/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/doman/core/b/f;

    return-object v0
.end method
