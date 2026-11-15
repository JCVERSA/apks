.class Lcom/cloud/hisavana/sdk/q1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q1;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q1$a;->a:Lcom/cloud/hisavana/sdk/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "TranSplash"

    const-string v2, "closeAdRunnable all time is end"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q1$a;->a:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    return-void
.end method
