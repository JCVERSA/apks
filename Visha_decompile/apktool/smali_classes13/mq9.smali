.class public final synthetic Lmq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/lzy/okgo/model/Progress;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmq9;->b:Lcom/lzy/okgo/model/Progress;

    iput-object p2, p0, Lmq9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmq9;->b:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lmq9;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;)V

    return-void
.end method
