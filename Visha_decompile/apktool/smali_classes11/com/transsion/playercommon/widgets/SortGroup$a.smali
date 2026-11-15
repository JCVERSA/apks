.class public Lcom/transsion/playercommon/widgets/SortGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SortItem$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/SortGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/SortGroup;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SortGroup;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup$a;->a:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/SortGroup;Lgs9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup$a;-><init>(Lcom/transsion/playercommon/widgets/SortGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/playercommon/widgets/SortItem;ZZ)V
    .locals 3

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup$a;->a:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/SortGroup;->b(Lcom/transsion/playercommon/widgets/SortGroup;)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup$a;->a:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/SortGroup;->b(Lcom/transsion/playercommon/widgets/SortGroup;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/transsion/playercommon/widgets/SortGroup;->e(Lcom/transsion/playercommon/widgets/SortGroup;IZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortItem;->getFrom()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SortGroup$a;->a:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortItem;->getValue()I

    move-result v2

    invoke-static {v1, p2, v2, p3, v0}, Lcom/transsion/playercommon/widgets/SortGroup;->d(Lcom/transsion/playercommon/widgets/SortGroup;IIZI)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup$a;->a:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortItem;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup;->c(Lcom/transsion/playercommon/widgets/SortGroup;I)V

    return-void
.end method
