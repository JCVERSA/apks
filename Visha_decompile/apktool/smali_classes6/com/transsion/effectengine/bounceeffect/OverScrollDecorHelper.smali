.class public Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ABSLISTVIEW_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final BOUNCEEFFECT_SUPPORT:Z

.field static HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final ORIENTATION_HORIZONTAL:I = 0x1

.field public static final ORIENTATION_VERTICAL:I

.field static SCROLLVIEW_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lvyd;->b()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    :try_start_0
    const-string v0, "android.widget.AbsListView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.HorizontalScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.ScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OverScrollDecorHelper"

    const-string v1, "class not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "enableTranBounceEffect"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setBounceEdgeEffect not found."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScrollDecorHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 1
    const/4 v0, 0x0

    const-string v1, "OverScrollDecorHelper"

    if-nez p0, :cond_0

    const-string p0, "exception view = null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clazz:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    invoke-direct {p1, p2}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    invoke-direct {p1, p2}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 2
    const/4 v0, 0x0

    const-string v1, "OverScrollDecorHelper"

    if-nez p0, :cond_0

    const-string p0, "exception view = null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "clazz:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    invoke-direct {p1, p2}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    invoke-direct {p1, p2}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setUpNonScrollableViewOverScroll(Landroid/view/View;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception view = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    invoke-direct {p1, v0}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    invoke-direct {p1, v0}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object p1
.end method

.method public static setUpOverScroll(Landroid/widget/GridView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception GridView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/HorizontalScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception HorizontalScrollView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOif;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOif;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 3
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ListView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_0
    return-object p0
.end method

.method public static setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    .line 5
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ScrollView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lcom/transsion/effectengine/bounceeffect/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception recyclerView = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    invoke-virtual {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    .line 10
    iput-object p1, v0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    return-object p1

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    invoke-virtual {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    .line 12
    iput-object p1, v0, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    return-object p1
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_0
    return-object p0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception recyclerView = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    new-instance p3, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;

    invoke-direct {p3}, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;-><init>()V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    invoke-virtual {p1, p3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    invoke-virtual {p1, p3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V

    .line 14
    :goto_0
    iput-object p1, p3, Lcom/transsion/effectengine/bounceeffect/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-eqz p2, :cond_4

    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_4
    return-object p1
.end method

.method public static setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ViewPager = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOnew;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/viewpager2/widget/ViewPager2;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    .line 8
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ViewPager2 = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/viewpager2/widget/ViewPager2;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    .line 9
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception ViewPager2 = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;

    invoke-direct {v0, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-direct {p1, v0}, Lcom/transsion/effectengine/bounceeffect/z1OoOif;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;

    invoke-direct {v0, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOtry;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-direct {p1, v0}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-object p1
.end method
