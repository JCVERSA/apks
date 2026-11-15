.class public final Lxgb$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxgb$a;->e(Lrv4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lxgb$a;

.field public final synthetic c:Lrv4;


# direct methods
.method public constructor <init>(JLxgb$a;Lrv4;)V
    .locals 0

    iput-wide p1, p0, Lxgb$a$a;->a:J

    iput-object p3, p0, Lxgb$a$a;->b:Lxgb$a;

    iput-object p4, p0, Lxgb$a$a;->c:Lrv4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk config --> manualCheck  code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  message = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "update"

    invoke-virtual {v0, p2, p1}, Lia1;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lxgb$a$a;->b:Lxgb$a;

    iget-object p0, p0, Lxgb$a$a;->c:Lrv4;

    invoke-static {p1, p0}, Lxgb$a;->a(Lxgb$a;Lrv4;)V

    return-void
.end method

.method public b(Lcom/cloud/tupdate/bean/SdkConfigInfo;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk config --> manualCheck sdkConfigInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,time =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lxgb$a$a;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "update"

    invoke-virtual {v0, v2, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/SdkConfigInfo;->getOpenSdkCache()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lxgb$a$a;->b:Lxgb$a;

    iget-object p0, p0, Lxgb$a$a;->c:Lrv4;

    invoke-static {p1, p0}, Lxgb$a;->a(Lxgb$a;Lrv4;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/SdkConfigInfo;->getOpenSdkCache()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lxgb$a$a;->b:Lxgb$a;

    iget-object p0, p0, Lxgb$a$a;->c:Lrv4;

    invoke-static {p1, p0}, Lxgb$a;->a(Lxgb$a;Lrv4;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/SdkConfigInfo;->getCloseVersions()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk config --> manualCheck closeVersion = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , current code = 1300"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "1300"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lxgb$a$a;->b:Lxgb$a;

    iget-object p0, p0, Lxgb$a$a;->c:Lrv4;

    invoke-static {p1, p0}, Lxgb$a;->a(Lxgb$a;Lrv4;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lxgb$a$a;->b:Lxgb$a;

    iget-object p0, p0, Lxgb$a$a;->c:Lrv4;

    invoke-static {p1, p0}, Lxgb$a;->a(Lxgb$a;Lrv4;)V

    :cond_3
    :goto_0
    return-void
.end method
