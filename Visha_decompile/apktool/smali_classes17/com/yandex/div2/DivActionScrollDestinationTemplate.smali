.class public abstract Lcom/yandex/div2/DivActionScrollDestinationTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionScrollDestinationTemplate$a;,
        Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;,
        Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;,
        Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;,
        Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivActionScrollDestinationTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->a:Lcom/yandex/div2/DivActionScrollDestinationTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionScrollDestinationTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    if-eqz v0, :cond_0

    const-string p0, "offset"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    if-eqz v0, :cond_1

    const-string p0, "index"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    if-eqz v0, :cond_2

    const-string p0, "start"

    goto :goto_0

    :cond_2
    instance-of p0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    if-eqz p0, :cond_3

    const-string p0, "end"

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;->c()Lcom/yandex/div2/OffsetDestinationTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;->c()Lcom/yandex/div2/IndexDestinationTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;->c()Lcom/yandex/div2/StartDestinationTemplate;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;->c()Lcom/yandex/div2/EndDestinationTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->E0()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/i;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/i;->e(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
