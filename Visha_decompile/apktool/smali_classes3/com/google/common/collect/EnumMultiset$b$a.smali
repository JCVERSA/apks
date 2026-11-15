.class public Lcom/google/common/collect/EnumMultiset$b$a;
.super Lcom/google/common/collect/Multisets$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset$b;->b(I)Lcom/google/common/collect/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/EnumMultiset$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/EnumMultiset$b;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/EnumMultiset$b$a;->b:I

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$b$a;->c:Lcom/google/common/collect/EnumMultiset$b;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$b$a;->c:Lcom/google/common/collect/EnumMultiset$b;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset$b;->e:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset$b$a;->b:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$b$a;->c:Lcom/google/common/collect/EnumMultiset$b;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset$b;->e:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset$b$a;->b:I

    aget p0, v0, p0

    return p0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$b$a;->a()Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method
