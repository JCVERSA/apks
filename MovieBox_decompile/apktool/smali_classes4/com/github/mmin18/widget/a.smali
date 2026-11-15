.class public Lcom/github/mmin18/widget/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/github/mmin18/widget/c;


# static fields
.field static e:Ljava/lang/Boolean;


# instance fields
.field private a:Landroid/renderscript/RenderScript;

.field private b:Landroid/renderscript/ScriptIntrinsicBlur;

.field private c:Landroid/renderscript/Allocation;

.field private d:Landroid/renderscript/Allocation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/github/mmin18/widget/a;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 14
    .line 15
    and-int/lit8 p0, p0, 0x2

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    move p0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/github/mmin18/widget/a;->e:Ljava/lang/Boolean;

    .line 27
    .line 28
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/a;->e:Ljava/lang/Boolean;

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    if-ne p0, v0, :cond_2

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_2
    return v1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->c:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->c:Landroid/renderscript/Allocation;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->d:Landroid/renderscript/Allocation;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/github/mmin18/widget/a;->d:Landroid/renderscript/Allocation;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p2

    .line 23
    invoke-static {p1}, Lcom/github/mmin18/widget/a;->c(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/github/mmin18/widget/a;->release()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_0
    throw p2

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 41
    .line 42
    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {p1, p2, p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/github/mmin18/widget/a;->c:Landroid/renderscript/Allocation;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p2, p1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/github/mmin18/widget/a;->d:Landroid/renderscript/Allocation;

    .line 62
    .line 63
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->c:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/github/mmin18/widget/a;->c:Landroid/renderscript/Allocation;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->d:Landroid/renderscript/Allocation;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/github/mmin18/widget/a;->d:Landroid/renderscript/Allocation;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/github/mmin18/widget/a;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/github/mmin18/widget/a;->a:Landroid/renderscript/RenderScript;

    .line 37
    .line 38
    :cond_3
    return-void
.end method
