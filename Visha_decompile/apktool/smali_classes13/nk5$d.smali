.class public Lnk5$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[Lnk5$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lnk5$e;

    iput-object v0, p0, Lnk5$d;->a:[Lnk5$e;

    return-void
.end method


# virtual methods
.method public a()Lnk5$e;
    .locals 1

    iget-object p0, p0, Lnk5$d;->a:[Lnk5$e;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public b(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 1

    iget-object p0, p0, Lnk5$d;->a:[Lnk5$e;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c(Lnk5$e;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnk5$d;->a:[Lnk5$e;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lnk5$e;
    .locals 1

    iget-object p0, p0, Lnk5$d;->a:[Lnk5$e;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public e()Lnk5$e;
    .locals 1

    iget-object p0, p0, Lnk5$d;->a:[Lnk5$e;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public f(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 1

    iget-object p0, p0, Lnk5$d;->a:[Lnk5$e;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnk5$e;->a:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
