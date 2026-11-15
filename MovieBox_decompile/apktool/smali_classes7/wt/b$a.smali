.class Lwt/b$a;
.super Lcom/transsion/transfer/androidasync/future/w;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwt/b;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/transsion/transfer/androidasync/p;

.field final synthetic g:Lwt/b;


# direct methods
.method constructor <init>(Lwt/b;Lcom/transsion/transfer/androidasync/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt/b$a;->g:Lwt/b;

    .line 2
    .line 3
    iput-object p2, p0, Lwt/b$a;->f:Lcom/transsion/transfer/androidasync/p;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected cancelCleanup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwt/b$a;->f:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
