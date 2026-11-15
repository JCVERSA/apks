.class Landroidx/palette/graphics/a$b$a;
.super Landroid/os/AsyncTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/palette/graphics/a$b;->b(Landroidx/palette/graphics/a$d;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/palette/graphics/a$d;

.field final synthetic b:Landroidx/palette/graphics/a$b;


# direct methods
.method constructor <init>(Landroidx/palette/graphics/a$b;Landroidx/palette/graphics/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/palette/graphics/a$b$a;->b:Landroidx/palette/graphics/a$b;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/palette/graphics/a$b$a;->a:Landroidx/palette/graphics/a$d;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/a;
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Landroidx/palette/graphics/a$b$a;->b:Landroidx/palette/graphics/a$b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/palette/graphics/a$b;->c()Landroidx/palette/graphics/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    const-string v0, "Palette"

    .line 10
    .line 11
    const-string v1, "Exception thrown during async generate"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method protected b(Landroidx/palette/graphics/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/a$b$a;->a:Landroidx/palette/graphics/a$d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/palette/graphics/a$d;->a(Landroidx/palette/graphics/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/palette/graphics/a$b$a;->a([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/palette/graphics/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/palette/graphics/a$b$a;->b(Landroidx/palette/graphics/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
