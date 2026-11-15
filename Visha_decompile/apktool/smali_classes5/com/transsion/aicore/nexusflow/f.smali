.class public final Lcom/transsion/aicore/nexusflow/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/b;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Z)Lzfb;
    .locals 1

    const-string v0, "NexusFlow.Manager"

    if-eqz p0, :cond_0

    const-string p0, "Auto-reconnect successful"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Auto-reconnect failed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
