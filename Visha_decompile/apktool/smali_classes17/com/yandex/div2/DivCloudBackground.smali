.class public final Lcom/yandex/div2/DivCloudBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivCloudBackground$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div2/DivCloudBackground$a;

.field public static final f:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div2/DivEdgeInsets;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivCloudBackground$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivCloudBackground$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivCloudBackground;->e:Lcom/yandex/div2/DivCloudBackground$a;

    sget-object v0, Lcom/yandex/div2/DivCloudBackground$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivCloudBackground$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivCloudBackground;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cornerRadius"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivCloudBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div2/DivCloudBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivCloudBackground;Loj3;Loj3;)Z
    .locals 5

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/yandex/div2/DivCloudBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lcom/yandex/div2/DivCloudBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivEdgeInsets;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivCloudBackground;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivCloudBackground;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivEdgeInsets;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivCloudBackground;->d:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->X1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/m0$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/m0$b;->e(Lex7;Lcom/yandex/div2/DivCloudBackground;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
