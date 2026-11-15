.class public final synthetic Ltq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/yandex/div/core/state/DivStatePath;

    check-cast p2, Lcom/yandex/div/core/state/DivStatePath;

    invoke-static {p1, p2}, Lcom/yandex/div/core/state/DivStatePath$a;->a(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)I

    move-result p0

    return p0
.end method
