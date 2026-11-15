.class public abstract Lcom/yandex/div2/DivAnimatorTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAnimatorTemplate$a;,
        Lcom/yandex/div2/DivAnimatorTemplate$b;,
        Lcom/yandex/div2/DivAnimatorTemplate$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivAnimatorTemplate$b;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivAnimatorTemplate$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAnimatorTemplate$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAnimatorTemplate;->a:Lcom/yandex/div2/DivAnimatorTemplate$b;

    sget-object v0, Lcom/yandex/div2/DivAnimatorTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivAnimatorTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivAnimatorTemplate;->b:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivAnimatorTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivAnimatorTemplate$a;

    if-eqz v0, :cond_0

    const-string p0, "color_animator"

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/yandex/div2/DivAnimatorTemplate$c;

    if-eqz p0, :cond_1

    const-string p0, "number_animator"

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivAnimatorTemplate$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivAnimatorTemplate$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAnimatorTemplate$a;->c()Lcom/yandex/div2/DivColorAnimatorTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivAnimatorTemplate$c;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivAnimatorTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAnimatorTemplate$c;->c()Lcom/yandex/div2/DivNumberAnimatorTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/v;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/v;->e(Lex7;Lcom/yandex/div2/DivAnimatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
