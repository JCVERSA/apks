.class public Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj94;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;

    invoke-static {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;->b(Lcom/cloud/hisavana/protocol/okhttptransport/a$c$a;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
