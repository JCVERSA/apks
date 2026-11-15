.class public Lcom/cloud/hisavana/sdk/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/h0;->f(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/h0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/h0$a;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0$a;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h0$a;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/cloud/hisavana/sdk/h0$g;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0$a;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h0$a;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/cloud/hisavana/sdk/h0$g;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
