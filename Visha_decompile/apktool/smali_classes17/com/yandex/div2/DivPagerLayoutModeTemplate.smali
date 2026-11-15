.class public abstract Lcom/yandex/div2/DivPagerLayoutModeTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivPagerLayoutModeTemplate$a;,
        Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;,
        Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;,
        Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivPagerLayoutModeTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivPagerLayoutModeTemplate;->a:Lcom/yandex/div2/DivPagerLayoutModeTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivPagerLayoutModeTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivPagerLayoutModeTemplate;->b:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivPagerLayoutModeTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;

    if-eqz v0, :cond_0

    const-string p0, "percentage"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;

    if-eqz v0, :cond_1

    const-string p0, "fixed"

    goto :goto_0

    :cond_1
    instance-of p0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;

    if-eqz p0, :cond_2

    const-string p0, "wrap_content"

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;->c()Lcom/yandex/div2/DivPageSizeTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;->c()Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;->c()Lcom/yandex/div2/DivPageContentSizeTemplate;

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

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->A5()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/q2;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/q2;->e(Lex7;Lcom/yandex/div2/DivPagerLayoutModeTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
