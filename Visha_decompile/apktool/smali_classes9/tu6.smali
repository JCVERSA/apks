.class public final synthetic Ltu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iput-wide p2, p0, Ltu6;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ltu6;->b:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iget-wide v1, p0, Ltu6;->c:J

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;JLandroid/graphics/Bitmap;)V

    return-void
.end method
