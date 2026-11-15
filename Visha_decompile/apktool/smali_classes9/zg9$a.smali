.class public Lzg9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzg9;->h(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public final synthetic e:J

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V
    .locals 0

    iput-object p1, p0, Lzg9$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lzg9$a;->c:Ljava/lang/Class;

    iput-object p3, p0, Lzg9$a;->d:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-wide p4, p0, Lzg9$a;->e:J

    iput p6, p0, Lzg9$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 8

    iget-object v0, p0, Lzg9$a;->b:Landroid/content/Context;

    iget p2, p0, Lzg9$a;->f:I

    invoke-static {v0, p1, p2, p2}, Lzg9;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lzg9$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lzg9$a;->d:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iget-wide v5, p0, Lzg9$a;->e:J

    iget v7, p0, Lzg9$a;->f:I

    const/4 v2, -0x1

    invoke-static/range {v0 .. v7}, Lzg9;->c(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V

    const/4 p0, 0x0

    return p0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ott short cut load failed! Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "visha_ShortCutUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzg9$a;->b:Landroid/content/Context;

    sget v2, Lcom/transsion/magicvideo/R$drawable;->ott_short_cut_def:I

    iget-object v3, p0, Lzg9$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lzg9$a;->d:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iget-wide v5, p0, Lzg9$a;->e:J

    iget v7, p0, Lzg9$a;->f:I

    const/4 v1, 0x0

    invoke-static/range {v0 .. v7}, Lzg9;->c(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lzg9$a;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
