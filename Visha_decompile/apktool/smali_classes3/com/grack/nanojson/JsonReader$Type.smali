.class public final enum Lcom/grack/nanojson/JsonReader$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/grack/nanojson/JsonReader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum ARRAY:Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum BOOLEAN:Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum NULL:Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum NUMBER:Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum OBJECT:Lcom/grack/nanojson/JsonReader$Type;

.field public static final enum STRING:Lcom/grack/nanojson/JsonReader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/grack/nanojson/JsonReader$Type;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grack/nanojson/JsonReader$Type;->OBJECT:Lcom/grack/nanojson/JsonReader$Type;

    new-instance v1, Lcom/grack/nanojson/JsonReader$Type;

    const-string v2, "ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/grack/nanojson/JsonReader$Type;->ARRAY:Lcom/grack/nanojson/JsonReader$Type;

    new-instance v2, Lcom/grack/nanojson/JsonReader$Type;

    const-string v3, "STRING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/grack/nanojson/JsonReader$Type;->STRING:Lcom/grack/nanojson/JsonReader$Type;

    new-instance v3, Lcom/grack/nanojson/JsonReader$Type;

    const-string v4, "NUMBER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/grack/nanojson/JsonReader$Type;->NUMBER:Lcom/grack/nanojson/JsonReader$Type;

    new-instance v4, Lcom/grack/nanojson/JsonReader$Type;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/grack/nanojson/JsonReader$Type;->BOOLEAN:Lcom/grack/nanojson/JsonReader$Type;

    new-instance v5, Lcom/grack/nanojson/JsonReader$Type;

    const-string v6, "NULL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/grack/nanojson/JsonReader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/grack/nanojson/JsonReader$Type;->NULL:Lcom/grack/nanojson/JsonReader$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/grack/nanojson/JsonReader$Type;

    move-result-object v0

    sput-object v0, Lcom/grack/nanojson/JsonReader$Type;->$VALUES:[Lcom/grack/nanojson/JsonReader$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/grack/nanojson/JsonReader$Type;
    .locals 1

    const-class v0, Lcom/grack/nanojson/JsonReader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonReader$Type;

    return-object p0
.end method

.method public static values()[Lcom/grack/nanojson/JsonReader$Type;
    .locals 1

    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->$VALUES:[Lcom/grack/nanojson/JsonReader$Type;

    invoke-virtual {v0}, [Lcom/grack/nanojson/JsonReader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grack/nanojson/JsonReader$Type;

    return-object v0
.end method
