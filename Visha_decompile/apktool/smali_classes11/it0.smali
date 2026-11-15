.class public final synthetic Lit0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit0;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lit0;->a:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->j0(Lcom/transsion/onlinevideo/channel/ChannelFragment;Ljava/lang/Integer;)V

    return-void
.end method
