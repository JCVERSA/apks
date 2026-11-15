.class public final synthetic Lvy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy2;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lvy2;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lvy2;->c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    return-void
.end method


# virtual methods
.method public final a(Lwda;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lvy2;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lvy2;->b:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lvy2;->c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    check-cast p1, Lmy2;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->F(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lmy2;Ljava/lang/Throwable;)V

    return-void
.end method
