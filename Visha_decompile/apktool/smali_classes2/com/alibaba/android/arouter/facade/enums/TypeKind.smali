.class public final enum Lcom/alibaba/android/arouter/facade/enums/TypeKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/arouter/facade/enums/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum BOOLEAN:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum BYTE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum CHAR:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum DOUBLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum FLOAT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum INT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum LONG:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum OBJECT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum PARCELABLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum SERIALIZABLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum SHORT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

.field public static final enum STRING:Lcom/alibaba/android/arouter/facade/enums/TypeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->BOOLEAN:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v2, "BYTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->BYTE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v2, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v3, "SHORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->SHORT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v3, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v4, "INT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->INT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v4, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v5, "LONG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->LONG:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v5, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v6, "CHAR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->CHAR:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v6, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v7, "FLOAT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->FLOAT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v7, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v8, "DOUBLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->DOUBLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v8, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v9, "STRING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->STRING:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v9, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v10, "SERIALIZABLE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->SERIALIZABLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v10, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v11, "PARCELABLE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->PARCELABLE:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    new-instance v11, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    const-string v12, "OBJECT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/alibaba/android/arouter/facade/enums/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->OBJECT:Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    filled-new-array/range {v0 .. v11}, [Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/TypeKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/enums/TypeKind;
    .locals 1

    const-class v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/arouter/facade/enums/TypeKind;
    .locals 1

    sget-object v0, Lcom/alibaba/android/arouter/facade/enums/TypeKind;->$VALUES:[Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    invoke-virtual {v0}, [Lcom/alibaba/android/arouter/facade/enums/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/arouter/facade/enums/TypeKind;

    return-object v0
.end method
