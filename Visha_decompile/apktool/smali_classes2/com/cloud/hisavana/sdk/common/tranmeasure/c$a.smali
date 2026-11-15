.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
