.class Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;->a:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p1, "cdu_"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
