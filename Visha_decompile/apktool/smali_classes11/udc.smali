.class public final synthetic Ludc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/web/VipWebActivity;

.field public final synthetic b:Lcom/transsion/playercommon/data/OrderCallbackRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/data/OrderCallbackRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ludc;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iput-object p2, p0, Ludc;->b:Lcom/transsion/playercommon/data/OrderCallbackRequest;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ludc;->a:Lcom/transsion/onlinevideo/web/VipWebActivity;

    iget-object p0, p0, Ludc;->b:Lcom/transsion/playercommon/data/OrderCallbackRequest;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/web/VipWebActivity;->q0(Lcom/transsion/onlinevideo/web/VipWebActivity;Lcom/transsion/playercommon/data/OrderCallbackRequest;Ljava/lang/Integer;)V

    return-void
.end method
