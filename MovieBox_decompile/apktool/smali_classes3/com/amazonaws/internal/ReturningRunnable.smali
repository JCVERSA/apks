.class public abstract Lcom/amazonaws/internal/ReturningRunnable;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
.end method
