.class public final Lcom/yandex/div2/DivChangeTransitionTemplate$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivChangeTransitionTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/yandex/div2/DivChangeTransitionTemplate$b;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div2/DivChangeTransitionTemplate$b;Lhx7;ZLorg/json/JSONObject;ILjava/lang/Object;)Lcom/yandex/div2/DivChangeTransitionTemplate;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivChangeTransitionTemplate$b;->a(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivChangeTransitionTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivChangeTransitionTemplate;
    .locals 0

    const-string p0, "env"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "json"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/j0;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div2/j0;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivChangeTransitionTemplate;

    move-result-object p0

    return-object p0
.end method
