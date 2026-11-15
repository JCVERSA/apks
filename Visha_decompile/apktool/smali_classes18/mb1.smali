.class public final Lmb1;
.super Lhb1;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lmb1;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 0

    iget-object p0, p0, Lmb1;->a:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lqb1;)V

    return-void
.end method
