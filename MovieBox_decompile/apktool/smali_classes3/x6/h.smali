.class public final synthetic Lx6/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;


# direct methods
.method public synthetic constructor <init>(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lx6/h;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lx6/h;->b:J

    .line 7
    .line 8
    iput-object p5, p0, Lx6/h;->c:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lx6/h;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Lx6/h;->b:J

    .line 4
    .line 5
    iget-object v4, p0, Lx6/h;->c:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lx6/i;->b(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
