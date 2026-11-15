.class public final Lcom/yandex/mobile/ads/impl/q20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o20;

.field private final b:Lcom/yandex/mobile/ads/impl/n30;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o20;Lcom/yandex/mobile/ads/impl/n30;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q20;->a:Lcom/yandex/mobile/ads/impl/o20;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/q20;->b:Lcom/yandex/mobile/ads/impl/n30;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n20;)Lcom/yandex/div/core/view2/Div2View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/j20;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/j20;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljh2$b;

    invoke-direct {v1, v0}, Ljh2$b;-><init>(Lwk2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q20;->a:Lcom/yandex/mobile/ads/impl/o20;

    invoke-virtual {v1, v0}, Ljh2$b;->a(Lcf2;)Ljh2$b;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/m30;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/m30;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljh2$b;->e(Lbu2;)Ljh2$b;

    move-result-object v0

    invoke-virtual {v0}, Ljh2$b;->b()Ljh2;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q20;->b:Lcom/yandex/mobile/ads/impl/n30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/n30;->a(Landroid/content/Context;Ljh2;Landroidx/lifecycle/LifecycleOwner;)Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n20;->c()Lcom/yandex/mobile/ads/impl/b30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n20;->c()Lcom/yandex/mobile/ads/impl/b30;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/b30;->c()Lei2;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/yandex/div/core/view2/Div2View;->setData(Lcom/yandex/div2/DivData;Lei2;)Z

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object p1

    sget-object p2, Lcom/yandex/mobile/ads/impl/kf1;->e:Lcom/yandex/mobile/ads/impl/kf1;

    const-string v0, "toLowerCase(...)"

    if-ne p1, p2, :cond_0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p2, "PORTRAIT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string p2, "orientation"

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/view2/Div2View;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;

    return-object p0
.end method
