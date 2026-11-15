.class public final synthetic Lqg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/apiinvoke/common/router/ChannelEntity;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg5;->b:Landroid/content/Context;

    iput-object p2, p0, Lqg5;->c:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lqg5;->c:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-static {v0, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->a(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method
