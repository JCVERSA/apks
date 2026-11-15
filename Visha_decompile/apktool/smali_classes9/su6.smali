.class public final synthetic Lsu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iput-object p2, p0, Lsu6;->c:Landroid/graphics/Bitmap;

    iput p3, p0, Lsu6;->d:I

    iput p4, p0, Lsu6;->e:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iget-object v1, p0, Lsu6;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lsu6;->d:I

    iget p0, p0, Lsu6;->e:I

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->a(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
