.class public abstract Lcom/yandex/div2/DivTriggerJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTriggerJsonParser$a;,
        Lcom/yandex/div2/DivTriggerJsonParser$b;,
        Lcom/yandex/div2/DivTriggerJsonParser$c;,
        Lcom/yandex/div2/DivTriggerJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTriggerJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lzbb;

.field public static final d:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivTriggerJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTriggerJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTriggerJsonParser;->a:Lcom/yandex/div2/DivTriggerJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivTrigger$Mode;->ON_CONDITION:Lcom/yandex/div2/DivTrigger$Mode;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTriggerJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivTrigger$Mode;->values()[Lcom/yandex/div2/DivTrigger$Mode;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTriggerJsonParser$Companion$TYPE_HELPER_MODE$1;->INSTANCE:Lcom/yandex/div2/DivTriggerJsonParser$Companion$TYPE_HELPER_MODE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTriggerJsonParser;->c:Lzbb;

    new-instance v0, Lau2;

    invoke-direct {v0}, Lau2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTriggerJsonParser;->d:Lhm5;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/DivTriggerJsonParser;->b(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
