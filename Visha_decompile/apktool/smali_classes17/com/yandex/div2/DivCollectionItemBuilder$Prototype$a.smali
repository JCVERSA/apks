.class public final Lcom/yandex/div2/DivCollectionItemBuilder$Prototype$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivCollectionItemBuilder$Prototype$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhx7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;
    .locals 0

    const-string p0, "env"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "json"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o0$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/o0$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;

    move-result-object p0

    return-object p0
.end method
