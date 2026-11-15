.class public Lcom/cloud/hisavana/sdk/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->a(Lied;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lied;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/o;Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$a;->c:Lcom/cloud/hisavana/sdk/o;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/o$a;->a:Lied;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/o$a;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$a;->a:Lied;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o$a;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/o;->l(Lied;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
