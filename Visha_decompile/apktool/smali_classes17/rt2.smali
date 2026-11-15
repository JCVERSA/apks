.class public interface abstract Lrt2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrt2$a;
    }
.end annotation


# static fields
.field public static final a:Lrt2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqt2;

    invoke-direct {v0}, Lqt2;-><init>()V

    sput-object v0, Lrt2;->a:Lrt2;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lrt2;->c(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public b()Lrt2$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract d(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z
.end method
