.class public Lj8/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lj8/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJ)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lj8/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
