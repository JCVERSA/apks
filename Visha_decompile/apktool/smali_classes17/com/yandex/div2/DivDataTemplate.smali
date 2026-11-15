.class public final Lcom/yandex/div2/DivDataTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivDataTemplate$a;,
        Lcom/yandex/div2/DivDataTemplate$StateTemplate;
    }
.end annotation


# static fields
.field public static final h:Lcom/yandex/div2/DivDataTemplate$a;

.field public static final i:Lcom/yandex/div/json/expressions/Expression;

.field public static final j:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;

.field public final d:Ltp3;

.field public final e:Ltp3;

.field public final f:Ltp3;

.field public final g:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivDataTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivDataTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivDataTemplate;->h:Lcom/yandex/div2/DivDataTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivTransitionSelector;->NONE:Lcom/yandex/div2/DivTransitionSelector;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivDataTemplate;->i:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivDataTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivDataTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivDataTemplate;->j:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivDataTemplate;ZLorg/json/JSONObject;)V
    .locals 8

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 11
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 12
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 13
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 14
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 15
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 16
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/yandex/div2/DivDataTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivDataTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivDataTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivDataTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "functions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "states"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timers"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionAnimationSelector"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableTriggers"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variables"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivDataTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivDataTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivDataTemplate;->c:Ltp3;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivDataTemplate;->d:Ltp3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivDataTemplate;->e:Ltp3;

    .line 7
    iput-object p6, p0, Lcom/yandex/div2/DivDataTemplate;->f:Ltp3;

    .line 8
    iput-object p7, p0, Lcom/yandex/div2/DivDataTemplate;->g:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->C2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivDataJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivDataJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivDataTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
