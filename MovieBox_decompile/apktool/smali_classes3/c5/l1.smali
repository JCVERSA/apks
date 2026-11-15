.class public Lc5/l1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;


# static fields
.field public static final a:Lc5/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/l1;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/l1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/l1;->a:Lc5/l1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/j1;->h0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
