.class public final synthetic Lt07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/upload/task/NewUploadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt07;->b:Lcom/transsion/cloud/upload/task/NewUploadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lt07;->b:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->c(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    return-void
.end method
