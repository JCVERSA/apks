.class public final enum Lcom/app/hubert/guide/model/HighLight$Shape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/hubert/guide/model/HighLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/app/hubert/guide/model/HighLight$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public static final enum ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;


# direct methods
.method private static synthetic $values()[Lcom/app/hubert/guide/model/HighLight$Shape;
    .locals 4

    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    sget-object v1, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    sget-object v2, Lcom/app/hubert/guide/model/HighLight$Shape;->OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

    sget-object v3, Lcom/app/hubert/guide/model/HighLight$Shape;->ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    filled-new-array {v0, v1, v2, v3}, [Lcom/app/hubert/guide/model/HighLight$Shape;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const-string v1, "OVAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->OVAL:Lcom/app/hubert/guide/model/HighLight$Shape;

    new-instance v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    const-string v1, "ROUND_RECTANGLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/app/hubert/guide/model/HighLight$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->ROUND_RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-static {}, Lcom/app/hubert/guide/model/HighLight$Shape;->$values()[Lcom/app/hubert/guide/model/HighLight$Shape;

    move-result-object v0

    sput-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->$VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

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

.method public static valueOf(Ljava/lang/String;)Lcom/app/hubert/guide/model/HighLight$Shape;
    .locals 1

    const-class v0, Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object p0
.end method

.method public static values()[Lcom/app/hubert/guide/model/HighLight$Shape;
    .locals 1

    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->$VALUES:[Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-virtual {v0}, [Lcom/app/hubert/guide/model/HighLight$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object v0
.end method
