.class public final enum Lcom/yandex/div2/DivInput$EnterKeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterKeyType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivInput$EnterKeyType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/div2/DivInput$EnterKeyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/yandex/div2/DivInput$EnterKeyType;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "Converter",
        "a",
        "DEFAULT",
        "GO",
        "SEARCH",
        "SEND",
        "DONE",
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
.field private static final synthetic $VALUES:[Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final Converter:Lcom/yandex/div2/DivInput$EnterKeyType$a;

.field public static final enum DEFAULT:Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final enum DONE:Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final FROM_STRING:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field public static final enum GO:Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final enum SEARCH:Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final enum SEND:Lcom/yandex/div2/DivInput$EnterKeyType;

.field public static final TO_STRING:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/yandex/div2/DivInput$EnterKeyType;
    .locals 5

    sget-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->DEFAULT:Lcom/yandex/div2/DivInput$EnterKeyType;

    sget-object v1, Lcom/yandex/div2/DivInput$EnterKeyType;->GO:Lcom/yandex/div2/DivInput$EnterKeyType;

    sget-object v2, Lcom/yandex/div2/DivInput$EnterKeyType;->SEARCH:Lcom/yandex/div2/DivInput$EnterKeyType;

    sget-object v3, Lcom/yandex/div2/DivInput$EnterKeyType;->SEND:Lcom/yandex/div2/DivInput$EnterKeyType;

    sget-object v4, Lcom/yandex/div2/DivInput$EnterKeyType;->DONE:Lcom/yandex/div2/DivInput$EnterKeyType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/yandex/div2/DivInput$EnterKeyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivInput$EnterKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->DEFAULT:Lcom/yandex/div2/DivInput$EnterKeyType;

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    const/4 v1, 0x1

    const-string v2, "go"

    const-string v3, "GO"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivInput$EnterKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->GO:Lcom/yandex/div2/DivInput$EnterKeyType;

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    const/4 v1, 0x2

    const-string v2, "search"

    const-string v3, "SEARCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivInput$EnterKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->SEARCH:Lcom/yandex/div2/DivInput$EnterKeyType;

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    const/4 v1, 0x3

    const-string v2, "send"

    const-string v3, "SEND"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivInput$EnterKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->SEND:Lcom/yandex/div2/DivInput$EnterKeyType;

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    const/4 v1, 0x4

    const-string v2, "done"

    const-string v3, "DONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivInput$EnterKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->DONE:Lcom/yandex/div2/DivInput$EnterKeyType;

    invoke-static {}, Lcom/yandex/div2/DivInput$EnterKeyType;->$values()[Lcom/yandex/div2/DivInput$EnterKeyType;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->$VALUES:[Lcom/yandex/div2/DivInput$EnterKeyType;

    new-instance v0, Lcom/yandex/div2/DivInput$EnterKeyType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivInput$EnterKeyType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->Converter:Lcom/yandex/div2/DivInput$EnterKeyType$a;

    sget-object v0, Lcom/yandex/div2/DivInput$EnterKeyType$Converter$TO_STRING$1;->INSTANCE:Lcom/yandex/div2/DivInput$EnterKeyType$Converter$TO_STRING$1;

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->TO_STRING:Le74;

    sget-object v0, Lcom/yandex/div2/DivInput$EnterKeyType$Converter$FROM_STRING$1;->INSTANCE:Lcom/yandex/div2/DivInput$EnterKeyType$Converter$FROM_STRING$1;

    sput-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->FROM_STRING:Le74;

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

    iput-object p3, p0, Lcom/yandex/div2/DivInput$EnterKeyType;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getValue$p(Lcom/yandex/div2/DivInput$EnterKeyType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivInput$EnterKeyType;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/div2/DivInput$EnterKeyType;
    .locals 1

    const-class v0, Lcom/yandex/div2/DivInput$EnterKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInput$EnterKeyType;

    return-object p0
.end method

.method public static values()[Lcom/yandex/div2/DivInput$EnterKeyType;
    .locals 1

    sget-object v0, Lcom/yandex/div2/DivInput$EnterKeyType;->$VALUES:[Lcom/yandex/div2/DivInput$EnterKeyType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/div2/DivInput$EnterKeyType;

    return-object v0
.end method
