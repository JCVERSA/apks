.class public final Lpu8;
.super Lo95;
.source "SourceFile"


# instance fields
.field public final f:Lwh1;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Lpu8;->f:Lwh1;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lpu8;->f:Lwh1;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
