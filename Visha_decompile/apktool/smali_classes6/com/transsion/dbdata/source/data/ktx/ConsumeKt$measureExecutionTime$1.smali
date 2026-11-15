.class public final Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/ktx/ConsumeKt;->measureExecutionTime$default(Lc74;Le74;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;->INSTANCE:Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/ConsumeKt$measureExecutionTime$1;->invoke(J)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The total execution time of the measureExecutionTime function is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string p1, "MeasureExecutionTime"

    invoke-static {p1, p0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
