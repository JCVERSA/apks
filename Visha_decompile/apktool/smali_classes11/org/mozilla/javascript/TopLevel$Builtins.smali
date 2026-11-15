.class public final enum Lorg/mozilla/javascript/TopLevel$Builtins;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/TopLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Builtins"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/TopLevel$Builtins;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Array:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Boolean:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Error:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Function:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Number:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Object:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum String:Lorg/mozilla/javascript/TopLevel$Builtins;

.field public static final enum Symbol:Lorg/mozilla/javascript/TopLevel$Builtins;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v1, "Object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v1, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v2, "Array"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Array:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v2, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v3, "Function"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/javascript/TopLevel$Builtins;->Function:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v3, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v4, "String"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mozilla/javascript/TopLevel$Builtins;->String:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v4, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v5, "Number"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mozilla/javascript/TopLevel$Builtins;->Number:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v5, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v6, "Boolean"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/mozilla/javascript/TopLevel$Builtins;->Boolean:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v6, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v7, "RegExp"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v7, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v8, "Error"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mozilla/javascript/TopLevel$Builtins;->Error:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v8, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v9, "Symbol"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/mozilla/javascript/TopLevel$Builtins;->Symbol:Lorg/mozilla/javascript/TopLevel$Builtins;

    new-instance v9, Lorg/mozilla/javascript/TopLevel$Builtins;

    const-string v10, "GeneratorFunction"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/mozilla/javascript/TopLevel$Builtins;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    filled-new-array/range {v0 .. v9}, [Lorg/mozilla/javascript/TopLevel$Builtins;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->$VALUES:[Lorg/mozilla/javascript/TopLevel$Builtins;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/TopLevel$Builtins;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/TopLevel$Builtins;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/TopLevel$Builtins;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->$VALUES:[Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/TopLevel$Builtins;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/TopLevel$Builtins;

    return-object v0
.end method
