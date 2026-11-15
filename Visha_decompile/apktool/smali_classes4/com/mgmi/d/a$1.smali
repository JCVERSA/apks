.class Lcom/mgmi/d/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/d/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/d/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/d/a$1;->a:Lcom/mgmi/d/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/d/a$1;->a:Lcom/mgmi/d/a;

    invoke-static {p0}, Lcom/mgmi/d/a;->a(Lcom/mgmi/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    const-string p1, "scan error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
