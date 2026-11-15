.class public final Lcom/cloud/hisavana/sdk/J$b$a$a;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/J$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/J;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/J;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/J$b$a$a;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/J;->w()V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$b$a$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/J;->c(Lcom/cloud/hisavana/sdk/J;)V

    return-void
.end method
