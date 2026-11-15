.class public final synthetic Lrg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrg5;->b:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iput-object p2, p0, Lrg5;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onOxygenBusServerStateChange(I)V
    .locals 1

    iget-object v0, p0, Lrg5;->b:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-object p0, p0, Lrg5;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->d(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;I)V

    return-void
.end method
