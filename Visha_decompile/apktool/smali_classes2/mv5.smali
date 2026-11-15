.class public final synthetic Lmv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7$b;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv5;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmv5;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/i;->g(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
