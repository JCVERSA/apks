.class public abstract Lcom/google/common/reflect/TypeToken$TypeCollector$d;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Lcom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken$TypeCollector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$a;)V

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$d;->c:Lcom/google/common/reflect/TypeToken$TypeCollector;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$d;->c:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->f(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$d;->c:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
