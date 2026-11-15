.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/p3;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->a:Lcom/cloud/hisavana/sdk/p3;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->c:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->a:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->c:J

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
