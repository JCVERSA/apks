.class public final synthetic Llad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;


# direct methods
.method public synthetic constructor <init>(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llad;->b:J

    iput-wide p3, p0, Llad;->c:J

    iput-object p5, p0, Llad;->d:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Llad;->b:J

    iget-wide v2, p0, Llad;->c:J

    iget-object p0, p0, Llad;->d:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    invoke-static {v0, v1, v2, v3, p0}, Lsad;->b(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V

    return-void
.end method
