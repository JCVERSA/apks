.class public final synthetic Loq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq9;->a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Loq9;->a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->H(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V

    return-void
.end method
