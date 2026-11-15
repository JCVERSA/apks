.class public final enum Lcom/yandex/div/data/StoredValue$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/data/StoredValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/data/StoredValue$Type$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/div/data/StoredValue$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/yandex/div/data/StoredValue$Type;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "Converter",
        "a",
        "STRING",
        "INTEGER",
        "BOOLEAN",
        "NUMBER",
        "COLOR",
        "URL",
        "ARRAY",
        "DICT",
        "div-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum ARRAY:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum BOOLEAN:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum COLOR:Lcom/yandex/div/data/StoredValue$Type;

.field public static final Converter:Lcom/yandex/div/data/StoredValue$Type$a;

.field public static final enum DICT:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum INTEGER:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum NUMBER:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum STRING:Lcom/yandex/div/data/StoredValue$Type;

.field public static final enum URL:Lcom/yandex/div/data/StoredValue$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/yandex/div/data/StoredValue$Type;
    .locals 8

    sget-object v0, Lcom/yandex/div/data/StoredValue$Type;->STRING:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v1, Lcom/yandex/div/data/StoredValue$Type;->INTEGER:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v2, Lcom/yandex/div/data/StoredValue$Type;->BOOLEAN:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v3, Lcom/yandex/div/data/StoredValue$Type;->NUMBER:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v4, Lcom/yandex/div/data/StoredValue$Type;->COLOR:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v5, Lcom/yandex/div/data/StoredValue$Type;->URL:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v6, Lcom/yandex/div/data/StoredValue$Type;->ARRAY:Lcom/yandex/div/data/StoredValue$Type;

    sget-object v7, Lcom/yandex/div/data/StoredValue$Type;->DICT:Lcom/yandex/div/data/StoredValue$Type;

    filled-new-array/range {v0 .. v7}, [Lcom/yandex/div/data/StoredValue$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x0

    const-string v2, "string"

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->STRING:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x1

    const-string v2, "integer"

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->INTEGER:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x2

    const-string v2, "boolean"

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->BOOLEAN:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x3

    const-string v2, "number"

    const-string v3, "NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->NUMBER:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x4

    const-string v2, "color"

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->COLOR:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x5

    const-string v2, "url"

    const-string v3, "URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->URL:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x6

    const-string v2, "array"

    const-string v3, "ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->ARRAY:Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type;

    const/4 v1, 0x7

    const-string v2, "dict"

    const-string v3, "DICT"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/data/StoredValue$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->DICT:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {}, Lcom/yandex/div/data/StoredValue$Type;->$values()[Lcom/yandex/div/data/StoredValue$Type;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->$VALUES:[Lcom/yandex/div/data/StoredValue$Type;

    new-instance v0, Lcom/yandex/div/data/StoredValue$Type$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/data/StoredValue$Type$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/data/StoredValue$Type;->Converter:Lcom/yandex/div/data/StoredValue$Type$a;

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

    iput-object p3, p0, Lcom/yandex/div/data/StoredValue$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/data/StoredValue$Type;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/div/data/StoredValue$Type;
    .locals 1

    const-class v0, Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/data/StoredValue$Type;

    return-object p0
.end method

.method public static values()[Lcom/yandex/div/data/StoredValue$Type;
    .locals 1

    sget-object v0, Lcom/yandex/div/data/StoredValue$Type;->$VALUES:[Lcom/yandex/div/data/StoredValue$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/div/data/StoredValue$Type;

    return-object v0
.end method
