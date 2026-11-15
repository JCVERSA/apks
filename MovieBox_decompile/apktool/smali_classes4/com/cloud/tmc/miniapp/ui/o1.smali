.class public final synthetic Lcom/cloud/tmc/miniapp/ui/o1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/o1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/tmc/miniapp/ui/o1;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/cloud/tmc/miniapp/ui/o1;->c:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/ui/o1;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/o1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/o1;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/o1;->c:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/o1;->d:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->g0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
