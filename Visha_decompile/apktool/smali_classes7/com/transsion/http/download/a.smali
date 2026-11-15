.class Lcom/transsion/http/download/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/download/DownLoaderTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/http/download/DownLoaderTask;


# direct methods
.method public constructor <init>(Lcom/transsion/http/download/DownLoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/download/a;->a:Lcom/transsion/http/download/DownLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/download/a;->a:Lcom/transsion/http/download/DownLoaderTask;

    invoke-static {p0}, Lcom/transsion/http/download/DownLoaderTask;->a(Lcom/transsion/http/download/DownLoaderTask;)Lkod;

    move-result-object p0

    invoke-virtual {p0}, Lkod;->a()V

    return-void
.end method
