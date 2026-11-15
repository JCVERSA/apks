.class public final enum Lorg/greenrobot/greendao/generator/PropertyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/greenrobot/greendao/generator/PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Byte:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Date:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Double:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Float:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Int:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Long:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Short:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum String:Lorg/greenrobot/greendao/generator/PropertyType;


# instance fields
.field private final scalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v1, "Byte"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v1, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v4, "Short"

    invoke-direct {v1, v4, v3, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Short:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v4, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v5, "Int"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/greenrobot/greendao/generator/PropertyType;->Int:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v5, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v6, "Long"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v6, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v7, "Boolean"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v7, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v8, "Float"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/greenrobot/greendao/generator/PropertyType;->Float:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v8, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v9, "Double"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lorg/greenrobot/greendao/generator/PropertyType;->Double:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v9, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v3, "String"

    const/4 v10, 0x7

    invoke-direct {v9, v3, v10, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v10, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v3, "ByteArray"

    const/16 v11, 0x8

    invoke-direct {v10, v3, v11, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lorg/greenrobot/greendao/generator/PropertyType;->ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v11, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v3, "Date"

    const/16 v12, 0x9

    invoke-direct {v11, v3, v12, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    filled-new-array/range {v0 .. v9}, [Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->$VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/greenrobot/greendao/generator/PropertyType;->scalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 1

    const-class v0, Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/generator/PropertyType;

    return-object p0
.end method

.method public static values()[Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 1

    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->$VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {v0}, [Lorg/greenrobot/greendao/generator/PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/greenrobot/greendao/generator/PropertyType;

    return-object v0
.end method


# virtual methods
.method public isScalar()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/PropertyType;->scalar:Z

    return p0
.end method
