.class public final synthetic Lo09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lied;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:J

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lied;Ljava/util/List;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo09;->b:Lied;

    iput-object p2, p0, Lo09;->c:Ljava/util/List;

    iput-wide p3, p0, Lo09;->d:J

    iput-boolean p5, p0, Lo09;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo09;->b:Lied;

    iget-object v1, p0, Lo09;->c:Ljava/util/List;

    iget-wide v2, p0, Lo09;->d:J

    iget-boolean p0, p0, Lo09;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b(Lied;Ljava/util/List;JZ)V

    return-void
.end method
