.class public final Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "AudioCoverProcessorUtils"

    const-string v1, "imagePath"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->a:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

    invoke-static {v2, p1}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->e(Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v5, 0x800

    invoke-static {v2, v4, v3, v5}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->c(Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;III)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->d(Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v2, p1, v3}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->b(Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u7247\u5c3a\u5bf8\u65e0\u6548: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56fe\u7247\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u65e0\u6548: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    const-string p1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, p1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v1
.end method

.method public final b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "originalBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->a:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

    invoke-static {v0, p1, p2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->f(Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AudioCoverProcessorUtils"

    const-string p2, "\u56fe\u7247\u5904\u7406\u5931\u8d25"

    invoke-static {p1, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$b;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
