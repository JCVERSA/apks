.class public final Lcom/yandex/div/data/StoredValue$Type$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/data/StoredValue$Type;
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
    invoke-direct {p0}, Lcom/yandex/div/data/StoredValue$Type$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/div/data/StoredValue$Type;
    .locals 1

    const-string p0, "string"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->STRING:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->INTEGER:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->BOOLEAN:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->NUMBER:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->COLOR:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->URL:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->ARRAY:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->DICT:Lcom/yandex/div/data/StoredValue$Type;

    invoke-static {p0}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;
    .locals 0

    const-string p0, "obj"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/div/data/StoredValue$Type;->access$getValue$p(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
