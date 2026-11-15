.class public final synthetic Lpl/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpl/a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lpl/a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-wide v5, p5

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/transsion/lib_web/BaseLibWebFragment;->Y(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
