.class public final synthetic Lcom/cloud/tmc/integration/utils/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/cloud/tmc/integration/utils/f;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/f;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/cloud/tmc/integration/utils/f;->c:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
