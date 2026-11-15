.class public final synthetic Lcom/transsnet/downloader/util/y;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/util/y;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/util/y;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsnet/downloader/util/y;->c:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/transsnet/downloader/util/y;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/util/y;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/y;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/util/y;->c:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/transsnet/downloader/util/y;->d:I

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->d(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
