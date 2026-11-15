.class Lcom/transsion/http/impl/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/transsion/http/impl/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/f;->d:Lcom/transsion/http/impl/DownloadCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/http/impl/f;->b:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/transsion/http/impl/f;->c:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/f;->d:Lcom/transsion/http/impl/DownloadCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/http/impl/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/http/impl/f;->b:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/transsion/http/impl/f;->c:J

    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/http/impl/DownloadCallback;->z(Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
