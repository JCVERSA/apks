.class public Lcga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# instance fields
.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcga;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 0

    iget-object p0, p0, Lcga;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcga;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
