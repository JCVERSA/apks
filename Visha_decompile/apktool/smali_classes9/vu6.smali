.class public final synthetic Lvu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;

.field public final synthetic c:J

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;

    iput-wide p2, p0, Lvu6;->c:J

    iput-object p4, p0, Lvu6;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;

    iget-wide v1, p0, Lvu6;->c:J

    iget-object p0, p0, Lvu6;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->a(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;JLandroid/graphics/Bitmap;)V

    return-void
.end method
