.class public final Lcom/yandex/div2/EndDestinationTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/EndDestinationTemplate$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/EndDestinationTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/EndDestinationTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/EndDestinationTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/EndDestinationTemplate;->a:Lcom/yandex/div2/EndDestinationTemplate$a;

    sget-object v0, Lcom/yandex/div2/EndDestinationTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/EndDestinationTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/EndDestinationTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/EndDestinationTemplate;ZLorg/json/JSONObject;)V
    .locals 0

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/yandex/div2/EndDestinationTemplate;-><init>()V

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/EndDestinationTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/EndDestinationTemplate;-><init>(Lhx7;Lcom/yandex/div2/EndDestinationTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->A9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqa3;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lqa3;->e(Lex7;Lcom/yandex/div2/EndDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
