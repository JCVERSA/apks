.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/viewpump/ViewPumpActivityFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2ViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;,
        Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;
    }
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# instance fields
.field private mConstructorArgs:Ljava/lang/reflect/Field;

.field private mSetPrivateFactory:Z

.field private nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.widget."

    const-string v1, "android.webkit."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 4
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 5
    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 6
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setUpLayoutFactories(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 10
    new-instance p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;

    invoke-direct {p1, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$NameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 11
    new-instance p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;

    invoke-direct {p1, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 12
    invoke-direct {p0, p3}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setUpLayoutFactories(Z)V

    return-void
.end method

.method public static synthetic access$000(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->superOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->superOnCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/inflationx/viewpump/ViewPump;->isCustomViewCreation()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_2

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    if-nez p1, :cond_1

    const-class p1, Landroid/view/LayoutInflater;

    const-string v0, "mConstructorArgs"

    invoke-static {p1, v0}, Lio/github/inflationx/viewpump/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    :cond_1
    iget-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p1, p0}, Lio/github/inflationx/viewpump/ReflectionUtils;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aput-object p4, p1, v0

    iget-object p4, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p4, p0, p1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p0, p3, p4, p5}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v1, p1, v0

    :goto_0
    iget-object p3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p3, p0, p1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    aput-object v1, p1, v0

    iget-object p3, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p3, p0, p1}, Lio/github/inflationx/viewpump/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2

    :catch_0
    aput-object v1, p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method private setPrivateFactoryInternal()V
    .locals 4

    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump;->isReflection()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory2;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    return-void

    :cond_2
    const-class v0, Landroid/view/LayoutInflater;

    const-string v2, "setPrivateFactory"

    invoke-static {v0, v2}, Lio/github/inflationx/viewpump/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v2, v3, p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lio/github/inflationx/viewpump/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_3
    iput-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->mSetPrivateFactory:Z

    return-void
.end method

.method private setUpLayoutFactories(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    instance-of p1, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p1

    instance-of p1, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_2
    return-void
.end method

.method private superOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private superOnCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->setPrivateFactoryInternal()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreateView(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, p5}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    new-instance p3, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;

    invoke-direct {p3, p0, p2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;-><init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->parentAndNameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 6
    invoke-virtual {p1, p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 10
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->nameAndAttrsViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 14
    invoke-virtual {p1, p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 1

    instance-of v0, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    if-nez v0, :cond_0

    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory;-><init>(Landroid/view/LayoutInflater$Factory;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :goto_0
    return-void
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 1

    instance-of v0, p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    if-nez v0, :cond_0

    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;

    invoke-direct {v0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :goto_0
    return-void
.end method
