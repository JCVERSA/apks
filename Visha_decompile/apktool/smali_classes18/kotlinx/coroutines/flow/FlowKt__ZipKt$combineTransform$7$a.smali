.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Lnz3;


# direct methods
.method public constructor <init>([Lnz3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;->b:[Lnz3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;->b:[Lnz3;

    array-length p0, p0

    const/4 v0, 0x0

    const-string v1, "T?"

    invoke-static {v0, v1}, Ly45;->p(ILjava/lang/String;)V

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;->a()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
