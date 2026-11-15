.class public final Lcom/yandex/div2/DivVideoSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivVideoSource$a;,
        Lcom/yandex/div2/DivVideoSource$Resolution;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div2/DivVideoSource$a;

.field public static final g:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div2/DivVideoSource$Resolution;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivVideoSource$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivVideoSource$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivVideoSource;->f:Lcom/yandex/div2/DivVideoSource$a;

    sget-object v0, Lcom/yandex/div2/DivVideoSource$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivVideoSource$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivVideoSource;->g:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVideoSource$Resolution;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "mimeType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    iput-object p4, p0, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivVideoSource;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_2
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivVideoSource$Resolution;->a(Lcom/yandex/div2/DivVideoSource$Resolution;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivVideoSource;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivVideoSource;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivVideoSource$Resolution;->hash()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivVideoSource;->e:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->k9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/i5;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/i5;->e(Lex7;Lcom/yandex/div2/DivVideoSource;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
