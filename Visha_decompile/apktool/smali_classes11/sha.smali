.class public final synthetic Lsha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltha$a;


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsha;->a:Landroid/content/res/Resources;

    iput p2, p0, Lsha;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lsha;->a:Landroid/content/res/Resources;

    iget p0, p0, Lsha;->b:I

    invoke-static {v0, p0, p1}, Ltha;->a(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
