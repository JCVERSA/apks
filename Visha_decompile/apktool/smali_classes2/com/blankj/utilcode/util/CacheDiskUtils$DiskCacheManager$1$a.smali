.class public Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;->b:Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "cdu_"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
