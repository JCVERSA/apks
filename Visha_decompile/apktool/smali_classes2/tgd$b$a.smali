.class public Ltgd$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh24;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltgd$b;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltgd$b;


# direct methods
.method public constructor <init>(Ltgd$b;)V
    .locals 0

    iput-object p1, p0, Ltgd$b$a;->a:Ltgd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltgd$b$a;->a:Ltgd$b;

    iget-object p0, p0, Ltgd$b;->c:Ltgd;

    invoke-static {p0}, Ltgd;->j(Ltgd;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltgd$b$a;->a:Ltgd$b;

    iget-object p0, p0, Ltgd$b;->c:Ltgd;

    new-instance p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p1}, Ltgd;->l(Ltgd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method
