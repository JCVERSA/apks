.class public final Lcom/yandex/div2/DivTextTemplate$ImageTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;,
        Lcom/yandex/div2/DivTextTemplate$ImageTemplate$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/yandex/div2/DivTextTemplate$ImageTemplate$a;

.field public static final l:Lcom/yandex/div/json/expressions/Expression;

.field public static final m:Lcom/yandex/div2/DivFixedSize;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div/json/expressions/Expression;

.field public static final q:Lcom/yandex/div2/DivFixedSize;

.field public static final r:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;

.field public final d:Ltp3;

.field public final e:Ltp3;

.field public final f:Ltp3;

.field public final g:Ltp3;

.field public final h:Ltp3;

.field public final i:Ltp3;

.field public final j:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->k:Lcom/yandex/div2/DivTextTemplate$ImageTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->CENTER:Lcom/yandex/div2/DivTextAlignmentVertical;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->l:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->m:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivText$Image$IndexingDirection;->NORMAL:Lcom/yandex/div2/DivText$Image$IndexingDirection;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->n:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->o:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivBlendMode;->SOURCE_IN:Lcom/yandex/div2/DivBlendMode;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->p:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-direct {v2, v1, v0, v5, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->q:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTextTemplate$ImageTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->r:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;ZLorg/json/JSONObject;)V
    .locals 11

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 14
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 15
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 16
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 17
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 18
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 19
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 20
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 21
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 22
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "accessibility"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentVertical"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexingDirection"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadRequired"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tintColor"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tintMode"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->c:Ltp3;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->d:Ltp3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->e:Ltp3;

    .line 7
    iput-object p6, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->f:Ltp3;

    .line 8
    iput-object p7, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->g:Ltp3;

    .line 9
    iput-object p8, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->h:Ltp3;

    .line 10
    iput-object p9, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->i:Ltp3;

    .line 11
    iput-object p10, p0, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->j:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTextImageJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTextImageJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
