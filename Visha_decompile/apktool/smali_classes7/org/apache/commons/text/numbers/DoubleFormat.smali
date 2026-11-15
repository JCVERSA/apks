.class public final enum Lorg/apache/commons/text/numbers/DoubleFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/numbers/DoubleFormat$ScientificDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$PlainDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$EngineeringDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$Builder;,
        Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/numbers/DoubleFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/numbers/DoubleFormat;

.field public static final enum ENGINEERING:Lorg/apache/commons/text/numbers/DoubleFormat;

.field public static final enum MIXED:Lorg/apache/commons/text/numbers/DoubleFormat;

.field public static final enum PLAIN:Lorg/apache/commons/text/numbers/DoubleFormat;

.field public static final enum SCIENTIFIC:Lorg/apache/commons/text/numbers/DoubleFormat;


# instance fields
.field private final factory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/text/numbers/DoubleFormat$Builder;",
            "Ljava/util/function/DoubleFunction<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v1, Lorg/apache/commons/text/numbers/a;

    invoke-direct {v1}, Lorg/apache/commons/text/numbers/a;-><init>()V

    const-string v2, "PLAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v0, Lorg/apache/commons/text/numbers/DoubleFormat;->PLAIN:Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v1, Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v2, Lorg/apache/commons/text/numbers/b;

    invoke-direct {v2}, Lorg/apache/commons/text/numbers/b;-><init>()V

    const-string v3, "SCIENTIFIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v1, Lorg/apache/commons/text/numbers/DoubleFormat;->SCIENTIFIC:Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v2, Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v3, Lorg/apache/commons/text/numbers/c;

    invoke-direct {v3}, Lorg/apache/commons/text/numbers/c;-><init>()V

    const-string v4, "ENGINEERING"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v2, Lorg/apache/commons/text/numbers/DoubleFormat;->ENGINEERING:Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v3, Lorg/apache/commons/text/numbers/DoubleFormat;

    new-instance v4, Lorg/apache/commons/text/numbers/d;

    invoke-direct {v4}, Lorg/apache/commons/text/numbers/d;-><init>()V

    const-string v5, "MIXED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v3, Lorg/apache/commons/text/numbers/DoubleFormat;->MIXED:Lorg/apache/commons/text/numbers/DoubleFormat;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/text/numbers/DoubleFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/numbers/DoubleFormat;->$VALUES:[Lorg/apache/commons/text/numbers/DoubleFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/text/numbers/DoubleFormat$Builder;",
            "Ljava/util/function/DoubleFunction<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/text/numbers/DoubleFormat;->factory:Ljava/util/function/Function;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat;
    .locals 1

    const-class v0, Lorg/apache/commons/text/numbers/DoubleFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/numbers/DoubleFormat;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/numbers/DoubleFormat;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/numbers/DoubleFormat;->$VALUES:[Lorg/apache/commons/text/numbers/DoubleFormat;

    invoke-virtual {v0}, [Lorg/apache/commons/text/numbers/DoubleFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/numbers/DoubleFormat;

    return-object v0
.end method


# virtual methods
.method public builder()Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat;->factory:Ljava/util/function/Function;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;-><init>(Ljava/util/function/Function;Lorg/apache/commons/text/numbers/DoubleFormat$1;)V

    return-object v0
.end method
