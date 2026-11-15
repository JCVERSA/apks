.class public Lcom/transsion/transfer/androidasync/http/h;
.super Lcom/transsion/transfer/androidasync/http/j;
.source "source.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "GET"

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/j;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
