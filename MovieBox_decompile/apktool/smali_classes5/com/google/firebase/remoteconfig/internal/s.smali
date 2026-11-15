.class public Lcom/google/firebase/remoteconfig/internal/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lad/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/s$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Lad/j;


# direct methods
.method private constructor <init>(JILad/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/s;->a:J

    .line 4
    iput p3, p0, Lcom/google/firebase/remoteconfig/internal/s;->b:I

    .line 5
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/s;->c:Lad/j;

    return-void
.end method

.method synthetic constructor <init>(JILad/j;Lcom/google/firebase/remoteconfig/internal/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/remoteconfig/internal/s;-><init>(JILad/j;)V

    return-void
.end method

.method static b()Lcom/google/firebase/remoteconfig/internal/s$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/s$b;-><init>(Lcom/google/firebase/remoteconfig/internal/s$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/s;->b:I

    .line 2
    .line 3
    return v0
.end method
