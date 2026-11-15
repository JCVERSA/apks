.class public Lwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcg0;


# static fields
.field public static e:Ljava/lang/Boolean;


# instance fields
.field public a:Landroid/renderscript/RenderScript;

.field public b:Landroid/renderscript/ScriptIntrinsicBlur;

.field public c:Landroid/renderscript/Allocation;

.field public d:Landroid/renderscript/Allocation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lwb;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lwb;->e:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lwb;->e:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lwb;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lwb;->c:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p1, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lwb;->d:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p0, p0, Lwb;->d:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 2

    iget-object v0, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p1}, Lwb;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lwb;->release()V

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p2

    :cond_1
    :goto_0
    const/high16 p1, 0x41c80000    # 25.0f

    cmpl-float v0, p3, p1

    if-lez v0, :cond_2

    move p3, p1

    :cond_2
    const/4 p1, 0x0

    cmpg-float v0, p3, p1

    if-gez v0, :cond_3

    move p3, p1

    :cond_3
    iget-object p1, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p1, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lwb;->c:Landroid/renderscript/Allocation;

    iget-object p2, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lwb;->d:Landroid/renderscript/Allocation;

    return v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lwb;->c:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lwb;->c:Landroid/renderscript/Allocation;

    :cond_0
    iget-object v0, p0, Lwb;->d:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lwb;->d:Landroid/renderscript/Allocation;

    :cond_1
    iget-object v0, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    iput-object v1, p0, Lwb;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_2
    iget-object v0, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    iput-object v1, p0, Lwb;->a:Landroid/renderscript/RenderScript;

    :cond_3
    return-void
.end method
