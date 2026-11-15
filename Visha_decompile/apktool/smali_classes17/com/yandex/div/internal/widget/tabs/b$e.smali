.class public Lcom/yandex/div/internal/widget/tabs/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lcom/yandex/div/internal/widget/tabs/b$g$a;

.field public final c:I

.field public d:Ljava/lang/Object;

.field public final synthetic e:Lcom/yandex/div/internal/widget/tabs/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->e:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->a:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->b:Lcom/yandex/div/internal/widget/tabs/b$g$a;

    .line 5
    iput p4, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;ILcom/yandex/div/internal/widget/tabs/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/tabs/b$e;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;I)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/b$e;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->a:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->e:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->b:Lcom/yandex/div/internal/widget/tabs/b$g$a;

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/b;->o(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->d:Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->e:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-virtual {v1, v0}, Lcom/yandex/div/internal/widget/tabs/b;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$e;->d:Ljava/lang/Object;

    return-void
.end method
