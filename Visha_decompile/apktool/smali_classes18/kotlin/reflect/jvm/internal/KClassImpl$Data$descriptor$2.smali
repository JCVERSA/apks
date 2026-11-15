.class final Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KClassImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "T",
        "Lqw0;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lqw0;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KClassImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KClassImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KClassImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;->invoke()Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lqw0;
    .locals 3

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KClassImpl;->L(Lkotlin/reflect/jvm/internal/KClassImpl;)Lxw0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KClassImpl;->P()Lkotlin/reflect/jvm/internal/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/e$b;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;->a()Ltw8;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lxw0;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ltw8;->a()Le92;

    move-result-object v1

    invoke-virtual {v1, v0}, Le92;->b(Lxw0;)Lqw0;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ltw8;->b()Lqq6;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lqq6;Lxw0;)Lqw0;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 6
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$descriptor$2;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KClassImpl;->M(Lkotlin/reflect/jvm/internal/KClassImpl;)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method
