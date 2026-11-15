.class public final synthetic Lqhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6b$c;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebActivity;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lcom/transsion/sniffer_load/okdownload/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqhc;->a:Lcom/transsion/sniffer_load/WebActivity;

    iput-object p2, p0, Lqhc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lqhc;->c:Lcom/transsion/sniffer_load/okdownload/a;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lqhc;->a:Lcom/transsion/sniffer_load/WebActivity;

    iget-object v1, p0, Lqhc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lqhc;->c:Lcom/transsion/sniffer_load/okdownload/a;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->u0(Lcom/transsion/sniffer_load/WebActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/sniffer_load/okdownload/a;Z)V

    return-void
.end method
