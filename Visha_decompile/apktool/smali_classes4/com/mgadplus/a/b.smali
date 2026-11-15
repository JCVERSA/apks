.class public final enum Lcom/mgadplus/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/a/b;

.field public static final enum ALPHE:Lcom/mgadplus/a/b;

.field public static final enum ALPHE1:Lcom/mgadplus/a/b;

.field public static final enum SCALE:Lcom/mgadplus/a/b;

.field public static final enum SCALEMIDDLE:Lcom/mgadplus/a/b;

.field public static final enum SCALERIGHTBOTTOM:Lcom/mgadplus/a/b;

.field public static final enum SCALERIGHTBOTTOMINVER:Lcom/mgadplus/a/b;

.field public static final enum TRANSLATIONX:Lcom/mgadplus/a/b;

.field public static final enum TRANSLATIONXOUT:Lcom/mgadplus/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mgadplus/a/b;

    const-string v1, "SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgadplus/a/b;->SCALE:Lcom/mgadplus/a/b;

    new-instance v1, Lcom/mgadplus/a/b;

    const-string v2, "SCALEMIDDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgadplus/a/b;->SCALEMIDDLE:Lcom/mgadplus/a/b;

    new-instance v2, Lcom/mgadplus/a/b;

    const-string v3, "SCALERIGHTBOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgadplus/a/b;->SCALERIGHTBOTTOM:Lcom/mgadplus/a/b;

    new-instance v3, Lcom/mgadplus/a/b;

    const-string v4, "SCALERIGHTBOTTOMINVER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgadplus/a/b;->SCALERIGHTBOTTOMINVER:Lcom/mgadplus/a/b;

    new-instance v4, Lcom/mgadplus/a/b;

    const-string v5, "TRANSLATIONX"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mgadplus/a/b;->TRANSLATIONX:Lcom/mgadplus/a/b;

    new-instance v5, Lcom/mgadplus/a/b;

    const-string v6, "ALPHE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mgadplus/a/b;->ALPHE:Lcom/mgadplus/a/b;

    new-instance v6, Lcom/mgadplus/a/b;

    const-string v7, "ALPHE1"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mgadplus/a/b;->ALPHE1:Lcom/mgadplus/a/b;

    new-instance v7, Lcom/mgadplus/a/b;

    const-string v8, "TRANSLATIONXOUT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/mgadplus/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mgadplus/a/b;->TRANSLATIONXOUT:Lcom/mgadplus/a/b;

    filled-new-array/range {v0 .. v7}, [Lcom/mgadplus/a/b;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/a/b;->$VALUES:[Lcom/mgadplus/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/a/b;
    .locals 1

    const-class v0, Lcom/mgadplus/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/a/b;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/a/b;
    .locals 1

    sget-object v0, Lcom/mgadplus/a/b;->$VALUES:[Lcom/mgadplus/a/b;

    invoke-virtual {v0}, [Lcom/mgadplus/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/a/b;

    return-object v0
.end method
