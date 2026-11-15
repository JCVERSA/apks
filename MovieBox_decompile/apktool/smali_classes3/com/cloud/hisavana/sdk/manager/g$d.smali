.class public final Lcom/cloud/hisavana/sdk/manager/g$d;
.super Lcom/cloud/hisavana/sdk/manager/g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

.field final synthetic b:Lcom/cloud/hisavana/sdk/manager/g;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g$b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g$d;->c(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->e(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 14
    .line 15
    new-instance v3, Lcom/cloud/hisavana/sdk/manager/h;

    .line 16
    .line 17
    invoke-direct {v3, v1, v2}, Lcom/cloud/hisavana/sdk/manager/h;-><init>(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/g;->b(Lcom/cloud/hisavana/sdk/manager/g;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/g;->g(Lcom/cloud/hisavana/sdk/manager/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
