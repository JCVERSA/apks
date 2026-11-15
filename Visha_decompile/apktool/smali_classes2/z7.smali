.class public final synthetic Lz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field public final synthetic c:Lwsd;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lz7;->c:Lwsd;

    iput-object p3, p0, Lz7;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lz7;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lz7;->f:Z

    iput-boolean p6, p0, Lz7;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lz7;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iget-object v1, p0, Lz7;->c:Lwsd;

    iget-object v2, p0, Lz7;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lz7;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lz7;->f:Z

    iget-boolean v5, p0, Lz7;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    return-void
.end method
