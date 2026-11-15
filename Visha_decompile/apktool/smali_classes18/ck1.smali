.class public final synthetic Lck1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lck1;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lck1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean p0, p0, Lck1;->c:Z

    check-cast p1, Lkotlin/coroutines/d;

    check-cast p2, Lkotlin/coroutines/d$b;

    invoke-static {v0, p0, p1, p2}, Lek1;->a(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method
