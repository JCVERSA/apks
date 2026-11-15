.class Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$1;->val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$1;->val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSnifSync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return-void
.end method
