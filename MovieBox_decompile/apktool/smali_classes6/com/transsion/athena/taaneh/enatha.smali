.class Lcom/transsion/athena/taaneh/enatha;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/athena/aatnhe/athena;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/athena/aatnhe/athena;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/athena/aatnhe/athena;

    .line 4
    .line 5
    iget p2, p2, Lcom/transsion/athena/aatnhe/athena;->e:I

    .line 6
    .line 7
    iget p1, p1, Lcom/transsion/athena/aatnhe/athena;->e:I

    .line 8
    .line 9
    sub-int/2addr p2, p1

    .line 10
    return p2
.end method
