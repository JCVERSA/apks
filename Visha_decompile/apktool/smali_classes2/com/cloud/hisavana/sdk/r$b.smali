.class public final Lcom/cloud/hisavana/sdk/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/r;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/r;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/r;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/r;->b(Lcom/cloud/hisavana/sdk/r;)Lhvd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lhvd;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r$b;->a:Lcom/cloud/hisavana/sdk/r;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/r;->h(Lcom/cloud/hisavana/sdk/r;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
