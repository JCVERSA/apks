.class public final synthetic Lx1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1a;->a:Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx1a;->a:Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;->s0(Lcom/transsion/onlinevideo/membership/SubscribeDatailActivity;Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;)V

    return-void
.end method
