.class public final synthetic Lrq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq9;->b:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrq9;->b:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->G(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;

    move-result-object p0

    return-object p0
.end method
