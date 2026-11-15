.class public Lfl/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfl/h$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lfl/a;


# direct methods
.method public constructor <init>(Lfl/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lfl/j;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Lfl/j;->b:Lfl/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfl/j;->b:Lfl/a;

    .line 2
    .line 3
    iget-object v1, p0, Lfl/j;->a:Ljava/lang/Object;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, v2, v3}, Lfl/a;->a(Ljava/lang/Object;Ljava/io/File;J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
