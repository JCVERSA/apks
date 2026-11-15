.class Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/fragment/MultiWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;->this$0:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;->this$0:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->k0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;->this$0:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->h0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V

    return-void
.end method
