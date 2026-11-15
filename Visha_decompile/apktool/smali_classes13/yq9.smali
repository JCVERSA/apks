.class public final synthetic Lyq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq9;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyq9;->b:Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->m0(Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)Lmc7;

    move-result-object p0

    return-object p0
.end method
