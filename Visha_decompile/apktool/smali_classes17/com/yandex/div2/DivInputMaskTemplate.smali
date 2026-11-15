.class public abstract Lcom/yandex/div2/DivInputMaskTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivInputMaskTemplate$a;,
        Lcom/yandex/div2/DivInputMaskTemplate$b;,
        Lcom/yandex/div2/DivInputMaskTemplate$c;,
        Lcom/yandex/div2/DivInputMaskTemplate$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivInputMaskTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivInputMaskTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivInputMaskTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivInputMaskTemplate;->a:Lcom/yandex/div2/DivInputMaskTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivInputMaskTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivInputMaskTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivInputMaskTemplate;->b:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivInputMaskTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivInputMaskTemplate$c;

    if-eqz v0, :cond_0

    const-string p0, "fixed_length"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivInputMaskTemplate$b;

    if-eqz v0, :cond_1

    const-string p0, "currency"

    goto :goto_0

    :cond_1
    instance-of p0, p0, Lcom/yandex/div2/DivInputMaskTemplate$d;

    if-eqz p0, :cond_2

    const-string p0, "phone"

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivInputMaskTemplate$c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivInputMaskTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivInputMaskTemplate$c;->c()Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivInputMaskTemplate$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivInputMaskTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivInputMaskTemplate$b;->c()Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivInputMaskTemplate$d;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivInputMaskTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivInputMaskTemplate$d;->c()Lcom/yandex/div2/DivPhoneInputMaskTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->t4()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/v1;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/v1;->e(Lex7;Lcom/yandex/div2/DivInputMaskTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
