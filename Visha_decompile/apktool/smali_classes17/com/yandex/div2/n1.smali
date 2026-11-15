.class public abstract Lcom/yandex/div2/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/n1$a;,
        Lcom/yandex/div2/n1$b;,
        Lcom/yandex/div2/n1$c;,
        Lcom/yandex/div2/n1$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/n1$a;

.field public static final b:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/n1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/n1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/n1;->a:Lcom/yandex/div2/n1$a;

    new-instance v0, Lqj2;

    invoke-direct {v0}, Lqj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/n1;->b:Lpnb;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/n1;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "^[a-zA-Z_][a-zA-Z0-9_]*$"

    invoke-static {p0, v0}, Lnx7;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
