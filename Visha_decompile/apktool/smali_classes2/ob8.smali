.class public final synthetic Lob8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerView;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob8;->b:Landroidx/media3/ui/PlayerView;

    iput-object p2, p0, Lob8;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lob8;->b:Landroidx/media3/ui/PlayerView;

    iget-object p0, p0, Lob8;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    return-void
.end method
