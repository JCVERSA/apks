.class Landroidx/lifecycle/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/lifecycle/c$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/h0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/c;->c:Landroidx/lifecycle/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/c;->c(Ljava/lang/Class;)Landroidx/lifecycle/c$a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/c$a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/c$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/h0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/lifecycle/c$a;->a(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
