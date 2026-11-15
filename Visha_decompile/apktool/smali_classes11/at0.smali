.class public final synthetic Lat0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat0;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    return-void
.end method


# virtual methods
.method public final onLoadMoreRequested()V
    .locals 0

    iget-object p0, p0, Lat0;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->h0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    return-void
.end method
