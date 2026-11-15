.class public abstract Lcom/yandex/div2/DivDrawableTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivDrawableTemplate$a;,
        Lcom/yandex/div2/DivDrawableTemplate$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivDrawableTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivDrawableTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivDrawableTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivDrawableTemplate;->a:Lcom/yandex/div2/DivDrawableTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivDrawableTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivDrawableTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivDrawableTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivDrawableTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    instance-of p0, p0, Lcom/yandex/div2/DivDrawableTemplate$b;

    if-eqz p0, :cond_0

    const-string p0, "shape_drawable"

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivDrawableTemplate$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivDrawableTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawableTemplate$b;->c()Lcom/yandex/div2/DivShapeDrawableTemplate;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/a1;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/a1;->e(Lex7;Lcom/yandex/div2/DivDrawableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
