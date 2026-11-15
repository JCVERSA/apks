.class public Lcom/google/common/hash/LongAddables$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxq5;
    .locals 0

    new-instance p0, Lcom/google/common/hash/LongAdder;

    invoke-direct {p0}, Lcom/google/common/hash/LongAdder;-><init>()V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/hash/LongAddables$a;->a()Lxq5;

    move-result-object p0

    return-object p0
.end method
