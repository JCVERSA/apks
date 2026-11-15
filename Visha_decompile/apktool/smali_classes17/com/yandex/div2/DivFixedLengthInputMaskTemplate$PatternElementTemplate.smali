.class public final Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternElementTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$a;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->d:Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;ZLorg/json/JSONObject;)V
    .locals 0

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object p3

    .line 7
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object p4

    .line 8
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object p1

    .line 9
    invoke-direct {p0, p3, p4, p1}, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regex"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->c:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->r3()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/h1$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/h1$c;->e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
