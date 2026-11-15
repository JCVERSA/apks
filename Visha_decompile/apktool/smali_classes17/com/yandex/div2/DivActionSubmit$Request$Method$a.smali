.class public final Lcom/yandex/div2/DivActionSubmit$Request$Method$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionSubmit$Request$Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/div2/DivActionSubmit$Request$Method;
    .locals 1

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->GET:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->POST:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->PUT:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->PATCH:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->DELETE:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->HEAD:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/yandex/div2/DivActionSubmit$Request$Method;->OPTIONS:Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-static {p0}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;
    .locals 0

    const-string p0, "obj"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/div2/DivActionSubmit$Request$Method;->access$getValue$p(Lcom/yandex/div2/DivActionSubmit$Request$Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
