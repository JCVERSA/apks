.class public final Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSeparatorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelimiterStyleTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$a;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->c:Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const/high16 v1, 0x14000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;ZLorg/json/JSONObject;)V
    .locals 0

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object p3

    .line 6
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object p1

    .line 7
    invoke-direct {p0, p3, p1}, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;-><init>(Ltp3;Ltp3;)V

    .line 8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->b:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->H6()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
