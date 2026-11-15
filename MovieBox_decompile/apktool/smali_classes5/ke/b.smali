.class public Lke/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lke/d;

.field private final b:Lke/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lke/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lke/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lke/b;->a:Lke/d;

    .line 10
    .line 11
    new-instance v1, Lke/c;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lke/c;-><init>(Lke/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lke/b;->b:Lke/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Lke/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/b;->b:Lke/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lke/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/b;->a:Lke/d;

    .line 2
    .line 3
    return-object v0
.end method
