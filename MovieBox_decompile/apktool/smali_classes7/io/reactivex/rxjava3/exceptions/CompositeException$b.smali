.class final Lio/reactivex/rxjava3/exceptions/CompositeException$b;
.super Lio/reactivex/rxjava3/exceptions/CompositeException$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/CompositeException$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
