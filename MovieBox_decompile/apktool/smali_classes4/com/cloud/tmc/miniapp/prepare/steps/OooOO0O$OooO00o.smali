.class public Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->onFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
