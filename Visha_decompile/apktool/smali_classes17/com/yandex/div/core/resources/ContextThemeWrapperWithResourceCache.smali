.class public final Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;
.super Landroidx/appcompat/view/ContextThemeWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u001b\u0010\u000e\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;",
        "Landroidx/appcompat/view/ContextThemeWrapper;",
        "Landroid/content/Context;",
        "baseContext",
        "",
        "themeResId",
        "<init>",
        "(Landroid/content/Context;I)V",
        "Landroid/content/res/Resources;",
        "getResources",
        "()Landroid/content/res/Resources;",
        "a",
        "Lyi5;",
        "b",
        "resourceCache",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache$resourceCache$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache$resourceCache$2;-><init>(Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;->a:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;)Landroid/content/res/Resources;
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;->b()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
