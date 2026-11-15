.class public final Lcom/yandex/div2/DivDisappearActionTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivDisappearActionTemplate$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/yandex/div2/DivDisappearActionTemplate$a;

.field public static final m:Lcom/yandex/div/json/expressions/Expression;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div/json/expressions/Expression;

.field public static final q:Ls74;


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

.field public final k:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivDisappearActionTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivDisappearActionTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivDisappearActionTemplate;->l:Lcom/yandex/div2/DivDisappearActionTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivDisappearActionTemplate;->m:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivDisappearActionTemplate;->n:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivDisappearActionTemplate;->o:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivDisappearActionTemplate;->p:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivDisappearActionTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivDisappearActionTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivDisappearActionTemplate;->q:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivDisappearActionTemplate;ZLorg/json/JSONObject;)V
    .locals 14

    const-string v0, "env"

    move-object v1, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Ltp3;->c:Ltp3$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 18
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 19
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    .line 20
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v9

    .line 21
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v10

    .line 22
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v11

    .line 23
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v12

    .line 24
    invoke-virtual {v0, v1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v13

    move-object v2, p0

    .line 25
    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivDisappearActionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use this constructor directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivDisappearActionTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivDisappearActionTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivDisappearActionTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "disappearDuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadCallbacks"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isEnabled"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logId"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLimit"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referer"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeId"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typed"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityPercentage"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->c:Ltp3;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->d:Ltp3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->e:Ltp3;

    .line 7
    iput-object p6, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->f:Ltp3;

    .line 8
    iput-object p7, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->g:Ltp3;

    .line 9
    iput-object p8, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->h:Ltp3;

    .line 10
    iput-object p9, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->i:Ltp3;

    .line 11
    iput-object p10, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->j:Ltp3;

    .line 12
    iput-object p11, p0, Lcom/yandex/div2/DivDisappearActionTemplate;->k:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/y0$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/y0$c;->e(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
