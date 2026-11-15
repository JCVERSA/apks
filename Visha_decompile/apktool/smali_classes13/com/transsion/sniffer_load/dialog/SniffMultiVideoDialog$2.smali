.class public Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmf7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgets/BadgeView;

.field public final synthetic b:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/widgets/BadgeView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->b:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    iput-object p2, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;->a:Lcom/transsion/widgets/BadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2$1;-><init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
