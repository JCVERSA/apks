.class public abstract Lcom/yandex/div2/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/h1$a;,
        Lcom/yandex/div2/h1$b;,
        Lcom/yandex/div2/h1$c;,
        Lcom/yandex/div2/h1$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/h1$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lpnb;

.field public static final d:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/h1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/h1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/h1;->a:Lcom/yandex/div2/h1$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/h1;->b:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lij2;

    invoke-direct {v0}, Lij2;-><init>()V

    sput-object v0, Lcom/yandex/div2/h1;->c:Lpnb;

    new-instance v0, Ljj2;

    invoke-direct {v0}, Ljj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/h1;->d:Lpnb;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/h1;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/h1;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
