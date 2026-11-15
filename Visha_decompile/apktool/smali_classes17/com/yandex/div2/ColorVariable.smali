.class public final Lcom/yandex/div2/ColorVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/ColorVariable$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div2/ColorVariable$a;

.field public static final e:Ls74;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/ColorVariable$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/ColorVariable$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/ColorVariable;->d:Lcom/yandex/div2/ColorVariable$a;

    sget-object v0, Lcom/yandex/div2/ColorVariable$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/ColorVariable$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/ColorVariable;->e:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    iput p2, p0, Lcom/yandex/div2/ColorVariable;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/ColorVariable;Loj3;Loj3;)Z
    .locals 1

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "otherResolver"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p3, p0, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget p0, p0, Lcom/yandex/div2/ColorVariable;->b:I

    iget p1, p1, Lcom/yandex/div2/ColorVariable;->b:I

    if-ne p0, p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/ColorVariable;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/ColorVariable;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div2/ColorVariable;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/ColorVariable;->c:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->p()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv91;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lv91;->e(Lex7;Lcom/yandex/div2/ColorVariable;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
