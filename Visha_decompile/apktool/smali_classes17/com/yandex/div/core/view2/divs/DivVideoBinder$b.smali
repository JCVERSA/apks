.class public Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivVideoBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/player/a;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/player/a;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/player/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;->a:Lcom/yandex/div/core/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;->c(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 1

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;->a:Lcom/yandex/div/core/player/a;

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b$a;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b$a;-><init>(Le74;)V

    invoke-interface {p0, v0}, Lcom/yandex/div/core/player/a;->a(Lcom/yandex/div/core/player/a$b;)V

    return-void
.end method

.method public c(Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;->a:Lcom/yandex/div/core/player/a;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/yandex/div/core/player/a;->b(J)V

    :cond_0
    return-void
.end method
