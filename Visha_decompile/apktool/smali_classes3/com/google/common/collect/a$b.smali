.class public Lcom/google/common/collect/a$b;
.super Lcom/google/common/collect/a$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a$b;->c:Lcom/google/common/collect/a;

    invoke-direct {p0, p1}, Lcom/google/common/collect/a$a;-><init>(Lcom/google/common/collect/a;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
