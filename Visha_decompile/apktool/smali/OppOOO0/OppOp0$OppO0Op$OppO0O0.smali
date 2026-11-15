.class public LOppOOO0/OppOp0$OppO0Op$OppO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOp0$OppO0Op;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:LOppOOO0/OppOp0$OppO0Op;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0$OppO0Op;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOp0$OppO0Op$OppO0O0;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOppOOO0/OppOp0$OppO0Op$OppO0O0;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object v0, v0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    iget-object p0, p0, LOppOOO0/OppOp0$OppO0Op$OppO0O0;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object p0, p0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_upload_img_failed:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void
.end method
