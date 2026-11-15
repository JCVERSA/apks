.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt;->b(Lnz3;Lnz3;Lu74;)Lnz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnz3;

.field public final synthetic c:Lnz3;

.field public final synthetic d:Lu74;


# direct methods
.method public constructor <init>(Lnz3;Lnz3;Lu74;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->b:Lnz3;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->c:Lnz3;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->d:Lu74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->b:Lnz3;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->c:Lnz3;

    const/4 v2, 0x2

    new-array v2, v2, [Lnz3;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt__ZipKt;->a()Lc74;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;->d:Lu74;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lu74;Lwh1;)V

    invoke-static {p1, v2, v0, v1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Loz3;[Lnz3;Lc74;Lu74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
