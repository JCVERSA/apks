.class public Lp17;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lp17;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp17;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lp17;->b:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method
