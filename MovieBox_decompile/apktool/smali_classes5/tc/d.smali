.class public final Ltc/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Liy/a;


# instance fields
.field private final a:Ltc/a;


# direct methods
.method public constructor <init>(Ltc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltc/d;->a:Ltc/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ltc/a;)Ltc/d;
    .locals 1

    .line 1
    new-instance v0, Ltc/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltc/d;-><init>(Ltc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ltc/a;)Llc/e;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ltc/a;->c()Llc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lux/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Llc/e;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public b()Llc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ltc/d;->a:Ltc/a;

    .line 2
    .line 3
    invoke-static {v0}, Ltc/d;->c(Ltc/a;)Llc/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltc/d;->b()Llc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
