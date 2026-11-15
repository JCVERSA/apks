.class public final Lcom/yandex/div2/DivPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivPoint$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div2/DivPoint$a;

.field public static final e:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivDimension;

.field public final b:Lcom/yandex/div2/DivDimension;

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivPoint$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPoint$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivPoint;->d:Lcom/yandex/div2/DivPoint$a;

    sget-object v0, Lcom/yandex/div2/DivPoint$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivPoint$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivPoint;->e:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)V
    .locals 1

    const-string v0, "x"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    iput-object p2, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivPoint;Loj3;Loj3;)Z
    .locals 3

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    iget-object v2, p1, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivDimension;->a(Lcom/yandex/div2/DivDimension;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    iget-object p1, p1, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivDimension;->a(Lcom/yandex/div2/DivDimension;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivPoint;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivPoint;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    invoke-virtual {v1}, Lcom/yandex/div2/DivDimension;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    invoke-virtual {v1}, Lcom/yandex/div2/DivDimension;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivPoint;->c:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno2;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lno2;->e(Lex7;Lcom/yandex/div2/DivPoint;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
