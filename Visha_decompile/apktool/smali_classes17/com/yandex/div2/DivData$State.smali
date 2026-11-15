.class public final Lcom/yandex/div2/DivData$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivData$State$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div2/DivData$State$a;

.field public static final e:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/Div;

.field public final b:J

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivData$State$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivData$State$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivData$State;->d:Lcom/yandex/div2/DivData$State$a;

    sget-object v0, Lcom/yandex/div2/DivData$State$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivData$State$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivData$State;->e:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/Div;J)V
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    iput-wide p2, p0, Lcom/yandex/div2/DivData$State;->b:J

    return-void
.end method


# virtual methods
.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivData$State;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivData$State;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/yandex/div2/DivData$State;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivData$State;->c:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->D2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/u0;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/u0;->e(Lex7;Lcom/yandex/div2/DivData$State;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
