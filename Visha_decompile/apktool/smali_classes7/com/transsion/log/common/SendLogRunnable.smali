.class public abstract Lcom/transsion/log/common/SendLogRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/common/SendLogRunnable$a;
    }
.end annotation


# static fields
.field public static final FINISH:I = 0x2712

.field public static final SENDING:I = 0x2711


# instance fields
.field private mCallBackListener:Lcom/transsion/log/common/SendLogRunnable$a;

.field protected mSendAction:Lyb9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/log/common/SendLogRunnable;->mCallBackListener:Lcom/transsion/log/common/SendLogRunnable$a;

    if-eqz p0, :cond_0

    const/16 v0, 0x2712

    invoke-interface {p0, v0}, Lcom/transsion/log/common/SendLogRunnable$a;->a(I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyb9;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    iget-object v0, v0, Lyb9;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/log/common/SendLogRunnable;->finish()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    iget-object v1, v1, Lyb9;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/log/common/SendLogRunnable;->sendLog(Ljava/io/File;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/log/common/SendLogRunnable;->finish()V

    return-void
.end method

.method public abstract sendLog(Ljava/io/File;)V
.end method

.method public setCallBackListener(Lcom/transsion/log/common/SendLogRunnable$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/common/SendLogRunnable;->mCallBackListener:Lcom/transsion/log/common/SendLogRunnable$a;

    return-void
.end method

.method public setSendAction(Lyb9;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/common/SendLogRunnable;->mSendAction:Lyb9;

    return-void
.end method
