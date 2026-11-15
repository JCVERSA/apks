.class public final Ljh4;
.super Lnh4;
.source "SourceFile"


# static fields
.field public static final e:Ljh4;

.field public static final f:Ljava/lang/String;

.field public static final g:Lcom/yandex/div/evaluable/EvaluableType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljh4;

    invoke-direct {v0}, Ljh4;-><init>()V

    sput-object v0, Ljh4;->e:Ljh4;

    const-string v0, "getStoredArrayValue"

    sput-object v0, Ljh4;->f:Ljava/lang/String;

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    sput-object v0, Ljh4;->g:Lcom/yandex/div/evaluable/EvaluableType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnh4;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Ljh4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, Ljh4;->g:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method
