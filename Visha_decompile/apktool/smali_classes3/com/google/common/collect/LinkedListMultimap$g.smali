.class public final Lcom/google/common/collect/LinkedListMultimap$g;
.super Li3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/google/common/collect/LinkedListMultimap$g;

.field public e:Lcom/google/common/collect/LinkedListMultimap$g;

.field public f:Lcom/google/common/collect/LinkedListMultimap$g;

.field public g:Lcom/google/common/collect/LinkedListMultimap$g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Li3;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Ljava/lang/Object;

    return-object v0
.end method
