.class public Lc5/n0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;


# static fields
.field public static a:Lc5/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/n0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/n0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/n0;->a:Lc5/n0;

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
    check-cast p2, Lc5/m0;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/o0;->C()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p2, p1, p3, p4, p5}, Lc5/m0;->a(Lc5/o0;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
