.class public final Lmo2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmo2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    const-string p0, "src"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div/core/DivPreloader$d;->a:Lcom/yandex/div/core/DivPreloader$d$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/DivPreloader$d$a;->c()Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p0

    return-object p0
.end method
