.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/p3;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->a:Lcom/cloud/hisavana/sdk/p3;

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->f:J

    .line 15
    .line 16
    iput-object p8, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput p10, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->i:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->a:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->c:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->f:J

    .line 12
    .line 13
    iget-object v7, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->h:Ljava/lang/String;

    .line 16
    .line 17
    iget v9, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->i:I

    .line 18
    .line 19
    invoke-static/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->f(Lcom/cloud/hisavana/sdk/p3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
