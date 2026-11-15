.class Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getTranDreamServiceWrapper(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

.field final synthetic val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->lambda$notifyAodAction$1(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->lambda$attach$0(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$attach$0(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .locals 1

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhxa;

    invoke-direct {v0, p3}, Lhxa;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;->attach(Landroid/os/IBinder;ZLcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranRemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$notifyAodAction$1(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;->notifyAodAction(I)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/service/dream/a;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lfxa;

    invoke-direct {v1, p0}, Lfxa;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyAodAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/api/service/dream/b;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgxa;

    invoke-direct {v1, p0}, Lgxa;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
