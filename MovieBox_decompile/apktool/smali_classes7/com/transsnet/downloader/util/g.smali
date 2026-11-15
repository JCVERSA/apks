.class public final synthetic Lcom/transsnet/downloader/util/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/util/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/util/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
