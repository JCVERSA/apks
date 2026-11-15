.class public final Lcom/yandex/div/storage/DivStorageImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/DivStorageImpl;
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
    invoke-direct {p0}, Lcom/yandex/div/storage/DivStorageImpl$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/DivStorageImpl$a;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/DivStorageImpl$a;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/Collection;)Ljava/lang/String;
    .locals 9

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/16 v7, 0x38

    const/4 v8, 0x0

    const-string v1, "\', \'"

    const-string v2, "(\'"

    const-string v3, "\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
