.class public final synthetic Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lek;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iput-object p3, p0, Lek;->d:Ljava/lang/String;

    iput p4, p0, Lek;->e:I

    iput-object p5, p0, Lek;->f:Ljava/lang/String;

    iput-object p6, p0, Lek;->g:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lek;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lek;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iget-object v2, p0, Lek;->d:Ljava/lang/String;

    iget v3, p0, Lek;->e:I

    iget-object v4, p0, Lek;->f:Ljava/lang/String;

    iget-object v5, p0, Lek;->g:Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
