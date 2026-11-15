.class public final synthetic Lcom/cloud/tmc/miniapp/utils/toast/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/b;->a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/b;->a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->b(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
