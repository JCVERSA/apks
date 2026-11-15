.class public final Lgqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/yandex/div/core/view2/a;

.field public final c:Lcom/yandex/div2/Div;

.field public final d:Lb19;

.field public e:Lcom/yandex/div/core/DivPreloader$f;

.field public final f:Landroidx/activity/OnBackPressedCallback;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lb19;Lcom/yandex/div/core/DivPreloader$f;Landroidx/activity/OnBackPressedCallback;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popupWindow"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgqa;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lgqa;->b:Lcom/yandex/div/core/view2/a;

    .line 4
    iput-object p3, p0, Lgqa;->c:Lcom/yandex/div2/Div;

    .line 5
    iput-object p4, p0, Lgqa;->d:Lb19;

    .line 6
    iput-object p5, p0, Lgqa;->e:Lcom/yandex/div/core/DivPreloader$f;

    .line 7
    iput-object p6, p0, Lgqa;->f:Landroidx/activity/OnBackPressedCallback;

    .line 8
    iput-boolean p7, p0, Lgqa;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lb19;Lcom/yandex/div/core/DivPreloader$f;Landroidx/activity/OnBackPressedCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    :cond_1
    move/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    .line 9
    invoke-direct/range {v1 .. v8}, Lgqa;-><init>(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lb19;Lcom/yandex/div/core/DivPreloader$f;Landroidx/activity/OnBackPressedCallback;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lgqa;->b:Lcom/yandex/div/core/view2/a;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lgqa;->g:Z

    return p0
.end method

.method public final c()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lgqa;->c:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgqa;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Lgqa;->f:Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final f()Lb19;
    .locals 0

    iget-object p0, p0, Lgqa;->d:Lb19;

    return-object p0
.end method

.method public final g()Lcom/yandex/div/core/DivPreloader$f;
    .locals 0

    iget-object p0, p0, Lgqa;->e:Lcom/yandex/div/core/DivPreloader$f;

    return-object p0
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lgqa;->g:Z

    return-void
.end method

.method public final i(Lcom/yandex/div/core/DivPreloader$f;)V
    .locals 0

    iput-object p1, p0, Lgqa;->e:Lcom/yandex/div/core/DivPreloader$f;

    return-void
.end method
