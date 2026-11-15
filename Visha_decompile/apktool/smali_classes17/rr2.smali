.class public final synthetic Lrr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/b$g;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrr2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lrr2;->a:Ljava/util/List;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
