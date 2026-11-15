.class final Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/evaluable/function/ColorRedComponentSetter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lk81;",
        "color",
        "",
        "red",
        "invoke-Gnj5c28",
        "(ID)I",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;

    invoke-direct {v0}, Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;-><init>()V

    sput-object v0, Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;->INSTANCE:Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lk81;

    invoke-virtual {p1}, Lk81;->k()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/div/evaluable/function/ColorRedComponentSetter$1;->invoke-Gnj5c28(ID)I

    move-result p0

    invoke-static {p0}, Lk81;->c(I)Lk81;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-Gnj5c28(ID)I
    .locals 1

    sget-object p0, Lk81;->b:Lk81$a;

    invoke-static {p1}, Lk81;->a(I)I

    move-result v0

    invoke-static {p2, p3}, Ls81;->b(D)I

    move-result p2

    invoke-static {p1}, Lk81;->g(I)I

    move-result p3

    invoke-static {p1}, Lk81;->b(I)I

    move-result p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lk81$a;->a(IIII)I

    move-result p0

    return p0
.end method
