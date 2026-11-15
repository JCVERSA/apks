.class public final synthetic Lbea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lwda;

.field public final synthetic c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;


# direct methods
.method public synthetic constructor <init>(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbea;->b:Lwda;

    iput-object p2, p0, Lbea;->c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbea;->b:Lwda;

    iget-object p0, p0, Lbea;->c:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-static {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->b(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    return-void
.end method
