.class public final Lcom/yandex/div/core/expression/local/RuntimeTree$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/expression/local/RuntimeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lvj3;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lvj3;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "runtime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->a:Lvj3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lvj3;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;-><init>(Lvj3;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lvj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->a:Lvj3;

    return-object p0
.end method
