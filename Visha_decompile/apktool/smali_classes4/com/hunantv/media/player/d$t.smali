.class public final enum Lcom/hunantv/media/player/d$t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/d$t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hunantv/media/player/d$t;

.field public static final enum b:Lcom/hunantv/media/player/d$t;

.field public static final enum c:Lcom/hunantv/media/player/d$t;

.field public static final enum d:Lcom/hunantv/media/player/d$t;

.field public static final enum e:Lcom/hunantv/media/player/d$t;

.field public static final enum f:Lcom/hunantv/media/player/d$t;

.field public static final enum g:Lcom/hunantv/media/player/d$t;

.field public static final enum h:Lcom/hunantv/media/player/d$t;

.field public static final enum i:Lcom/hunantv/media/player/d$t;

.field public static final enum j:Lcom/hunantv/media/player/d$t;

.field private static final synthetic k:[Lcom/hunantv/media/player/d$t;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/hunantv/media/player/d$t;

    const-string v1, "MP_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/d$t;->a:Lcom/hunantv/media/player/d$t;

    new-instance v1, Lcom/hunantv/media/player/d$t;

    const-string v2, "MP_STATE_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/d$t;->b:Lcom/hunantv/media/player/d$t;

    new-instance v2, Lcom/hunantv/media/player/d$t;

    const-string v3, "MP_STATE_ASYNC_PREPARING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/d$t;->c:Lcom/hunantv/media/player/d$t;

    new-instance v3, Lcom/hunantv/media/player/d$t;

    const-string v4, "MP_STATE_PREPARED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/d$t;->d:Lcom/hunantv/media/player/d$t;

    new-instance v4, Lcom/hunantv/media/player/d$t;

    const-string v5, "MP_STATE_STARTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/player/d$t;->e:Lcom/hunantv/media/player/d$t;

    new-instance v5, Lcom/hunantv/media/player/d$t;

    const-string v6, "MP_STATE_PAUSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hunantv/media/player/d$t;->f:Lcom/hunantv/media/player/d$t;

    new-instance v6, Lcom/hunantv/media/player/d$t;

    const-string v7, "MP_STATE_COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/hunantv/media/player/d$t;->g:Lcom/hunantv/media/player/d$t;

    new-instance v7, Lcom/hunantv/media/player/d$t;

    const-string v8, "MP_STATE_STOPPED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hunantv/media/player/d$t;->h:Lcom/hunantv/media/player/d$t;

    new-instance v8, Lcom/hunantv/media/player/d$t;

    const-string v9, "MP_STATE_ERROR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/hunantv/media/player/d$t;->i:Lcom/hunantv/media/player/d$t;

    new-instance v9, Lcom/hunantv/media/player/d$t;

    const-string v10, "MP_STATE_END"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/hunantv/media/player/d$t;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hunantv/media/player/d$t;->j:Lcom/hunantv/media/player/d$t;

    filled-new-array/range {v0 .. v9}, [Lcom/hunantv/media/player/d$t;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/d$t;->k:[Lcom/hunantv/media/player/d$t;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/d$t;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/d$t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/d$t;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/d$t;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/d$t;->k:[Lcom/hunantv/media/player/d$t;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/d$t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/d$t;

    return-object v0
.end method
