.class public final Loh4;
.super Lnh4;
.source "SourceFile"


# static fields
.field public static final e:Loh4;

.field public static final f:Ljava/lang/String;

.field public static final g:Lcom/yandex/div/evaluable/EvaluableType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh4;

    invoke-direct {v0}, Loh4;-><init>()V

    sput-object v0, Loh4;->e:Loh4;

    const-string v0, "getStoredDictValue"

    sput-object v0, Loh4;->f:Ljava/lang/String;

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    sput-object v0, Loh4;->g:Lcom/yandex/div/evaluable/EvaluableType;

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

    sget-object p0, Loh4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    sget-object p0, Loh4;->g:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method
