.class abstract Lrp/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lrp/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrp/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrp/c;-><init>(Lrp/c$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrp/c$b;->a:Lrp/c;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a()Lrp/c;
    .locals 1

    .line 1
    sget-object v0, Lrp/c$b;->a:Lrp/c;

    .line 2
    .line 3
    return-object v0
.end method
