.class public final Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

.field public d:Lcom/yandex/div/internal/widget/tabs/TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    return-object p0
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    return-object p1
.end method

.method public static synthetic c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d:Lcom/yandex/div/internal/widget/tabs/TabView;

    return-object p0
.end method

.method public static synthetic d(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Lcom/yandex/div/internal/widget/tabs/TabView;)Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d:Lcom/yandex/div/internal/widget/tabs/TabView;

    return-object p1
.end method

.method public static synthetic e(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->i()V

    return-void
.end method


# virtual methods
.method public f()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->b:I

    return p0
.end method

.method public g()Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d:Lcom/yandex/div/internal/widget/tabs/TabView;

    return-object p0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d:Lcom/yandex/div/internal/widget/tabs/TabView;

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->b:I

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->b:I

    return-void
.end method

.method public l(Ljava/lang/CharSequence;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->m()V

    return-object p0
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d:Lcom/yandex/div/internal/widget/tabs/TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->i()V

    :cond_0
    return-void
.end method
