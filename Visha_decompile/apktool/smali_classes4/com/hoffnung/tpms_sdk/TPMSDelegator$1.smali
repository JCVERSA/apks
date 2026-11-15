.class public final Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {p2}, Lcom/hoffnung/a/b$a;->a(Landroid/os/IBinder;)Lcom/hoffnung/a/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->a(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/a/b;)Lcom/hoffnung/a/b;

    iget-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {p1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->f(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;

    invoke-direct {p2, p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->a(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/a/b;)Lcom/hoffnung/a/b;

    return-void
.end method
