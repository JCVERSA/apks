.class public final Lcj5;
.super Le72;
.source "SourceFile"


# instance fields
.field public final b:Lwh1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Ls74;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le72;-><init>(Lkotlin/coroutines/d;Z)V

    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->a(Ls74;Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p1

    iput-object p1, p0, Lcj5;->b:Lwh1;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcj5;->b:Lwh1;

    invoke-static {v0, p0}, Lgr0;->b(Lwh1;Lwh1;)V

    return-void
.end method
