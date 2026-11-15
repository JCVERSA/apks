.class public final Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$a;

.field public static final g:Lcom/yandex/div/json/expressions/Expression;

.field public static final h:Lcom/yandex/div/json/expressions/Expression;

.field public static final i:Lcom/yandex/div/json/expressions/Expression;

.field public static final j:Lcom/yandex/div2/DivFixedSize;

.field public static final k:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;

.field public final d:Ltp3;

.field public final e:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->f:Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->h:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->i:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->j:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->k:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;ZLorg/json/JSONObject;)V
    .locals 6

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 9
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 10
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 11
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 12
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAnimated"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isEnabled"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "particleSize"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->c:Ltp3;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->d:Ltp3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;->e:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->B8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/v4$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/v4$c;->e(Lex7;Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
