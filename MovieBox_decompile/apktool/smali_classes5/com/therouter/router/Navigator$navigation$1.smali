.class final Lcom/therouter/router/Navigator$navigation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $ncb:Lmf/c;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lcom/therouter/router/Navigator;


# direct methods
.method constructor <init>(Lcom/therouter/router/Navigator;Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/therouter/router/Navigator$navigation$1;->this$0:Lcom/therouter/router/Navigator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/therouter/router/Navigator$navigation$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/therouter/router/Navigator$navigation$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    iput p4, p0, Lcom/therouter/router/Navigator$navigation$1;->$requestCode:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/therouter/router/Navigator$navigation$1;->$ncb:Lmf/c;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/therouter/router/Navigator$navigation$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/therouter/router/Navigator$navigation$1;->this$0:Lcom/therouter/router/Navigator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/therouter/router/Navigator;->h(Lcom/therouter/router/Navigator;Z)V

    .line 3
    iget-object v0, p0, Lcom/therouter/router/Navigator$navigation$1;->this$0:Lcom/therouter/router/Navigator;

    iget-object v1, p0, Lcom/therouter/router/Navigator$navigation$1;->$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/therouter/router/Navigator$navigation$1;->$fragment:Landroidx/fragment/app/Fragment;

    iget v3, p0, Lcom/therouter/router/Navigator$navigation$1;->$requestCode:I

    iget-object v4, p0, Lcom/therouter/router/Navigator$navigation$1;->$ncb:Lmf/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V

    return-void
.end method
