.class final Lj00/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj00/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lretrofit2/d;

.field private volatile b:Z


# direct methods
.method constructor <init>(Lretrofit2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/c$a;->a:Lretrofit2/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj00/c$a;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lj00/c$a;->a:Lretrofit2/d;

    .line 5
    .line 6
    invoke-interface {v0}, Lretrofit2/d;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj00/c$a;->b:Z

    .line 2
    .line 3
    return v0
.end method
