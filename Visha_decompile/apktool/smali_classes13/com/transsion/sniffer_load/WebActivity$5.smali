.class Lcom/transsion/sniffer_load/WebActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$5;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$5;->this$0:Lcom/transsion/sniffer_load/WebActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/sniffer_load/WebActivity;->I0(Lcom/transsion/sniffer_load/WebActivity;Z)V

    return-void
.end method
