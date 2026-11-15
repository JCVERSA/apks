.class abstract Lcom/gyf/immersionbar/q$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/gyf/immersionbar/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/q;-><init>(Lcom/gyf/immersionbar/q$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/gyf/immersionbar/q$b;->a:Lcom/gyf/immersionbar/q;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a()Lcom/gyf/immersionbar/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/q$b;->a:Lcom/gyf/immersionbar/q;

    .line 2
    .line 3
    return-object v0
.end method
