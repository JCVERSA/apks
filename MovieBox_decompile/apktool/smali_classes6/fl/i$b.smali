.class final Lfl/i$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkl/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Lfl/k;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfl/k$b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lfl/k$b;-><init>(Lfl/k$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lfl/i$b;->b:Lfl/k;

    .line 11
    .line 12
    iput-object p1, p0, Lfl/i$b;->a:Ljava/security/MessageDigest;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lfl/i$b;)Ljava/security/MessageDigest;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/i$b;->a:Ljava/security/MessageDigest;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getVerifier()Lfl/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lfl/i$b;->b:Lfl/k;

    .line 2
    .line 3
    return-object v0
.end method
