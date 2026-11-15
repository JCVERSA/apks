.class public final synthetic Lcom/transsnet/downloader/util/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsnet/downloader/util/x;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/util/x;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/util/x;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/util/x;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/util/x;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/transsnet/downloader/util/x;->f:Z

    .line 15
    .line 16
    iput p7, p0, Lcom/transsnet/downloader/util/x;->g:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/util/x;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/x;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/util/x;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/util/x;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/util/x;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsnet/downloader/util/x;->f:Z

    .line 12
    .line 13
    iget v6, p0, Lcom/transsnet/downloader/util/x;->g:I

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
