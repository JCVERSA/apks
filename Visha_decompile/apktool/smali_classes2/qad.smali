.class public final synthetic Lqad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/e;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqad;->b:Lcom/cloud/hisavana/sdk/e;

    iput-object p2, p0, Lqad;->c:Ljava/util/List;

    iput-object p3, p0, Lqad;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqad;->b:Lcom/cloud/hisavana/sdk/e;

    iget-object v1, p0, Lqad;->c:Ljava/util/List;

    iget-object p0, p0, Lqad;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/e;->b(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
