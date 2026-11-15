.class public abstract Lcom/yandex/div/evaluable/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/evaluable/a$a;,
        Lcom/yandex/div/evaluable/a$b;,
        Lcom/yandex/div/evaluable/a$c;,
        Lcom/yandex/div/evaluable/a$d;,
        Lcom/yandex/div/evaluable/a$e;,
        Lcom/yandex/div/evaluable/a$f;,
        Lcom/yandex/div/evaluable/a$g;,
        Lcom/yandex/div/evaluable/a$h;,
        Lcom/yandex/div/evaluable/a$i;,
        Lcom/yandex/div/evaluable/a$j;,
        Lcom/yandex/div/evaluable/a$k;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div/evaluable/a$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/evaluable/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/evaluable/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/evaluable/a;->d:Lcom/yandex/div/evaluable/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rawExpr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/evaluable/a;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/evaluable/a;->b:Z

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/evaluable/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/evaluable/a;->b:Z

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/evaluable/a;->b:Z

    return p0
.end method

.method public final c(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;
    .locals 1

    const-string v0, "evaluator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/evaluable/a;->d(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/evaluable/a;->c:Z

    return-object p1
.end method

.method public abstract d(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public abstract f()Ljava/util/List;
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/evaluable/a;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yandex/div/evaluable/a;->b:Z

    return-void
.end method
