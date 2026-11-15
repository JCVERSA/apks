.class public final synthetic Lrha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltha$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrha;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lrha;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Ltha;->b(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
