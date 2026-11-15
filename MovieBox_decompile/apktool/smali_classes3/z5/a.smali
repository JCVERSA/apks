.class public Lz5/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:[Ljava/io/File;

.field private b:I


# direct methods
.method public constructor <init>([Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz5/a;->a:[Ljava/io/File;

    .line 5
    .line 6
    iput p2, p0, Lz5/a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lz5/a;->a:[Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lz5/a;->b:I

    .line 2
    .line 3
    return v0
.end method
