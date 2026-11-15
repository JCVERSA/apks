.class public final enum Lcom/yandex/div2/DivAction$Target;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAction$Target$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/div2/DivAction$Target;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0006j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/yandex/div2/DivAction$Target;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "Converter",
        "a",
        "SELF",
        "BLANK",
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
.field private static final synthetic $VALUES:[Lcom/yandex/div2/DivAction$Target;

.field public static final enum BLANK:Lcom/yandex/div2/DivAction$Target;

.field public static final Converter:Lcom/yandex/div2/DivAction$Target$a;

.field public static final FROM_STRING:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field public static final enum SELF:Lcom/yandex/div2/DivAction$Target;

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
.method private static final synthetic $values()[Lcom/yandex/div2/DivAction$Target;
    .locals 2

    sget-object v0, Lcom/yandex/div2/DivAction$Target;->SELF:Lcom/yandex/div2/DivAction$Target;

    sget-object v1, Lcom/yandex/div2/DivAction$Target;->BLANK:Lcom/yandex/div2/DivAction$Target;

    filled-new-array {v0, v1}, [Lcom/yandex/div2/DivAction$Target;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/div2/DivAction$Target;

    const/4 v1, 0x0

    const-string v2, "_self"

    const-string v3, "SELF"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivAction$Target;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->SELF:Lcom/yandex/div2/DivAction$Target;

    new-instance v0, Lcom/yandex/div2/DivAction$Target;

    const/4 v1, 0x1

    const-string v2, "_blank"

    const-string v3, "BLANK"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div2/DivAction$Target;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->BLANK:Lcom/yandex/div2/DivAction$Target;

    invoke-static {}, Lcom/yandex/div2/DivAction$Target;->$values()[Lcom/yandex/div2/DivAction$Target;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->$VALUES:[Lcom/yandex/div2/DivAction$Target;

    new-instance v0, Lcom/yandex/div2/DivAction$Target$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAction$Target$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->Converter:Lcom/yandex/div2/DivAction$Target$a;

    sget-object v0, Lcom/yandex/div2/DivAction$Target$Converter$TO_STRING$1;->INSTANCE:Lcom/yandex/div2/DivAction$Target$Converter$TO_STRING$1;

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->TO_STRING:Le74;

    sget-object v0, Lcom/yandex/div2/DivAction$Target$Converter$FROM_STRING$1;->INSTANCE:Lcom/yandex/div2/DivAction$Target$Converter$FROM_STRING$1;

    sput-object v0, Lcom/yandex/div2/DivAction$Target;->FROM_STRING:Le74;

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

    iput-object p3, p0, Lcom/yandex/div2/DivAction$Target;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getValue$p(Lcom/yandex/div2/DivAction$Target;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivAction$Target;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/div2/DivAction$Target;
    .locals 1

    const-class v0, Lcom/yandex/div2/DivAction$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAction$Target;

    return-object p0
.end method

.method public static values()[Lcom/yandex/div2/DivAction$Target;
    .locals 1

    sget-object v0, Lcom/yandex/div2/DivAction$Target;->$VALUES:[Lcom/yandex/div2/DivAction$Target;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/div2/DivAction$Target;

    return-object v0
.end method
