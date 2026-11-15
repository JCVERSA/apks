.class public abstract Lcom/yandex/div2/DivBackgroundTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivBackgroundTemplate$a;,
        Lcom/yandex/div2/DivBackgroundTemplate$b;,
        Lcom/yandex/div2/DivBackgroundTemplate$c;,
        Lcom/yandex/div2/DivBackgroundTemplate$d;,
        Lcom/yandex/div2/DivBackgroundTemplate$e;,
        Lcom/yandex/div2/DivBackgroundTemplate$f;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivBackgroundTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivBackgroundTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivBackgroundTemplate;->a:Lcom/yandex/div2/DivBackgroundTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivBackgroundTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivBackgroundTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivBackgroundTemplate;->b:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivBackgroundTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$c;

    if-eqz v0, :cond_0

    const-string p0, "gradient"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$e;

    if-eqz v0, :cond_1

    const-string p0, "radial_gradient"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$b;

    if-eqz v0, :cond_2

    const-string p0, "image"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$f;

    if-eqz v0, :cond_3

    const-string p0, "solid"

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lcom/yandex/div2/DivBackgroundTemplate$d;

    if-eqz p0, :cond_4

    const-string p0, "nine_patch_image"

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivBackgroundTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackgroundTemplate$c;->c()Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$e;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivBackgroundTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackgroundTemplate$e;->c()Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivBackgroundTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackgroundTemplate$b;->c()Lcom/yandex/div2/DivImageBackgroundTemplate;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$f;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivBackgroundTemplate$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackgroundTemplate$f;->c()Lcom/yandex/div2/DivSolidBackgroundTemplate;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivBackgroundTemplate$d;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivBackgroundTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackgroundTemplate$d;->c()Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/d0;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/d0;->e(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
