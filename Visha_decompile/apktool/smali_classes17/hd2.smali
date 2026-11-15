.class public abstract Lhd2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyk2;Lcom/yandex/div/core/a;Lmo2;Lvi2;)Lcom/yandex/div/core/DivPreloader;
    .locals 7

    new-instance v6, Lcom/yandex/div/core/DivPreloader;

    sget-object v5, Lcom/yandex/div/core/DivPreloader$c;->b:Lcom/yandex/div/core/DivPreloader$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/DivPreloader;-><init>(Lyk2;Lcom/yandex/div/core/a;Lvi2;Lmo2;Lcom/yandex/div/core/DivPreloader$c;)V

    return-object v6
.end method

.method public static b(Lyk2;Lcom/yandex/div/core/a;Lmo2;Lvi2;)Lcom/yandex/div/core/d;
    .locals 7

    new-instance v6, Lcom/yandex/div/core/d;

    sget-object v5, Lcom/yandex/div/core/DivPreloader$c;->b:Lcom/yandex/div/core/DivPreloader$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/d;-><init>(Lyk2;Lcom/yandex/div/core/a;Lvi2;Lmo2;Lcom/yandex/div/core/DivPreloader$c;)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 3

    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Landroid/renderscript/RenderScript;->createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lbu2;)Lfda;
    .locals 1

    new-instance v0, Lfda;

    invoke-direct {v0, p0}, Lfda;-><init>(Lbu2;)V

    return-object v0
.end method

.method public static e(Landroid/view/ContextThemeWrapper;IZ)Landroid/content/Context;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;

    invoke-direct {p2, p0, p1}, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-direct {p2, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object p2
.end method

.method public static f(ZLjk3;Lr08;Lcom/yandex/div/internal/viewpool/ViewCreator;)Lcdc;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/internal/viewpool/a;

    invoke-virtual {p1}, Ljk3;->b()Lns7;

    move-result-object p1

    invoke-virtual {p1}, Lns7;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/viewpool/a;-><init>(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;Lr08;Lcom/yandex/div/internal/viewpool/ViewCreator;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lgk8;

    invoke-direct {p0}, Lgk8;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static g(ZLcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;)Ljk3;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;-><init>(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;)V

    invoke-static {p0}, Ljk3;->c(Ljava/lang/Object;)Ljk3;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljk3;->a()Ljk3;

    move-result-object p0

    :goto_0
    return-object p0
.end method
