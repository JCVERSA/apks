.class public Lcom/google/common/collect/EnumMultiset$b;
.super Lcom/google/common/collect/EnumMultiset$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$b;->e:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset$c;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset$b;->b(I)Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lcom/google/common/collect/j$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/EnumMultiset$b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumMultiset$b$a;-><init>(Lcom/google/common/collect/EnumMultiset$b;I)V

    return-object v0
.end method
