.class public abstract Lcom/yandex/div/core/view2/items/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/items/c$a;,
        Lcom/yandex/div/core/view2/items/c$b;,
        Lcom/yandex/div/core/view2/items/c$c;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/core/view2/items/c$b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/items/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/items/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/items/c;->b:Lcom/yandex/div/core/view2/items/c$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/div/core/view2/items/c;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/items/c;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/items/c;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/items/c;->a:I

    return p0
.end method


# virtual methods
.method public abstract b(I)I
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method
