.class public final Lp/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp/f;


# instance fields
.field private final a:Lp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/c;->a:Lp/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lp/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/c;->a:Lp/b;

    .line 2
    .line 3
    return-object v0
.end method
