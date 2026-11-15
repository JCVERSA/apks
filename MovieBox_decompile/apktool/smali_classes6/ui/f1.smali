.class public final synthetic Lui/f1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lui/f1;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lui/f1;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lui/f1;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lui/f1;->b:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Ly3/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lui/h1;->e(ZLjava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
