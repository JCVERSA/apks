.class public final synthetic Lcom/transsion/sniffer_load/sniffservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;

.field public final synthetic c:Lgu8;

.field public final synthetic d:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/a;->b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/a;->c:Lgu8;

    iput-object p3, p0, Lcom/transsion/sniffer_load/sniffservice/a;->d:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iput-object p4, p0, Lcom/transsion/sniffer_load/sniffservice/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/a;->b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/a;->c:Lgu8;

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/a;->d:Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;->d(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$4;Lgu8;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Ljava/lang/String;)V

    return-void
.end method
