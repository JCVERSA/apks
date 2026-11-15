.class public final Lcom/yandex/div/core/view2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/a$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div/core/view2/a$a;


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Loj3;

.field public final c:Lcom/yandex/div/core/expression/local/RuntimeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/a;->d:Lcom/yandex/div/core/view2/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/div/core/view2/a;->a:Lcom/yandex/div/core/view2/Div2View;

    .line 4
    iput-object p2, p0, Lcom/yandex/div/core/view2/a;->b:Loj3;

    .line 5
    iput-object p3, p0, Lcom/yandex/div/core/view2/a;->c:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/a;-><init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/core/view2/Div2View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/a;->a:Lcom/yandex/div/core/view2/Div2View;

    return-object p0
.end method

.method public final b()Loj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/a;->b:Loj3;

    return-object p0
.end method

.method public final c(Loj3;)Lcom/yandex/div/core/view2/a;
    .locals 2

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/a;->b:Loj3;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/a;

    iget-object v1, p0, Lcom/yandex/div/core/view2/a;->a:Lcom/yandex/div/core/view2/Div2View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/a;->c:Lcom/yandex/div/core/expression/local/RuntimeStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/yandex/div/core/view2/a;-><init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final d(Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)Lcom/yandex/div/core/view2/a;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/a;->b:Loj3;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/a;

    iget-object p0, p0, Lcom/yandex/div/core/view2/a;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/div/core/view2/a;-><init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final e()Lcom/yandex/div/core/expression/local/RuntimeStore;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/a;->c:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-object p0
.end method
