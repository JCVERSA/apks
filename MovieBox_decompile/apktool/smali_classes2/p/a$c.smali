.class public final Lp/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lp/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lp/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/a$c;->a:Lp/a$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lp/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a$c;->a:Lp/a$b;

    .line 2
    .line 3
    return-object v0
.end method
