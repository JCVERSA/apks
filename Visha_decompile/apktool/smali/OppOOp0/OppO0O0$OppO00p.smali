.class public LOppOOp0/OppO0O0$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

.field public final synthetic OppO0O0:LOppOOp0/OppO0O0;


# direct methods
.method public constructor <init>(LOppOOp0/OppO0O0;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOppOOp0/OppO0O0$OppO00p;->OppO0O0:LOppOOp0/OppO0O0;

    iput-object p2, p0, LOppOOp0/OppO0O0$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "com.palm.id.log"

    const-string v1, "postFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOppOOp0/OppO0O0$OppO00p;->OppO0O0:LOppOOp0/OppO0O0;

    iget-object p0, p0, LOppOOp0/OppO0O0$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object v1, v0, LOppOOp0/OppO0O0;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    return-void
.end method
